<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if ( ! class_exists( 'MywpSettingTaxonomy' ) ) :

final class MywpSettingTaxonomy {

  private static $current_taxonomy_id;

  private static $current_taxonomy;

  public static function init() {

    add_action( 'mywp_set_current_setting' , array( __CLASS__ , 'mywp_set_current_setting' ) );

  }

  public static function mywp_set_current_setting() {

    if( isset( $_GET['setting_taxonomy'] ) ) {

      self::set_current_taxonomy_id( wp_unslash( $_GET['setting_taxonomy'] ) );

    } else {

      self::set_current_taxonomy_to_default();

    }

  }

  public static function get_setting_taxonomies() {

    $args = array(
      'show_ui' => true,
      'public' => true
    );

    $taxonomies = get_taxonomies( $args , 'objects' );

    return apply_filters( 'mywp_setting_taxonomies' , $taxonomies );

  }

  public static function get_setting_taxonomy( $taxonomy = false ) {

    $called_text = sprintf( '%s::%s( $taxonomy )' , __CLASS__ , __FUNCTION__ );

    $taxonomy = MywpHelper::sanitize_text( $taxonomy );

    if( empty( $taxonomy ) ) {

      MywpHelper::error_require_message( '$taxonomy' , $called_text );

      return false;

    }

    $taxonomies = self::get_setting_taxonomies();

    if( empty( $taxonomies ) ) {

      MywpHelper::error_not_found_message( '$taxonomies' , $called_text );

      return false;

    }

    if( empty( $taxonomies[ $taxonomy ] ) ) {

      MywpHelper::error_not_found_message( '$taxonomies[ $taxonomy ]' , $called_text );

      return false;

    }

    return $taxonomies[ $taxonomy ];

  }

  public static function set_current_taxonomy_id( $taxonomy = false ) {

    $called_text = sprintf( '%s::%s( $taxonomy )' , __CLASS__ , __FUNCTION__ );

    $taxonomy = MywpHelper::sanitize_text( $taxonomy );

    if( empty( $taxonomy ) ) {

      MywpHelper::error_require_message( '$taxonomy' , $called_text );

      return false;

    }

    self::$current_taxonomy_id = $taxonomy;

    self::set_current_taxonomy( $taxonomy );

  }

  public static function get_current_taxonomy_id() {

    return self::$current_taxonomy_id;

  }

  private static function set_current_taxonomy( $taxonomy = false ) {

    $called_text = sprintf( '%s::%s( $taxonomy )' , __CLASS__ , __FUNCTION__ );

    $taxonomy = MywpHelper::sanitize_text( $taxonomy );

    if( empty( $taxonomy ) ) {

      MywpHelper::error_require_message( '$taxonomy' , $called_text );

      return false;

    }

    $taxonomy_object = self::get_setting_taxonomy( $taxonomy );

    if( empty( $taxonomy_object ) ) {

      MywpHelper::error_not_found_message( '$taxonomy_object' , $called_text );

      return false;

    }

    self::$current_taxonomy = $taxonomy_object;

  }

  public static function get_current_taxonomy() {

    return self::$current_taxonomy;

  }

  public static function set_current_taxonomy_to_default() {

    $called_text = sprintf( '%s::%s()' , __CLASS__ , __FUNCTION__ );

    $taxonomies = self::get_setting_taxonomies();

    if( empty( $taxonomies ) ) {

      MywpHelper::error_not_found_message( '$taxonomies' , $called_text );

      return false;

    }

    $current_taxonomy_id = false;

    foreach( $taxonomies as $taxonomy ) {

      $current_taxonomy_id = $taxonomy->name;

      break;

    }

    if( empty( $current_taxonomy_id ) ) {

      MywpHelper::error_not_found_message( '$current_taxonomy_id' , $called_text );

      return false;

    }

    self::set_current_taxonomy_id( $current_taxonomy_id );

  }

  public static function get_one_term( $taxonomy = false ) {

    $called_text = sprintf( '%s::%s( $taxonomy )' , __CLASS__ , __FUNCTION__ );

    $taxonomy = MywpHelper::sanitize_text( $taxonomy );

    if( empty( $taxonomy ) ) {

      MywpHelper::error_require_message( '$taxonomy' , $called_text );

      return false;

    }

    $taxonomy_object = self::get_setting_taxonomy( $taxonomy );

    if( empty( $taxonomy_object ) ) {

      MywpHelper::error_not_found_message( '$taxonomy_object' , $called_text );

      return false;

    }

    $args = array(
      'taxonomy' => $taxonomy,
      'order' => 'DESC',
      'orderby' => 'term_id'
    );

    $args = apply_filters( "mywp_setting_get_one_term_args_{$taxonomy}" , $args );

    $terms = get_terms( $args );

    if( empty( $terms ) ) {

      return false;

    }

    if( is_wp_error( $terms ) ) {

      MywpHelper::error_returned_message( '$terms' , $terms->get_error_message() , $called_text );

      return false;

    }

    $key = key( $terms );

    return $terms[ $key ];

  }

  public static function get_one_term_archive_link( $taxonomy = false ) {

    $called_text = sprintf( '%s::%s( $taxonomy )' , __CLASS__ , __FUNCTION__ );

    $term = self::get_one_term( $taxonomy );

    if( empty( $term ) ) {

      return false;

    }

    return get_term_link( $term );

  }

  public static function get_list_link( $taxonomy = false ) {

    $called_text = sprintf( '%s::%s( $taxonomy )' , __CLASS__ , __FUNCTION__ );

    $taxonomy = MywpHelper::sanitize_text( $taxonomy );

    if( empty( $taxonomy ) ) {

      MywpHelper::error_require_message( '$taxonomy' , $called_text );

      return false;

    }

    return add_query_arg( array( 'taxonomy' => $taxonomy ) , admin_url( 'edit-tags.php' ) );

  }

}

MywpSettingTaxonomy::init();

endif;
