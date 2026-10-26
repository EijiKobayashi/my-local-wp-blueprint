<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpAbstractSettingModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpSettingScreenAdminGeneral' ) ) :

final class MywpSettingScreenAdminGeneral extends MywpAbstractSettingModule {

  static protected $id = 'admin_general';

  static private $menu = 'admin';

  protected static function after_init() {

    $screen_id = self::$id;

    add_action( "mywp_setting_screen_content_{$screen_id}" , array( __CLASS__ , 'mywp_setting_screen_content_20' ) , 20 );
    add_action( "mywp_setting_screen_content_{$screen_id}" , array( __CLASS__ , 'mywp_setting_screen_content_30' ) , 30 );

  }

  public static function mywp_setting_screens( $setting_screens ) {

    $setting_screens[ self::$id ] = array(
      'title' => __( 'General' , 'default' ),
      'menu' => self::$menu,
      'controller' => 'admin_general',
      'use_advance' => true,
      'document_url' => self::get_document_url( 'document/admin-general/' ),
    );

    return $setting_screens;

  }

  public static function mywp_current_setting_screen_content() {

    $setting_data = self::get_setting_data();

    $fields = array(
      'core' => __( 'WordPress core updates' , 'my-wp' ),
      'plugins' => __( 'Plugin updates' , 'my-wp' ),
      'themes' => __( 'Theme updates' , 'my-wp' ),
      'translations' => __( 'Translation updates' , 'my-wp' ),
    );

    ?>
    <h3 class="mywp-setting-screen-subtitle">
      <?php echo esc_html( __( 'Notifications' , 'my-wp' ) ); ?>
    </h3>

    <table class="form-table">
      <tbody>
        <?php foreach( $fields as $field_name => $field_label ) : ?>
          <tr>
            <th><?php echo esc_html( $field_label ); ?></th>
            <td>
              <label>
                <input type="checkbox" name="mywp[data][hide_update_notice][<?php echo esc_attr( $field_name ); ?>]" class="hide_update_notice_<?php echo esc_attr( $field_name ); ?>" value="1" <?php checked( $setting_data['hide_update_notice'][$field_name] , true ); ?> />
                <?php echo esc_html( __( 'Hide notifications' , 'my-wp' ) ); ?>
              </label>
            </td>
          </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
    <p>&nbsp;</p>
    <?php

  }

  public static function mywp_setting_screen_content_20() {

    $setting_data = self::get_setting_data();

    $fields = array(
      'options' => __( 'Screen Options' , 'default' ),
      'help' => __( 'Help' , 'my-wp' ),
    );

    ?>
    <h3 class="mywp-setting-screen-subtitle">
      <?php echo esc_html( __( 'Screen Options and Help Tab' , 'my-wp' ) ); ?>
    </h3>

    <table class="form-table">
      <tbody>
        <?php foreach( $fields as $field_name => $field_label ) : ?>
          <tr>
            <th><?php echo esc_html( $field_label ); ?></th>
            <td>
              <label>
                <input type="checkbox" name="mywp[data][hide_screen_tabs][<?php echo esc_attr( $field_name ); ?>]" class="hide_screen_tabs_<?php echo esc_attr( $field_name ); ?>" value="1" <?php checked( $setting_data['hide_screen_tabs'][$field_name] , true ); ?> />
                <?php echo esc_html( __( 'Hide' , 'default' ) ); ?>
              </label>
            </td>
          </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
    <p>&nbsp;</p>
    <?php

  }

