<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpAbstractSettingModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpSettingScreenDebugBlogs' ) ) :

final class MywpSettingScreenDebugBlogs extends MywpAbstractSettingModule {

  static protected $id = 'network_debug_blogs';

  static protected $priority = 30;

  static private $menu = 'network_debug';

  public static function mywp_setting_screens( $setting_screens ) {

    if( is_multisite() ) {

      $setting_screens[ self::$id ] = array(
        'title' => __( 'All Blogs' , 'my-wp' ),
        'menu' => self::$menu,
        'use_form' => false,
      );

    }

    return $setting_screens;

  }

  public static function mywp_current_setting_screen_content() {

    if( is_multisite() ) {

      if( ! is_network_admin() ) {

        return false;

      }

    } else {

      return false;

    }

    global $wpdb;

    $all_blogs = $wpdb->get_results( "SELECT * FROM {$wpdb->blogs} ORDER BY blog_id" );

    if( empty( $all_blogs ) ) {

      return false;

    }

    ?>
    <p><?php _e( 'Count' , 'my-wp' ); ?>: <?php echo count( $all_blogs ); ?></p>
    <table class="form-table">
      <thead>
        <tr>
          <th><?php _e( 'Site ID' , 'my-wp' ); ?></th>
          <th>[blog_id] URL</th>
          <th><?php _e( 'Last Updated' ); ?></th>
          <th><?php _e( 'Public' ); ?></th>
          <th><?php _e( 'Deleated' , 'my-wp' ); ?></th>
          <th><?php _e( 'Data' ); ?></th>
        </tr>
      </thead>
      <tbody>
        <?php foreach( $all_blogs as $blog ) : ?>
          <tr>
            <th>
              [<?php echo esc_html( $blog->site_id ); ?>]
            </th>
            <td>
              [<?php echo esc_html( $blog->blog_id ); ?>]
              <?php echo esc_html( $blog->domain ); ?>
              <?php echo esc_html( $blog->path ); ?>
            </td>
            <td>
              <?php echo esc_html( $blog->last_updated ); ?> (<?php echo esc_html( $blog->registered ); ?>)
            </td>
            <td>
              <?php echo esc_html( $blog->public ); ?>
            </td>
            <td>
              <?php echo esc_html( $blog->deleted ); ?>
            </td>
            <td>
              <textarea readonly="readonly" class="large-text" style="height: 100px;"><?php echo esc_textarea( print_r( $blog , true ) ); ?></textarea>
            </td>
          </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
    <p>&nbsp;</p>
    <?php

  }

}

MywpSettingScreenDebugBlogs::init();

endif;
