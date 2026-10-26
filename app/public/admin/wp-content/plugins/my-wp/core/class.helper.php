<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if ( ! class_exists( 'MywpHelper' ) ) :

final class MywpHelper {

  public static function error_after_called_message( $action = false , $called = false ) {

    $called_text = sprintf( '%s::%s( $action , $called )' , __CLASS__ , __FUNCTION__ );

    $action = self::sanitize_text( $action );

    if( empty( $action ) ) {

      self::error_require_message( '$action' , $called_text );

      return false;

    }

    $called = self::sanitize_text( $called );

    if( empty( $called ) ) {

      self::error_require_message( '$called' , $called_text );

      return false;

    }

    self::error_message( sprintf( __( 'This function can be called after "%s" action.' , 'my-wp' ) , $action ) , $called );

  }

  public static function error_require_message( $required_val = false , $called = false ) {

    $called_text = sprintf( '%s::%s( $required_val , $called )' , __CLASS__ , __FUNCTION__ );

    $required_val = self::sanitize_text( $required_val );

    if( empty( $required_val ) ) {

      self::error_message( sprintf( __( 'The %s is required.' , 'my-wp' ) , '$required_val' ) , $called );

      return false;

    }

    $called = self::sanitize_text( $called );

    if( empty( $called ) ) {

      self::error_message( sprintf( __( 'The %s is required.' , 'my-wp' ) , '$called' ) , $called );

      return false;

    }

    self::error_message( sprintf( __( 'The %s is required.' , 'my-wp' ) , $required_val ) , $called );

  }

  public static function error_not_found_message( $not_found = false , $called = false ) {

    $called_text = sprintf( '%s::%s( $not_found , $called )' , __CLASS__ , __FUNCTION__ );

    $not_found = self::sanitize_text( $not_found );

    if( empty( $not_found ) ) {

      self::error_require_message( '$not_found' , $called_text );

      return false;

    }

    $called = self::sanitize_text( $called );

    if( empty( $called ) ) {

      self::error_require_message( '$called' , $called_text );

      return false;

    }

    self::error_message( sprintf( __( '%s is not found.' , 'my-wp' ) , $not_found ) , $called );

  }

  public static function error_returned_message( $returned = false , $message = false , $called = false ) {

    $called_text = sprintf( '%s::%s( $returned , $message , $called )' , __CLASS__ , __FUNCTION__ );

    $returned = self::sanitize_text( $returned );

    if( empty( $returned ) ) {

      self::error_require_message( '$returned' , $called_text );

      return false;

    }

    $message = self::sanitize_text( $message );

    if( empty( $message ) ) {

      self::error_require_message( '$message' , $called_text );

      return false;

    }

    $called = self::sanitize_text( $called );

    if( empty( $called ) ) {

      self::error_require_message( '$called' , $called_text );

      return false;

    }

    self::error_message( sprintf( __( '%s is return error %s.' , 'my-wp' ) , $returned , $message ) , $called );

  }

  public static function error_invalid_message( $invalid = false , $message = false , $called = false ) {

    $called_text = sprintf( '%s::%s( $invalid , $message , $called )' , __CLASS__ , __FUNCTION__ );

    $invalid = self::sanitize_text( $invalid );

    if( empty( $invalid ) ) {

      self::error_require_message( '$invalid' , $called_text );

      return false;

    }

    $message = self::sanitize_text( $message );

    if( empty( $message ) ) {

      print_r(debug_backtrace());
      self::error_require_message( '$message' , $called_text );

      return false;

    }

    $called = self::sanitize_text( $called );

    if( empty( $called ) ) {

      self::error_require_message( '$called' , $called_text );

      return false;

    }

    self::error_message( sprintf( __( '%s is invalid %s.' , 'my-wp' ) , $invalid , $message ) , $called );

  }

  public static function error_deprecated( $deprecated_message = false , $called = false ) {

    $called_text = sprintf( '%s::%s( $deprecated_message , $called )' , __CLASS__ , __FUNCTION__ );

    $deprecated_message  = self::sanitize_text( $deprecated_message );

    if( empty( $deprecated_message ) ) {

      self::error_require_message( '$deprecated_message' , $called_text );

      return false;

    }

    $called = self::sanitize_text( $called );

    if( empty( $called ) ) {

      self::error_require_message( '$called' , $called_text );

      return false;

    }

    self::error_message( $deprecated_message , $called );

    if( WP_DEBUG ) {

      if( function_exists( 'wp_trigger_error' ) ) {

        $message = sprintf( 'Plugin %s(%s), %s, %s' , MYWP_NAME , MYWP_PLUGIN_BASENAME , $called , $deprecated_message );

        wp_trigger_error( '' , $message );

      }

    }

  }

