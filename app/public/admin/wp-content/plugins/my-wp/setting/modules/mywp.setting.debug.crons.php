<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpAbstractSettingModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpSettingScreenDebugCrons' ) ) :

final class MywpSettingScreenDebugCrons extends MywpAbstractSettingModule {

  static protected $id = 'debug_crons';

  static protected $priority = 80;

  static private $menu = 'debug';

  public static function mywp_setting_screens( $setting_screens ) {

    $setting_screens[ self::$id ] = array(
      'title' => __( 'All Crons' , 'my-wp' ),
      'menu' => self::$menu,
      'use_form' => false,
    );

    return $setting_screens;

  }

  private static function get_crons() {

    $crons = _get_cron_array();

    return $crons;

  }

  public static function mywp_current_setting_screen_content() {

    $called_text = sprintf( '%s::%s()' , __CLASS__ , __FUNCTION__ );

    $all_crons = self::get_crons();

    if( empty( $all_crons ) ) {

      MywpHelper::error_not_found_message( '$all_crons' , $called_text );

      return false;

    }

    $timezone_format = _x( 'Y-m-d H:i:s' , 'timezone date format' );

    $timezone = get_option( 'timezone_string' );

    ?>
    <p><?php echo esc_html( __( 'Count' , 'my-wp' ) ); ?>: <?php echo count( $all_crons ); ?></p>

    <table class="form-table">
      <thead>
        <tr>
          <th><?php echo esc_html( __( 'Name' , 'default' ) ); ?></th>
          <th><?php echo esc_html( sprintf( __( 'Run %s' , 'default' ) , 'Cron' ) ); ?></th>
          <th><?php echo esc_html( __( 'Data' , 'default' ) ); ?></th>
        </tr>
      </thead>
      <tbody>

        <?php foreach( $all_crons as $timestamp => $cron ) : ?>

          <tr>
            <th>
              <?php echo esc_html( key( $cron ) ); ?>
            </th>
            <td>
              <p><?php echo esc_html( date( $timezone_format , $timestamp + MywpHelper::get_gmt_offset_seconds() ) ); ?> (<?php echo esc_html( $timezone ); ?>)</p>
              <input type="text" readonly="readonly" class="large-text" value="<?php echo esc_attr( $timestamp ); ?>" /><br />
              <?php echo esc_html( __( 'RAW' , 'default' ) ); ?>: <?php echo esc_html( date( $timezone_format , $timestamp ) ); ?> (<?php echo esc_html( __( 'UTC' , 'default' ) ); ?>)
            </td>
            <td>
              <textarea readonly="readonly" class="large-text" style="height: 160px;"><?php echo esc_textarea( print_r( $cron , true ) ); ?></textarea>
            </td>
          </tr>

        <?php endforeach; ?>

      </tbody>
    </table>
    <p>&nbsp;</p>
    <?php

  }

}

MywpSettingScreenDebugCrons::init();

endif;
