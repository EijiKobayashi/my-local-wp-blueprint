<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpAbstractSettingModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpSettingScreenSiteSitemap' ) ) :

final class MywpSettingScreenSiteSitemap extends MywpAbstractSettingModule {

  static protected $id = 'site_sitemap';

  static protected $priority = 110;

  static private $menu = 'site';

  public static function mywp_setting_screens( $setting_screens ) {

    if( ! class_exists( 'WP_Sitemaps' ) ) {

      return $setting_screens;

    }

    $setting_screens[ self::$id ] = array(
      'title' => __( 'sitemap.xml' , 'my-wp' ),
      'menu' => self::$menu,
      'controller' => 'site_sitemap',
    );

    return $setting_screens;

  }

  public static function mywp_current_setting_screen_content() {

    if( ! class_exists( 'WP_Sitemaps' ) ) {

      return false;

    }

    $setting_data = self::get_setting_data();

    $WP_Sitemaps = new WP_Sitemaps();

    $WP_Sitemaps_Index = new WP_Sitemaps_Index( new WP_Sitemaps_Registry() );

    $args = array( 'public' => true );

    $post_types = get_post_types( $args , 'objects' );

    if( isset( $post_types['attachment'] ) ) {

      unset( $post_types['attachment'] );

    }

    $post_types = array_filter( $post_types , 'is_post_type_viewable' );

    $args = array(
      'public' => true,
    );

    $taxonomies = get_taxonomies( $args , 'objects' );

    $taxonomies = array_filter( $taxonomies , 'is_taxonomy_viewable' );

    ?>
    <h3 class="mywp-setting-screen-subtitle">
      <?php echo esc_html( __( 'Sitemap status' , 'my-wp' ) ); ?>
    </h3>

    <p>
      <a href="<?php echo esc_url( $WP_Sitemaps_Index->get_index_url() ); ?>" target="_blank" class="button button-secondary"><span class="dashicons dashicons-external"></span> sitemap.xml</a>
    </p>

    <table class="form-table">
      <tbody>
        <tr>
          <th><?php echo esc_html( __( 'Status of WordPress CORE sitemap.xml' , 'my-wp' ) ); ?></th>
          <td>
            <?php if( $WP_Sitemaps->sitemaps_enabled() ) : ?>

              <?php echo esc_html( __( 'Enabled' , 'default' ) ); ?>

            <?php else : ?>

              <?php echo esc_html( __( 'Disabled' , 'default' ) ); ?>

            <?php endif; ?>
          </td>
        </tr>
      </tbody>
    </table>

    <p>&nbsp;</p>

    <h3 class="mywp-setting-screen-subtitle">
      <?php echo esc_html( __( 'General' , 'my-wp' ) ); ?>
    </h3>

    <table class="form-table">
      <tbody>
        <tr>
          <th><?php echo esc_html( __( 'Hide generate WordPress CORE sitemap.xml' , 'my-wp' ) ); ?></th>
          <td>
            <label>
              <input type="checkbox" name="mywp[data][hide_sitemap]" class="hide_sitemap" value="1" <?php checked( $setting_data['hide_sitemap'] , true ); ?> />
              <?php echo esc_html( __( 'Deactivate' , 'default' ) ); ?>
            </label>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Hide users sitemap' , 'my-wp' ) ); ?></th>
          <td>
            <label>
              <input type="checkbox" name="mywp[data][hide_users]" class="hide_users" value="1" <?php checked( $setting_data['hide_users'] , true ); ?> />
              <?php echo esc_html( __( 'Hide' , 'my-wp' ) ); ?>
            </label>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Hide post types sitemap' , 'my-wp' ) ); ?></th>
          <td>
            <select name="mywp[data][hide_post_type][]" multiple="multiple">

              <?php if( ! empty( $post_types ) ) : ?>

                <?php foreach( $post_types as $post_type => $post_type_object ) : ?>

                  <?php $selected = false; ?>

                  <?php if( ! empty( $setting_data['hide_post_type'][ $post_type ] ) ) : ?>

                    <?php $selected = true; ?>

                  <?php endif; ?>

                  <option value="<?php echo esc_attr( $post_type ); ?>" <?php selected( $selected , true ); ?>>
                    [<?php echo esc_html( $post_type ); ?>]
                    <?php echo esc_html( $post_type_object->label ); ?>
                  </option>

                <?php endforeach; ?>

              <?php endif; ?>
          </td>
        </tr>
        <tr>
          <th><?php echo esc_html( __( 'Hide taxonomies sitemap' , 'my-wp' ) ); ?></th>
          <td>
            <select name="mywp[data][hide_taxonomy][]" multiple="multiple">

              <?php if( ! empty( $taxonomies ) ) : ?>

                <?php foreach( $taxonomies as $taxonomy => $taxonomy_object ) : ?>

                  <?php $selected = false; ?>

                  <?php if( ! empty( $setting_data['hide_taxonomy'][ $taxonomy ] ) ) : ?>

                    <?php $selected = true; ?>

                  <?php endif; ?>

                  <option value="<?php echo esc_attr( $taxonomy ); ?>" <?php selected( $selected , true ); ?>>
                    [<?php echo esc_html( $taxonomy ); ?>]
                    <?php echo esc_html( $taxonomy_object->label ); ?>
                  </option>

                <?php endforeach; ?>

              <?php endif; ?>
          </td>
        </tr>
      </tbody>
    </table>
    <p>&nbsp;</p>
    <?php

  }

  public static function mywp_current_setting_post_data_format_update( $formatted_data ) {

    $mywp_model = self::get_model();

    if( empty( $mywp_model ) ) {

      return $formatted_data;

    }

    $new_formatted_data = $mywp_model->get_initial_data();

    $new_formatted_data['advance'] = $formatted_data['advance'];

    if( ! empty( $formatted_data['hide_sitemap'] ) ) {

      $new_formatted_data['hide_sitemap'] = true;

    }

    if( ! empty( $formatted_data['hide_users'] ) ) {

      $new_formatted_data['hide_users'] = true;

    }

    if( ! empty( $formatted_data['hide_post_type'] ) ) {

      foreach( $formatted_data['hide_post_type'] as $post_type ) {

        $post_type = MywpHelper::sanitize_text( $post_type );

        $new_formatted_data['hide_post_type'][ $post_type ] = true;

      }

    }

    if( ! empty( $formatted_data['hide_taxonomy'] ) ) {

      foreach( $formatted_data['hide_taxonomy'] as $taxonomy ) {

        $taxonomy = MywpHelper::sanitize_text( $taxonomy );

        $new_formatted_data['hide_taxonomy'][ $taxonomy ] = true;

      }

    }

    return $new_formatted_data;

  }

}

MywpSettingScreenSiteSitemap::init();

endif;