  public static function error_deprecated_value( $deprecated_message = false , $called = false , $version = false ) {

    $called_text = sprintf( '%s::%s( $deprecated_message , $called , $version )' , __CLASS__ , __FUNCTION__ );

    $deprecated_message  = self::sanitize_text( $deprecated_message );

    if( empty( $deprecated_message ) ) {

      self::error_require_message( '$deprecated_message' , $called_text );

      return false;

    }

    $called = self::sanitize_text( $called );

    if( empty( $called ) ) {

      self::error_require_message( '$called' , $called_text );

      return false;

    }

    $version = self::sanitize_text( $version );

    if( empty( $version ) ) {

      self::error_require_message( '$version' , $called_text );

      return false;

    }

    $message = sprintf( '%s is deprecated since version %s.' , $deprecated_message , $version );

    self::error_deprecated( $message , $called );

  }

  public static function error_message( $message = false , $called = false ) {

    $message  = self::sanitize_text( $message );

    if( empty( $message ) ) {

      return false;

    }

    $called  = self::sanitize_text( $called );

    if( empty( $called ) ) {

      return false;

    }

    $error_text = sprintf( __( '%1$s: %2$s' , 'my-wp' ) , $called , $message );

    MywpApi::add_error( $error_text );

  }

  public static function get_define( $define_name = false ) {

    $called_text = sprintf( '%s::%s( $define_name )' , __CLASS__ , __FUNCTION__ );

    $define_name = self::sanitize_text( $define_name );

    if( empty( $define_name ) ) {

      self::error_require_message( '$define_name' , $called_text );

      return false;

    }

    if( ! defined( $define_name ) ) {

      return false;

    }

    return constant( $define_name );

  }

  public static function is_doing( $doing_name = false ) {

    $called_text = sprintf( '%s::%s( $doing_name )' , __CLASS__ , __FUNCTION__ );

    $doing_name = self::sanitize_text( $doing_name );

    if( empty( $doing_name ) ) {

      self::error_require_message( '$doing_name' , $called_text );

      return false;

    }

    $define_name = '';

    if( 'cron' === $doing_name ) {

      $define_name = 'DOING_CRON';

    } elseif( 'xmlrpc' === $doing_name ) {

      $define_name = 'XMLRPC_REQUEST';

    } elseif( 'rest' === $doing_name ) {

      $define_name = 'REST_REQUEST';

    } elseif( 'ajax' === $doing_name ) {

      $define_name = 'DOING_AJAX';

    } elseif( 'autosave' === $doing_name ) {

      $define_name = 'DOING_AUTOSAVE';

    }

    if( empty( $define_name ) ) {

      self::error_not_found_message( '$define_name' , $called_text );

      return false;

    }

    $doing = self::get_define( $define_name );

    return $doing;

  }

  public static function get_format_byte( $bytes = false , $unit = false ) {

    $called_text = sprintf( '%s::%s( $bytes , $unit )' , __CLASS__ , __FUNCTION__ );

    $bytes = self::sanitize_text( $bytes );

    if( ! preg_match( '/^\d+(\.\d+)?$/' , $bytes ) ) {

      self::error_invalid_message( '$bytes' , 'preg_match()' , $called_text );

      return false;

    }

    $unit = self::sanitize_text( $unit );

    $format = '';

    if( empty( $unit ) ) {

      if( $bytes >= TB_IN_BYTES ) {

        $format = 'TB';

      } elseif( $bytes >= GB_IN_BYTES ) {

        $format = 'GB';

      } elseif( $bytes >= MB_IN_BYTES ) {

        $format = 'MB';

      } elseif( $bytes >= KB_IN_BYTES ) {

        $format = 'KB';

      } else {

        $format = 'Bytes';

      }

    } elseif( in_array( $unit , array( 'TB' , 'GB' , 'MB' , 'KB' , 'Bytes' ) , true ) ) {

      $format = $unit;

    }

    if( empty( $format ) ) {

      self::error_not_found_message( '$format' , $called_text );

      return false;

    }

    if( $format === 'TB' ) {

      $bytes = number_format_i18n( $bytes / TB_IN_BYTES , 2 );

    } elseif( $format === 'GB' ) {

      $bytes = number_format_i18n( $bytes / GB_IN_BYTES , 2 );

    } elseif( $format === 'MB' ) {

      $bytes = number_format_i18n( $bytes / MB_IN_BYTES , 2 );

    } elseif( $format === 'KB' ) {

      $bytes = number_format_i18n( $bytes / KB_IN_BYTES , 2 );

    } elseif( $format === 'Bytes' ) {

      $bytes = number_format_i18n( $bytes , 2 );

    }

    return sprintf( '%s %s' , $bytes , __( $format , 'default' ) );

  }

