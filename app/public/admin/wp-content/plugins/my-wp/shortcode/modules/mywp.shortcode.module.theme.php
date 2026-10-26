<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpShortcodeAbstractModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpShortcodeModuleTheme' ) ) :

final class MywpShortcodeModuleTheme extends MywpShortcodeAbstractModule {

  protected static $id = 'mywp_theme';

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

    $theme_id = false;

    $is_parent = false;

    if( ! empty( $atts['parent'] ) ) {

      $is_parent = true;

    }

    if( $is_parent ) {

      $theme_id = get_template();

    } else {

      $theme_id = get_stylesheet();

    }

    if( empty( $theme_id ) ) {

      MywpHelper::error_not_found_message( '$theme_id' , $called_text );

      return $content;

    }

    $theme = wp_get_theme( $theme_id );

    if( $field === 'url' ) {

      $content = MywpApi::get_theme_url( $is_parent );

    } elseif( $field === 'path' ) {

      $content = MywpApi::get_theme_path( $is_parent );

    } elseif( $field === 'name' ) {

      $content = $theme->get( 'Name' );

    } else {

      MywpHelper::error_not_found_message( '$field' , $called_text );

      return $content;

    }

    $content = apply_filters( 'mywp_shortcode_theme' , $content , $atts );

    return $content;

  }

}

MywpShortcodeModuleTheme::init();

endif;
