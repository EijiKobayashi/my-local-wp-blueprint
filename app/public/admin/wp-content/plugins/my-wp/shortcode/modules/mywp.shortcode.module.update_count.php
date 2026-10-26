<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpShortcodeAbstractModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpShortcodeModuleUpdateCount' ) ) :

final class MywpShortcodeModuleUpdateCount extends MywpShortcodeAbstractModule {

  protected static $id = 'mywp_update_count';

  public static function do_shortcode( $atts = false , $content = false , $tag = false ) {

    $called_text = sprintf( '%s::%s( $atts , $content , $tag )' , __CLASS__ , __FUNCTION__ );

    $type = 'total';

    if( ! empty( $atts['type'] ) ) {

      $type = MywpHelper::sanitize_text( $atts['type'] );

    }

    if( empty( $type ) ) {

      MywpHelper::error_not_found_message( '$type' , $called_text );

      return $content;

    }

    $update_count = self::get_update_count( $type );

    if( empty( $update_count ) ) {

      return $content;

    }

    $tag = false;

    if( ! empty( $atts['tag'] ) ) {

      $tag = MywpHelper::sanitize_text( $atts['tag'] );

    }

    if( ! empty( $tag ) ) {

      $class = 'update';

      if( $type === 'total' ) {

      } elseif( $type === 'plugins' ) {

        $class = 'plugin';

      } elseif( $type === 'themes' ) {

        $class = 'theme';

      } elseif( $type === 'translations' ) {

        $class = 'translation';

      } else {

        MywpHelper::error_not_found_message( '$type' , $called_text );

        return $content;

      }

      $content = sprintf(
        '<span class="update-plugins count-%d"><span class="%s-count">%s</span></span>',
        esc_attr( $update_count ),
        esc_attr( $class ),
        esc_html( number_format_i18n( $update_count ) ),
      );

    } else {

      $content = $update_count;

    }

    $content = apply_filters( 'mywp_shortcode_update_count' , $content , $atts );

    return $content;

  }

  private static function get_update_count( $type = '' ) {

    $called_text = sprintf( '%s::%s( $type )' , __CLASS__ , __FUNCTION__ );

    $type = MywpHelper::sanitize_text( $type );

    if( empty( $type ) ) {

      MywpHelper::error_not_found_message( '$type' , $called_text );

      return 0;

    }

    $wp_update_data = wp_get_update_data();

    if( empty( $wp_update_data['counts'] ) ) {

      return 0;

    }

    if( ! isset( $wp_update_data['counts'][ $type ] ) ) {

      MywpHelper::error_not_found_message( '$wp_update_data["counts"][ $type ]' , $called_text );

      return 0;

    }

    return (int) $wp_update_data['counts'][ $type ];

  }

}

MywpShortcodeModuleUpdateCount::init();

endif;
