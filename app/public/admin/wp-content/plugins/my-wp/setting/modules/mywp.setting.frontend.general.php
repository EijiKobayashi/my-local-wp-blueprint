<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpAbstractSettingModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpSettingScreenFrontendGeneral' ) ) :

final class MywpSettingScreenFrontendGeneral extends MywpAbstractSettingModule {

  static protected $id = 'frontend_general';

  static private $menu = 'frontend';

  protected static function after_init() {

    $screen_id = self::$id;

    add_action( "mywp_setting_screen_content_{$screen_id}" , array( __CLASS__ , 'mywp_setting_screen_content_20' ) , 20 );

  }

  public static function mywp_setting_screens( $setting_screens ) {

    $setting_screens[ self::$id ] = array(
      'title' => __( 'General' , 'default' ),
      'menu' => self::$menu,
      'controller' => 'frontend_general',
      'use_advance' => true,
      'document_url' => self::get_document_url( 'document/frontend-general/' ),
    );

    return $setting_screens;

  }

  public static function mywp_current_setting_screen_content() {

    $setting_data = self::get_setting_data();

    $admin_bar_vars = array(
      'hide' => __( 'Hide' , 'default' ),
      'show' => __( 'Always Show' , 'my-wp' ),
    );

    ?>
    <h3 class="mywp-setting-screen-subtitle">
      <?php echo esc_html( __( 'General' , 'default' ) ); ?>
    </h3>

    <table class="form-table">
      <tbody>
        <tr>
          <th><?php echo esc_html( __( 'Toolbar' , 'my-wp' ) ); ?></th>
          <td>
            <select name="mywp[data][admin_bar]" class="admin_bar">
              <option value="">----</option>

              <?php foreach( $admin_bar_vars as $key => $val ) : ?>

                <option value="<?php echo esc_attr( $key ); ?>" <?php selected( $key , $setting_data['admin_bar'] ); ?>>
                  <?php echo esc_html( $val ); ?>
                </option>

              <?php endforeach; ?>
            </select>
          </td>
        </tr>
      </tbody>
    </table>
    <p>&nbsp;</p>
    <?php

  }

