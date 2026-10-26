<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpShortcodeAbstractModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpShortcodeModuleSite' ) ) :

final class MywpShortcodeModuleSite extends MywpShortcodeAbstractModule {

  protected static $id = 'mywp_site';

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

    $current_site_id = get_current_blog_id();

    $site_id = get_current_blog_id();

    if( ! empty( $atts['site_id'] ) ) {

      $site_id = $atts['site_id'];

    } elseif( ! empty( $atts['blog_id'] ) ) {

      $site_id = $atts['blog_id'];

    }

    $site_id = MywpHelper::sanitize_number( $site_id );

    if( empty( $site_id ) ) {

      MywpHelper::error_not_found_message( '$site_id' , $called_text );

      return $content;

    }

    if( is_multisite() && $site_id !== $current_site_id ) {

      switch_to_blog( $site_id );

    }

    if( $field === 'id' ) {

      $content = $site_id;

    } elseif( $field === 'name' ) {

      $content = get_bloginfo( 'name' );

    } else {

      MywpHelper::error_not_found_message( '$field' , $called_text );

    }

    if( is_multisite() && $site_id !== $current_site_id ) {

      restore_current_blog();

    }

    $content = apply_filters( 'mywp_shortcode_site' , $content , $atts );

    return $content;

  }

}

MywpShortcodeModuleSite::init();

endif;
