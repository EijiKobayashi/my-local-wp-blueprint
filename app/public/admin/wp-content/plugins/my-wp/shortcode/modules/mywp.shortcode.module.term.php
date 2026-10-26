<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpShortcodeAbstractModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpShortcodeModuleTerm' ) ) :

final class MywpShortcodeModuleTerm extends MywpShortcodeAbstractModule {

  protected static $id = 'mywp_term';

  public static function do_shortcode( $atts = false , $content = false , $tag = false ) {

    $called_text = sprintf( '%s::%s( $atts , $content , $tag )' , __CLASS__ , __FUNCTION__ );

    $field = false;

    if( ! empty( $atts['field'] ) ) {

      $field = MywpHelper::sanitize_text( $atts['field'] );

    }

    if( empty( $field ) ) {

      MywpHelper::error_not_found_message( '$field' , $called_text );

      return $content;

    }

    $term_id = false;

    if( ! empty( $atts['term_id'] ) ) {

      $term_id = $atts['term_id'];

    }

    $term_id = MywpHelper::sanitize_number( $term_id );

    if( empty( $term_id ) ) {

      return $content;

    }

    $term = get_term( $term_id );

    if( empty( $term ) ) {

      return $content;

    }

    if( is_wp_error( $term ) ) {

      return $content;

    }

    if( $field === 'id' or $field === 'ID' or $field === 'term_id' ) {

      $content = $term_id;

    } elseif( $field === 'name' ) {

      $content = $term->name;

    } elseif( $field === 'slug' ) {

      $content = $term->slug;

    } elseif( $field === 'link' ) {

      $content = get_term_link( $term );

    } else {

      MywpHelper::error_not_found_message( '$atts["field"]' , sprintf( '[%s] shortcode' , self::$id ) );

      return $content;

    }

    $content = apply_filters( 'mywp_shortcode_term' , $content , $atts );

    return $content;

  }

}

MywpShortcodeModuleTerm::init();

endif;