  public static function mywp_setting_screen_content_20() {

    $setting_data = self::get_setting_data();

    $api_root = get_rest_url();

    ?>
    <h3 class="mywp-setting-screen-subtitle">
      <?php echo esc_html( __( 'Response Header' , 'my-wp' ) ); ?>
    </h3>

    <table class="form-table">
      <tbody>
        <tr>
          <th><?php echo esc_html( __( 'Hide Rest link' , 'my-wp' ) ); ?></th>
          <td>
            <label>
              <input type="checkbox" name="mywp[data][hide_rest_link_header]" class="hide_rest_link_header" value="1" <?php checked( $setting_data['hide_rest_link_header'] , true ); ?> />
              <?php echo esc_html( __( 'Hide' , 'default' ) ); ?>
            </label>
            <p>
              <code>
                <?php if( ! empty( $api_root ) ) : ?>
                  <?php echo esc_html( 'Link: <' . esc_url_raw( $api_root ) . '>; rel="https://api.w.org/"' ); ?>
                <?php endif; ?>
              </code>
            </p>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Hide Shortlink' , 'my-wp' ) ); ?></th>
          <td>
            <label>
              <input type="checkbox" name="mywp[data][hide_shortlink_header]" class="hide_shortlink_header" value="1" <?php checked( $setting_data['hide_shortlink_header'] , true ); ?> />
              <?php echo esc_html( __( 'Hide' , 'default' ) ); ?>
            </label>
            <p>
              <code>
                <?php if( ! empty( $api_root ) ) : ?>
                  <?php echo esc_html( 'Link: <' . home_url( '/' ) . '>?p=***; rel=shortlink' ); ?>
                <?php endif; ?>
              </code>
            </p>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Hide X-Pingback' , 'my-wp' ) ); ?></th>
          <td>
            <label>
              <input type="checkbox" name="mywp[data][hide_x_pingback]" class="hide_x_pingback" value="1" <?php checked( $setting_data['hide_x_pingback'] , true ); ?> />
              <?php echo esc_html( __( 'Hide' , 'default' ) ); ?>
            </label>
            <p>
              <code>
                <?php echo esc_html( get_bloginfo( 'pingback_url', 'display' ) ); ?>
              </code>
            </p>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'X-Frame-Options' , 'my-wp' ) ); ?></th>
          <td>
            <select name="mywp[data][x_frame_option]">
              <option value=""></option>

              <?php foreach( MywpControllerModuleFrontendGeneral::get_x_frame_options() as $x_frame_option ) : ?>

                <?php $selected = false; ?>

                <?php if( $setting_data['x_frame_option'] === $x_frame_option ) : ?>

                  <?php $selected = true; ?>

                <?php endif; ?>

                <option value="<?php echo esc_attr( $x_frame_option ); ?>" <?php selected( $selected , true ); ?>>
                  <?php echo esc_html( $x_frame_option ); ?>
                </option>

              <?php endforeach; ?>
          </td>
        </tr>
      </tbody>
    </table>
    <p>&nbsp;</p>

    <h3 class="mywp-setting-screen-subtitle">
      <?php echo esc_html( __( 'HTML Head' , 'my-wp' ) ); ?>
    </h3>

    <table class="form-table">
      <tbody>
        <tr>
          <th><?php echo esc_html( __( 'Hide WP Generator Tag' , 'my-wp' ) ); ?></th>
          <td>
            <label>
              <input type="checkbox" name="mywp[data][hide_wp_generator]" class="hide_wp_generator" value="1" <?php checked( $setting_data['hide_wp_generator'] , true ); ?> />
              <?php echo esc_html( __( 'Hide' , 'default' ) ); ?>
            </label>
            <p>
              <code>
                <?php echo esc_html( get_the_generator( apply_filters( 'wp_generator_type', 'xhtml' ) ) ); ?>
              </code>
            </p>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Hide Manifest Link Tag' , 'my-wp' ) ); ?></th>
          <td>
            <label>
              <input type="checkbox" name="mywp[data][hide_wlwmanifest_link]" class="hide_wlwmanifest_link" value="1" <?php checked( $setting_data['hide_wlwmanifest_link'] , true ); ?> />
              <?php echo esc_html( __( 'Hide' , 'default' ) ); ?>
            </label>
            <p>
              <code>
                <?php echo esc_html( '<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="' . includes_url( 'wlwmanifest.xml' ) . '" />' ); ?>
              </code>
            </p>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Hide RSD Link Tag' , 'my-wp' ) ); ?></th>
          <td>
            <label>
              <input type="checkbox" name="mywp[data][hide_rsd_link]" class="hide_rsd_link" value="1" <?php checked( $setting_data['hide_rsd_link'] , true ); ?> />
              <?php echo esc_html( __( 'Hide' , 'default' ) ); ?>
            </label>
            <p>
              <code>
                <?php echo esc_html( '<link rel="EditURI" type="application/rsd+xml" title="RSD" href="' . esc_url( site_url( 'xmlrpc.php?rsd', 'rpc' ) ) . '" />' ); ?>
              </code>
            </p>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Hide Feed Links Tag' , 'my-wp' ) ); ?></th>
          <td>
            <label>
              <input type="checkbox" name="mywp[data][hide_feed_links]" class="hide_feed_links" value="1" <?php checked( $setting_data['hide_feed_links'] , true ); ?> />
              <?php echo esc_html( __( 'Hide' , 'default' ) ); ?>
            </label>
            <p>
              <code>
                <?php echo esc_html( '<link rel="alternate" type="' . feed_content_type() . '" title="[Feed Title]" href="[Feed URL]"/>' ); ?>
              </code>
            </p>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Hide Feed Links Extra Tag' , 'my-wp' ) ); ?></th>
          <td>
            <label>
              <input type="checkbox" name="mywp[data][hide_feed_links_extra]" class="hide_feed_links_extra" value="1" <?php checked( $setting_data['hide_feed_links_extra'] , true ); ?> />
              <?php echo esc_html( __( 'Hide' , 'default' ) ); ?>
            </label>
            <p>
              <code>
                <?php echo esc_html( '<link rel="alternate" type="' . feed_content_type() . '" title="[Feed Content Type Title]" href="Feed Content Type URL" />' ); ?>
              </code>
            </p>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Hide Rest link' , 'my-wp' ) ); ?></th>
          <td>
            <label>
              <input type="checkbox" name="mywp[data][hide_rest_link]" class="hide_rest_link" value="1" <?php checked( $setting_data['hide_rest_link'] , true ); ?> />
              <?php echo esc_html( __( 'Hide' , 'default' ) ); ?>
            </label>
            <p>
              <code>
                <?php if( ! empty( $api_root ) ) : ?>
                  <?php echo esc_html( '<link rel="https://api.w.org/" href="' . esc_url_raw( $api_root ) . '" />' ); ?>
                <?php endif; ?>
              </code>
            </p>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Hide Shortlink' , 'my-wp' ) ); ?></th>
          <td>
            <label>
              <input type="checkbox" name="mywp[data][hide_shortlink]" class="hide_shortlink" value="1" <?php checked( $setting_data['hide_shortlink'] , true ); ?> />
              <?php echo esc_html( __( 'Hide' , 'default' ) ); ?>
            </label>
            <p>
              <code>
                <?php if( ! empty( $api_root ) ) : ?>
                  <?php echo esc_html( '<link rel="shortlink" href="' . home_url( '/' ) . '" />' ); ?>
                <?php endif; ?>
              </code>
            </p>
          </td>
        </tr>
      </tbody>
    </table>
    <p>&nbsp;</p>
    <?php

  }

  public static function mywp_current_setting_screen_advance_content() {

    $setting_data = self::get_setting_data();

    $plugin_info = MywpApi::plugin_info();

    ?>
    <table class="form-table">
      <tbody>
        <tr>
          <th><?php echo esc_html( __( 'Include your CSS file' , 'my-wp' ) ); ?></th>
          <td>
            <input type="text" name="mywp[data][include_css_file]" class="include_css_file large-text" value="<?php echo esc_attr( $setting_data['include_css_file'] ); ?>" placeholder="<?php echo esc_attr( 'https://example.com/frontend.css' ); ?>" />
            <p class="mywp-description">
              <span class="dashicons dashicons-lightbulb"></span>
              <?php echo esc_html( __( 'You can use a shortcode.' , 'my-wp' ) ); ?>
              <a href="<?php echo esc_url( $plugin_info['document_category_url'] . 'shortcode/' ); ?>" class="button" target="_blank">
                <span class="dashicons dashicons-external"></span>
                <?php echo esc_html( __( 'More shortcodes' , 'my-wp' ) ); ?>
              </a>
            </p>
            <p>
              <code>[mywp_theme field="url"]/frontend.css</code> <?php echo esc_html( '=>' ); ?> <code><?php echo do_shortcode( '[mywp_theme field="url"]' ); ?>/frontend.css</code>
            </p>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Include your JS file' , 'my-wp' ) ); ?></th>
          <td>
            <input type="text" name="mywp[data][include_js_file]" class="include_js_file large-text" value="<?php echo esc_attr( $setting_data['include_js_file'] ); ?>" placeholder="<?php echo esc_attr( 'https://example.com/frontend.js' ); ?>" />
            <p class="mywp-description">
              <span class="dashicons dashicons-lightbulb"></span>
              <?php echo esc_html( __( 'You can use a shortcode.' , 'my-wp' ) ); ?>
              <a href="<?php echo esc_url( $plugin_info['document_category_url'] . 'shortcode/' ); ?>" class="button" target="_blank">
                <span class="dashicons dashicons-external"></span>
                <?php echo esc_html( __( 'More shortcodes' , 'my-wp' ) ); ?>
              </a>
            </p>
            <p>
              <code>[mywp_theme field="url"]/frontend.js</code> <?php echo esc_html( '=>' ); ?> <code><?php echo do_shortcode( '[mywp_theme field="url"]' ); ?>/frontend.js</code>
            </p>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Custom Header Meta' , 'my-wp' ) ); ?></th>
          <td>
            <textarea type="text" name="mywp[data][custom_header_meta]" class="custom_header_meta large-text" placeholder="<?php echo esc_attr( '<meta name="example" content="example-content" />' ); ?>"><?php echo esc_textarea( $setting_data['custom_header_meta'] ); ?></textarea>
          </td>
        </tr>
      </tbody>
    </table>
    <p>&nbsp;</p>
    <?php

  }

  public static function mywp_current_admin_print_styles() {

    ?>
    <style>
    .custom_header_meta {
      height: 200px;
    }
    </style>
    <?php

  }

  public static function mywp_current_setting_post_data_format_update( $formatted_data ) {

    $mywp_model = self::get_model();

    if( empty( $mywp_model ) ) {

      return $formatted_data;

    }

    $new_formatted_data = $mywp_model->get_initial_data();

    $new_formatted_data['advance'] = $formatted_data['advance'];

    if( ! empty( $formatted_data['admin_bar'] ) ) {

      $new_formatted_data['admin_bar'] = MywpHelper::sanitize_text( $formatted_data['admin_bar'] );

    }

    if( ! empty( $formatted_data['hide_rest_link_header'] ) ) {

      $new_formatted_data['hide_rest_link_header'] = true;

    }

    if( ! empty( $formatted_data['hide_shortlink_header'] ) ) {

      $new_formatted_data['hide_shortlink_header'] = true;

    }

    if( ! empty( $formatted_data['hide_x_pingback'] ) ) {

      $new_formatted_data['hide_x_pingback'] = true;

    }

    if( ! empty( $formatted_data['x_frame_option'] ) ) {

      $new_formatted_data['x_frame_option'] = MywpHelper::sanitize_text( $formatted_data['x_frame_option'] );

    }

    if( ! empty( $formatted_data['hide_wp_generator'] ) ) {

      $new_formatted_data['hide_wp_generator'] = true;

    }

    if( ! empty( $formatted_data['hide_wlwmanifest_link'] ) ) {

      $new_formatted_data['hide_wlwmanifest_link'] = true;

    }

    if( ! empty( $formatted_data['hide_rsd_link'] ) ) {

      $new_formatted_data['hide_rsd_link'] = true;

    }

    if( ! empty( $formatted_data['hide_feed_links'] ) ) {

      $new_formatted_data['hide_feed_links'] = true;

    }

    if( ! empty( $formatted_data['hide_feed_links_extra'] ) ) {

      $new_formatted_data['hide_feed_links_extra'] = true;

    }

    if( ! empty( $formatted_data['hide_rest_link'] ) ) {

      $new_formatted_data['hide_rest_link'] = true;

    }

    if( ! empty( $formatted_data['hide_shortlink'] ) ) {

      $new_formatted_data['hide_shortlink'] = true;

    }

    if( ! empty( $formatted_data['include_css_file'] ) ) {

      $new_formatted_data['include_css_file'] = MywpHelper::sanitize_text( $formatted_data['include_css_file'] );

    }

    if( ! empty( $formatted_data['include_js_file'] ) ) {

      $new_formatted_data['include_js_file'] = MywpHelper::sanitize_text( $formatted_data['include_js_file'] );

    }

    if( ! empty( $formatted_data['custom_header_meta'] ) ) {

      $wp_kses_allowed_tags = array(
        'meta' => array(
          'name' => true,
          'content' => true,
          'charset' => true,
          'http-equiv' => true,
          'property' => true,
        ),
        'link' => array(
          'rel' => true,
          'id' => true,
          'href' => true,
          'type' => true,
          'media' => true,
          'fetchpriority' => true,
          'sizes' => true,
          'as' => true,
          'crossorigin' => true,
          'referrerpolicy' => true,
        ),
        'style' => array(
          'id' => true,
          'type' => true,
        ),
        'script' => array(
          'id' => true,
          'src' => true,
          'async' => true,
          'defer' => true,
          'type'  => true,
          'fetchpriority' => true,
          'crossorigin' => true,
          'referrerpolicy' => true,
        ),
      );

      $new_formatted_data['custom_header_meta'] = wp_kses( $formatted_data['custom_header_meta'] , $wp_kses_allowed_tags );

    }

    return $new_formatted_data;

  }

}

MywpSettingScreenFrontendGeneral::init();

endif;
