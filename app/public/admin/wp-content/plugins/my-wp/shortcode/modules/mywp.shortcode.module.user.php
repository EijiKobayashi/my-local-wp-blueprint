<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpShortcodeAbstractModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpShortcodeModuleUser' ) ) :

final class MywpShortcodeModuleUser extends MywpShortcodeAbstractModule {

  protected static $id = 'mywp_user';

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

    $user_id = get_current_user_id();

    if( ! empty( $atts['user_id'] ) ) {

      $user_id = $atts['user_id'];

    }

    $user_id = MywpHelper::sanitize_number( $user_id );

    if( empty( $user_id ) ) {

      return $content;

    }

    $mywp_user = new MywpUser( $user_id );

    if( empty( $mywp_user ) ) {

      MywpHelper::error_not_found_message( '$mywp_user' , $called_text );

      return $content;

    }

    if( $field === 'id' ) {

      $content = $user_id;

    } elseif( $field === 'name' ) {

      $content = $mywp_user->get_name();

    } elseif( $field === 'fname' ) {

      $content = $mywp_user->get_fname();

    } elseif( $field === 'lname' ) {

      $content = $mywp_user->get_lname();

    } elseif( $field === 'nickname' ) {

      $content = $mywp_user->get_nickname();

    } elseif( $field === 'displayname' ) {

      $content = $mywp_user->get_displayname();

    } elseif( $field === 'user_login' ) {

      $content = $mywp_user->get_user_login();

    } elseif( $field === 'user_role' ) {

      $content = $mywp_user->get_user_role();

    } elseif( $field === 'avatar' ) {

      $size = false;

      if( ! empty( $atts['size'] ) ) {

        $size = MywpHelper::sanitize_number( $atts['size'] );

      }

      $content = $mywp_user->get_avatar_tag( $size );

    } else {

      MywpHelper::error_not_found_message( '$field' , $called_text );

      return $content;

    }

    $content = apply_filters( 'mywp_shortcode_user' , $content , $atts );

    return $content;

  }

}

MywpShortcodeModuleUser::init();

endif;