  public static function mywp_setting_screen_content_30() {

    $setting_data = self::get_setting_data();

    $fields = array(
      'left' => array(
        'label' => __( 'Left' , 'my-wp' ),
        'code' => sprintf( __( 'Thank you for creating with <a href="%s">WordPress</a>.' , 'default' ), __( 'https://wordpress.org/' , 'default' ) ),
      ),
      'right' => array(
        'label' => __( 'Right' , 'my-wp' ),
        'code' => core_update_footer(),
      ),
    );

    ?>
    <h3 class="mywp-setting-screen-subtitle">
      <?php echo esc_html( __( 'Footer Text' , 'my-wp' ) ); ?>
    </h3>

    <table class="form-table">
      <tbody>
        <?php foreach( $fields as $field_name => $field_label ) : ?>
          <tr>
            <th><?php echo esc_html( $field_label['label'] ); ?></th>
            <td>
              <label>
                <input type="checkbox" name="mywp[data][hide_footer_text][<?php echo esc_attr( $field_name ); ?>]" class="hide_footer_text_<?php echo esc_attr( $field_name ); ?>" value="1" <?php checked( $setting_data['hide_footer_text'][$field_name] , true ); ?> />
                <?php echo esc_html( __( 'Hide' , 'default' ) ); ?>
              </label>
              <code><?php echo esc_html( $field_label['code'] ); ?></code>
            </td>
          </tr>
        <?php endforeach; ?>
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
          <th><?php echo esc_html( __( 'Custom Footer Text' , 'my-wp' ) ); ?></th>
          <td>
            <?php wp_editor( $setting_data['custom_footer_text'] , 'custom_footer_text' , array( 'textarea_name' => 'mywp[data][custom_footer_text]' , 'textarea_rows' => 5 ) ); ?>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Remove "WordPress" from title tag' , 'my-wp' ) ); ?></th>
          <td>
            <label>
              <input type="checkbox" name="mywp[data][hide_core_title_tag]" class="hide_core_title_tag" value="1" <?php checked( $setting_data['hide_core_title_tag'] , true ); ?> />
              <?php echo esc_html( __( 'Remove' , 'default' ) ); ?>
            </label>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Include your CSS file' , 'my-wp' ) ); ?></th>
          <td>
            <input type="text" name="mywp[data][include_css_file]" class="include_css_file large-text" value="<?php echo esc_attr( $setting_data['include_css_file'] ); ?>" placeholder="<?php echo esc_attr( 'https://example.com/admin.css' ); ?>" />
            <p class="mywp-description">
              <span class="dashicons dashicons-lightbulb"></span>
              <?php echo esc_html( __( 'You can use a shortcode.' , 'my-wp' ) ); ?>
              <a href="<?php echo esc_url( $plugin_info['document_category_url'] . 'shortcode/' ); ?>" class="button" target="_blank">
                <span class="dashicons dashicons-external"></span>
                <?php echo esc_html( __( 'More shortcodes' , 'my-wp' ) ); ?>
              </a>
            </p>
            <p>
              <code>[mywp_theme field="url"]/admin.css</code> <?php echo esc_html( '=>' ); ?> <code><?php echo do_shortcode( '[mywp_theme field="url"]' ); ?>/admin.css</code>
            </p>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Include your JS file' , 'my-wp' ) ); ?></th>
          <td>
            <input type="text" name="mywp[data][include_js_file]" class="include_js_file large-text" value="<?php echo esc_attr( $setting_data['include_js_file'] ); ?>" placeholder="<?php echo esc_attr( 'https://example.com/admin.js' ); ?>" />
            <p class="mywp-description">
              <span class="dashicons dashicons-lightbulb"></span>
              <?php echo esc_html( __( 'You can use a shortcode.' , 'my-wp' ) ); ?>
              <a href="<?php echo esc_url( $plugin_info['document_category_url'] . 'shortcode/' ); ?>" class="button" target="_blank">
                <span class="dashicons dashicons-external"></span>
                <?php echo esc_html( __( 'More shortcodes' , 'my-wp' ) ); ?>
              </a>
            </p>
            <p>
              <code>[mywp_theme field="url"]/admin.js</code> <?php echo esc_html( '=>' ); ?> <code><?php echo do_shortcode( '[mywp_theme field="url"]' ); ?>/admin.js</code>
            </p>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Input CSS' , 'my-wp' ) ); ?></th>
          <td>
            <textarea type="text" name="mywp[data][input_css]" class="input_css large-text" placeholder="<?php echo esc_attr( 'body.wp-admin{ background-color: #000; }' ); ?>"><?php echo esc_textarea( $setting_data['input_css'] ); ?></textarea>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Max Post Revision' , 'my-wp' ) ); ?></th>
          <td>
            <label>
              <input type="text" name="mywp[data][max_post_revision]" class="max_post_revision small-text" value="<?php echo esc_attr( $setting_data['max_post_revision'] ); ?>" placeholder="-1" />
            </label>
            <p class="mywp-description">
              <span class="dashicons dashicons-warning"></span>
              <?php echo esc_html( sprintf( __( '%s is infinite stored.' , 'my-wp' ) , '-1' ) ); ?>
            </p>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Not use Admin Screen' , 'my-wp' ) ); ?></th>
          <td>
            <label>
              <input type="checkbox" name="mywp[data][not_use_admin]" class="not_use_admin" value="1" <?php checked( $setting_data['not_use_admin'] , true ); ?> />
              <?php echo esc_html( __( 'Not use' , 'my-wp' ) ); ?>
            </label>
            <p class="mywp-desc-caution">
              <span class="dashicons dashicons-warning"></span>
              <?php echo esc_html( __( 'This feature is Locked out.' , 'my-wp' ) ); ?>
            </p>
          </td>
        </tr>
      </tbody>
    </table>
    <p>&nbsp;</p>
    <?php

  }