  public static function get_byte( $bytes = false ) {

    return self::get_format_byte( $bytes );

  }

  public static function get_all_sites() {

    $args = array(
      'number' => '',
    );

    return get_sites( $args );

  }

  public static function get_all_users() {

    $args = array(
      'number' => -1,
    );

    return get_users( $args );

  }

  public static function get_max_allowed_packet_size() {

    $max_allowed_packet_size = apply_filters( 'mywp_get_max_allowed_packet_size' , 1000000 );

    return $max_allowed_packet_size;

  }

  public static function set_time_limit( $seconds = 0 ) {

    $seconds = self::sanitize_number( $seconds );

    if( function_exists( 'set_time_limit' ) ) {

      set_time_limit( $seconds );

    }

  }

  public static function get_gmt_offset_seconds() {

    $gmt_offset = (float) get_option( 'gmt_offset' );

    $gmt_offset_seconds = (int) ( $gmt_offset * HOUR_IN_SECONDS );

    return $gmt_offset_seconds;

  }

  public static function get_wp_version() {

    global $wp_version;

    if( function_exists( 'wp_get_wp_version' ) ) {

      $version = wp_get_wp_version();

    } else {

      $version = $wp_version;

    }

    return $wp_version;

  }

  public static function sanitize_text( $value = false ) {

    $called_text = sprintf( '%s::%s( $value )' , __CLASS__ , __FUNCTION__ );

    if( ! is_scalar( $value ) ) {

      self::error_invalid_message( '$value' , 'is_scalar()' , $called_text );

      return false;

    }

    $value = sanitize_text_field( $value );

    return $value;

  }

  public static function sanitize_textarea( $value = false ) {

    $called_text = sprintf( '%s::%s( $value )' , __CLASS__ , __FUNCTION__ );

    if( ! is_scalar( $value ) ) {

      self::error_invalid_message( '$value' , 'is_scalar()' , $called_text );

      return false;

    }

    $value = sanitize_textarea_field( $value );

    return $value;

  }

  public static function sanitize_number( $value = false ) {

    $called_text = sprintf( '%s::%s( $value )' , __CLASS__ , __FUNCTION__ );

    if( $value === '0' ) {

      return 0;

    }

    if( $value === 0 ) {

      return 0;

    }

    if( $value === false ) {

      return '';

    }

    if( $value === '' ) {

      return '';

    }

    if( is_numeric( $value ) ) {

      return (int) $value;

    }

    $value = self::sanitize_text( $value );

    if( empty( $value ) ) {

      self::error_not_found_message( '$value' , $called_text );

      return false;

    }

    if( ! is_numeric( $value ) ) {

      self::error_invalid_message( '$value' , 'is_numeric()' , $called_text );

      return false;

    }

    $value = (int) $value;

    return $value;

  }

  public static function sanitize_email( $value = false ) {

    $called_text = sprintf( '%s::%s( $value )' , __CLASS__ , __FUNCTION__ );

    if( empty( $value ) ) {

      return '';

    }

    if( ! is_scalar( $value ) ) {

      self::error_invalid_message( '$value' , 'is_scalar()' , $called_text );

      return false;

    }

    $value = sanitize_email( $value );

    if( ! is_email( $value ) ) {

      self::error_invalid_message( '$value' , 'is_email()' , $called_text );

      return false;

    }

    return $value;

  }

  public static function sanitize_url( $value = false ) {

    if( empty( $value ) ) {

      return '';

    }

    if( ! is_scalar( $value ) ) {

      self::error_invalid_message( '$value' , 'is_scalar()' , $called_text );

      return false;

    }

    $value = sanitize_url( $value );

    return $value;

  }

