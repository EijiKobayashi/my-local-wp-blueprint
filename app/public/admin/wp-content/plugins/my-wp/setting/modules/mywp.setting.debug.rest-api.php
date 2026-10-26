<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpAbstractSettingModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpSettingScreenDebugRestApi' ) ) :

final class MywpSettingScreenDebugRestApi extends MywpAbstractSettingModule {

  static protected $id = 'rest_api';

  static protected $priority = 140;

  static private $menu = 'debug';

  public static function mywp_setting_screens( $setting_screens ) {

    $setting_screens[ self::$id ] = array(
      'title' => __( 'Rest API' , 'my-wp' ),
      'menu' => self::$menu,
      'use_form' => false,
    );

    return $setting_screens;

  }

  public static function mywp_current_setting_screen_content() {

    $called_text = sprintf( '%s::%s()' , __CLASS__ , __FUNCTION__ );

    $rest_server = rest_get_server();

    $rest_routes = $rest_server->get_routes();

    if( empty( $rest_routes ) ) {

      MywpHelper::error_not_found_message( '$rest_routes' , $called_text );

      return false;

    }

    ?>

    <table class="form-table">
      <thead>
        <tr>
          <td><?php echo esc_html( __( 'Endpoint' , 'my-wp' ) ); ?></td>
        </tr>
      </thead>
      <tbody>

        <?php foreach( $rest_routes as $rest_route_key => $rest_route_handlers ) : ?>

          <tr>
            <td>
              [<?php echo esc_html( $rest_route_key ); ?>]
            </td>
          </tr>

        <?php endforeach; ?>

      </tbody>
    </table>

    <p>&nbsp;</p>

    <?php

  }

}

MywpSettingScreenDebugRestApi::init();

endif;