  public static function mywp_current_admin_print_footer_scripts() {

    ?>
    <style>
    .input_css {
      height: 300px;
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

    if( ! empty( $formatted_data['hide_update_notice']['core'] ) ) {

      $new_formatted_data['hide_update_notice']['core'] = true;

    }

    if( ! empty( $formatted_data['hide_update_notice']['plugins'] ) ) {

      $new_formatted_data['hide_update_notice']['plugins'] = true;

    }

    if( ! empty( $formatted_data['hide_update_notice']['themes'] ) ) {

      $new_formatted_data['hide_update_notice']['themes'] = true;

    }

    if( ! empty( $formatted_data['hide_update_notice']['translations'] ) ) {

      $new_formatted_data['hide_update_notice']['translations'] = true;

    }

    if( ! empty( $formatted_data['hide_screen_tabs']['options'] ) ) {

      $new_formatted_data['hide_screen_tabs']['options'] = true;

    }

    if( ! empty( $formatted_data['hide_screen_tabs']['help'] ) ) {

      $new_formatted_data['hide_screen_tabs']['help'] = true;

    }

    if( ! empty( $formatted_data['hide_footer_text']['left'] ) ) {

      $new_formatted_data['hide_footer_text']['left'] = true;

    }

    if( ! empty( $formatted_data['hide_footer_text']['right'] ) ) {

      $new_formatted_data['hide_footer_text']['right'] = true;

    }

    if( ! empty( $formatted_data['custom_footer_text'] ) ) {

      $new_formatted_data['custom_footer_text'] = wp_kses_post( $formatted_data['custom_footer_text'] );

    }

    if( ! empty( $formatted_data['hide_core_title_tag'] ) ) {

      $new_formatted_data['hide_core_title_tag'] = true;

    }

    if( ! empty( $formatted_data['include_css_file'] ) ) {

      $new_formatted_data['include_css_file'] = MywpHelper::sanitize_text( $formatted_data['include_css_file'] );

    }

    if( ! empty( $formatted_data['include_js_file'] ) ) {

      $new_formatted_data['include_js_file'] = MywpHelper::sanitize_text( $formatted_data['include_js_file'] );

    }

    if( ! empty( $formatted_data['input_css'] ) ) {

      $new_formatted_data['input_css'] = wp_kses_post( $formatted_data['input_css'] );

    }

    if( isset( $formatted_data['max_post_revision'] ) ) {

      if( $formatted_data['max_post_revision'] !== '' ) {

        $new_formatted_data['max_post_revision'] = MywpHelper::sanitize_number( $formatted_data['max_post_revision'] );

      }

    }

    if( ! empty( $formatted_data['not_use_admin'] ) ) {

      $new_formatted_data['not_use_admin'] = true;

    }

    return $new_formatted_data;

  }

}

MywpSettingScreenAdminGeneral::init();

endif;
