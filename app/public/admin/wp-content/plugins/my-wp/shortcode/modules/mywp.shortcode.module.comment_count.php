<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpShortcodeAbstractModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpShortcodeModuleCommentCount' ) ) :

final class MywpShortcodeModuleCommentCount extends MywpShortcodeAbstractModule {

  protected static $id = 'mywp_comment_count';

  public static function do_shortcode( $atts = false , $content = false , $tag = false ) {

    $called_text = sprintf( '%s::%s( $atts , $content , $tag )' , __CLASS__ , __FUNCTION__ );

    $status = 'moderated';

    if( ! empty( $atts['status'] ) ) {

      $status = $atts['status'];

    }

    $status = MywpHelper::sanitize_text( $status );

    $comments_count = self::get_comments_count( $status );

    if( ! empty( $atts['tag'] ) ) {

      if( ! empty( $comments_count ) ) {

        $content = sprintf(
          '<span class="awaiting-mod count-%d"><span class="%s-count">%s</span></span>',
          esc_attr( $comments_count ),
          esc_attr( $status ),
          esc_html( number_format_i18n( $comments_count ) ),
        );

      }

    } else {

      $content = $comments_count;

    }

    $content = apply_filters( 'mywp_shortcode_comment_count' , $content , $atts );

    return $content;

  }

  private static function get_comments_count( $status = '' ) {

    $called_text = sprintf( '%s::%s( $status )' , __CLASS__ , __FUNCTION__ );

    $status = MywpHelper::sanitize_text( $status );

    if( empty( $status ) ) {

      MywpHelper::error_not_found_message( '$status' , $called_text );

      return false;

    }

    $comments_counts = wp_count_comments();

    if( empty( $comments_counts ) ) {

      return false;

    }

    if( empty( $comments_counts->$status ) ) {

      return 0;

    }

    return (int) $comments_counts->$status;

  }

}

MywpShortcodeModuleCommentCount::init();

endif;