  public static function sanitize_date( $value = false , $format = 'Y-m-d H:i:s' ) {

    $called_text = sprintf( '%s::%s( $value , $format )' , __CLASS__ , __FUNCTION__ );

    if( empty( $value ) ) {

      return '';

    }

    $value = self::sanitize_text( $value );

    if( empty( $value ) ) {

      self::error_not_found_message( '$value' , $called_text );

      return false;

    }

    $format = self::sanitize_text( $format );

    if( empty( $format ) ) {

      self::error_require_message( '$format' , $called_text );

      return false;

    }

    $timestamp = strtotime( $value );

    if( $timestamp === false ) {

      self::error_invalid_message( '$value' , 'strtotime()' , $called_text );

      return false;

    }

    $month = date( 'm' , $timestamp );

    $day = date( 'd' , $timestamp );

    $year = date( 'Y' , $timestamp );

    if( ! wp_checkdate( $month , $day , $year , $value ) ) {

      self::error_invalid_message( '$value' , 'wp_checkdate()' , $called_text );

      return false;

    }

    $format_date = date( $format , $timestamp );

    return $format_date;

  }

  public static function sanitize_date_ymd( $value = false ) {

    return self::sanitize_date( $value , 'Y-m-d' );

  }

  public static function sanitize_date_his( $value = false ) {

    return self::sanitize_date( $value , 'H:i:s' );

  }

  public static function sanitize_taxonomy_name( $value = false ) {

    $called_text = sprintf( '%s::%s( $value )' , __CLASS__ , __FUNCTION__ );

    if( empty( $value ) ) {

      return '';

    }

    $value = self::sanitize_text( $value );

    if( empty( $value ) ) {

      self::error_not_found_message( '$value' , $called_text );

      return false;

    }

    if( ! taxonomy_exists( $value ) ) {

      self::error_invalid_message( '$value' , 'taxonomy_exists()' , $called_text );

      return false;

    }

    return $value;

  }

  public static function sanitize_term_ids( $taxonomy = false , $values = array() ) {

    $called_text = sprintf( '%s::%s( $taxonomy , $values )' , __CLASS__ , __FUNCTION__ );

    if( empty( $values ) ) {

      return array();

    }

    if( ! is_array( $values ) ) {

      self::error_invalid_message( '$values' , 'is_array()' , $called_text );

      return false;

    }

    $term_ids = array();

    foreach( $values as $term_id ) {

      $term_id = self::sanitize_term_id( $taxonomy , $term_id );

      if( empty( $term_id ) ) {

        self::error_invalid_message( '$term_id' , 'empty()' , $called_text );

        continue;

      }

      $term_ids[] = $term_id;

    }

    return $term_ids;

  }

  public static function sanitize_term_id( $taxonomy = false , $value = false ) {

    $called_text = sprintf( '%s::%s( $taxonomy , $value )' , __CLASS__ , __FUNCTION__ );

    if( empty( $value ) ) {

      return '';

    }

    $taxonomy = self::sanitize_taxonomy_name( $taxonomy );

    if( empty( $taxonomy ) ) {

      self::error_not_found_message( '$taxonomy' , $called_text );

      return false;

    }

    $value = self::sanitize_number( $value );

    if( empty( $value ) ) {

      self::error_not_found_message( '$value' , $called_text );

      return false;

    }

    $term_exists = term_exists( $value , $taxonomy );

    if( empty( $term_exists['term_id'] ) ) {

      self::error_invalid_message( '$value' , 'term_exists()' , $called_text );

      return false;

    }

    return $value;

  }

  public static function sanitize_file_name( $value = false ) {

    $called_text = sprintf( '%s::%s( $value )' , __CLASS__ , __FUNCTION__ );

    if( empty( $value ) ) {

      return '';

    }

    if( ! is_scalar( $value ) ) {

      self::error_invalid_message( '$value' , 'is_scalar()' , $called_text );

      return false;

    }

    $value = sanitize_file_name( $value );

    return $value;

  }

  public static function sanitize_serialize( $value = false ) {

    $called_text = sprintf( '%s::%s( $value )' , __CLASS__ , __FUNCTION__ );

    if( empty( $value ) ) {

      return '';

    }

    if( ! is_serialized( $value ) ) {

      self::error_invalid_message( '$values' , 'is_serialized()' , $called_text );

      return $value;

    }

    $value = trim( $value );

    $args = array(
      'allowed_classes' => false,
    );

    $value = @unserialize( $value , $args );

    if( is_object( $value ) ) {

      self::error_invalid_message( '$value' , 'is_object()' , $called_text );

      return false;

    }

    return $value;

  }

  public static function maybe_unserialize( $value = false ) {

    $called_text = sprintf( '%s::%s( $value )' , __CLASS__ , __FUNCTION__ );

    if( empty( $value ) ) {

      return '';

    }

    if( ! is_serialized( $value ) ) {

      return $value;

    }

    $value = self::sanitize_serialize( $value );

    if( empty( $value ) ) {

      self::error_not_found_message( '$value' , $called_text );

      return false;

    }

    return $value;

  }

}

endif;
