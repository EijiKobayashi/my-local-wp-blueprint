<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if ( ! class_exists( 'MywpDeveloperAbstractModule' ) ) :

abstract class MywpDeveloperAbstractModule {

  static protected $id = '';

  static protected $priority = 10;

  public static function init() {

    $class = get_called_class();

    if( empty( static::$id ) ) {

      $called_text = sprintf( 'class %s' , $class );

      MywpHelper::error_require_message( '"static protected $id"' , $called_text );

      return false;

    }

    add_filter( 'mywp_debug_types' , array( $class , 'mywp_debug_types' ) , static::$priority );

    add_filter( 'mywp_debug_renders' , array( $class , 'mywp_debug_renders' ) , static::$priority );

    add_action( 'mywp_debug_render' , array( $class , 'pre_mywp_debug_render' ) , static::$priority );

    add_action( 'mywp_developer_debug' , array( $class , 'pre_mywp_developer_debug' ) , static::$priority );

    add_action( 'mywp_debug_render_footer' , array( $class , 'mywp_debug_render_footer' ) , static::$priority );

    static::after_init();

  }

  protected static function after_init() {}

  public static function mywp_debug_types( $debug_types ) {

    return $debug_types;

  }

  public static function mywp_debug_renders( $debug_renders ) {

    return $debug_renders;

  }

  public static function pre_mywp_debug_render( $render_id ) {

    if( $render_id !== static::$id ) {

      return false;

    }

    static::mywp_debug_render();

  }

  protected static function mywp_debug_render() {

    $debug_lists = static::get_debug_lists();

    if( empty( $debug_lists ) ) {

      return false;

    }

    echo '<table class="debug-table">';

    foreach( $debug_lists as $key => $val ) {

      echo '<tr>';

      printf( '<th>%s</th>' , esc_html( $key ) );

      echo '<td>';

      if( is_array( $val ) or is_object( $val ) ) {

        printf( '<textarea readonly="readonly">%s</textarea>' , esc_textarea( print_r( $val , true ) ) );

      } else {

        echo esc_html( $val );

      }

      echo '</td>';

      echo '</tr>';

    }

    echo '</table>';

  }

  public static function pre_mywp_developer_debug( $include_debug_modules ) {

    if( ! empty( $include_debug_modules ) ) {

      if( ! in_array( static::$id , $include_debug_modules ) ) {

        return false;

      }

    }

    printf( '--- mywp developer debug render: %s ---' , esc_html( static::$id ) );

    echo "\n";

    static::mywp_developer_debug();

    echo "\n";

  }

  protected static function mywp_developer_debug() {

    $debug_lists = static::get_debug_lists();

    if( empty( $debug_lists ) ) {

      return false;

    }

    foreach( $debug_lists as $key => $val ) {

      echo esc_html( $key ) . ' = ';

      if( is_array( $val ) or is_object( $val ) ) {

        echo esc_html( print_r( $val , true ) );

      } else {

        echo esc_html( $val );

      }
      echo "\n";

    }

  }

  protected static function get_debug_lists() {}

  public static function mywp_debug_render_footer() {}

}

endif;
