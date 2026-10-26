<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpAbstractSettingModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpSettingScreenDebugPostStatuses' ) ) :

final class MywpSettingScreenDebugPostStatuses extends MywpAbstractSettingModule {

  static protected $id = 'debug_post_statuces';

  static protected $priority = 20;

  static private $menu = 'debug';

  public static function mywp_setting_screens( $setting_screens ) {

    $setting_screens[ self::$id ] = array(
      'title' => __( 'All Post Statuses' , 'my-wp' ),
      'menu' => self::$menu,
      'use_form' => false,
    );

    return $setting_screens;

  }

  public static function mywp_current_setting_screen_content() {

    $called_text = sprintf( '%s::%s()' , __CLASS__ , __FUNCTION__ );

    $all_post_statuses = MywpApi::get_all_post_statuses();

    if( empty( $all_post_statuses ) ) {

      MywpHelper::error_not_found_message( '$all_post_statuses' , $called_text );

      return false;

    }

    ?>
    <p><?php echo esc_html( __( 'Count' , 'my-wp' ) ); ?>: <?php echo count( $all_post_statuses ); ?></p>

    <table class="form-table">
      <tbody>

        <?php foreach( $all_post_statuses as $key => $post_status ) : ?>

          <tr>
            <th>
              [<?php echo esc_html( $post_status->name ); ?>]
              <?php echo esc_html( $post_status->label ); ?>
            </th>
            <td>
              <textarea readonly="readonly" class="large-text" style="height: 400px;"><?php echo esc_textarea( print_r( $post_status , true ) ); ?></textarea>
            </td>
          </tr>

        <?php endforeach; ?>

      </tbody>
    </table>
    <p>&nbsp;</p>
    <?php

  }

}

MywpSettingScreenDebugPostStatuses::init();

endif;
