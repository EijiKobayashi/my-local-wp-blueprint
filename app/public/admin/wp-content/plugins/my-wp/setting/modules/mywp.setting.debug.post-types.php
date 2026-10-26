<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpAbstractSettingModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpSettingScreenDebugPostTypes' ) ) :

final class MywpSettingScreenDebugPostTypes extends MywpAbstractSettingModule {

  static protected $id = 'debug_post_types';

  static protected $priority = 10;

  static private $menu = 'debug';

  public static function mywp_setting_screens( $setting_screens ) {

    $setting_screens[ self::$id ] = array(
      'title' => __( 'All Post Types' , 'my-wp' ),
      'menu' => self::$menu,
      'use_form' => false,
    );

    return $setting_screens;

  }

  public static function mywp_current_setting_screen_content() {

    $called_text = sprintf( '%s::%s()' , __CLASS__ , __FUNCTION__ );

    $all_post_types = MywpApi::get_all_post_types();

    if( empty( $all_post_types ) ) {

      MywpHelper::error_not_found_message( '$all_post_types' , $called_text );

      return false;

    }

    ?>
    <p><?php echo esc_html( __( 'Count' , 'my-wp' ) ); ?>: <?php echo count( $all_post_types ); ?></p>
    <table class="form-table">
      <tbody>

        <?php foreach( $all_post_types as $key => $post_type ) : ?>

          <tr>
            <th>
              [<?php echo esc_html( $post_type->name ); ?>]
              <?php echo esc_html( $post_type->label ); ?><br />
              <a href="<?php echo esc_url( add_query_arg( array( 'post_type' => $post_type->name ) , admin_url( 'edit.php' ) ) ); ?>"><?php echo esc_html( $post_type->labels->all_items ); ?></a>
            </th>
            <td>
              <textarea readonly="readonly" class="large-text" style="height: 400px;"><?php echo esc_textarea( print_r( $post_type , true ) ); ?></textarea>
            </td>
          </tr>

        <?php endforeach; ?>

      </tbody>
    </table>
    <p>&nbsp;</p>
    <?php

  }

}

MywpSettingScreenDebugPostTypes::init();

endif;
