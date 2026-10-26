<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpAbstractSettingModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpSettingScreenDebugPostTypeStructure' ) ) :

final class MywpSettingScreenDebugPostTypeStructure extends MywpAbstractSettingModule {

  static protected $id = 'debug_post_type_structure';

  static protected $priority = 120;

  static private $menu = 'debug';

  public static function mywp_setting_screens( $setting_screens ) {

    $setting_screens[ self::$id ] = array(
      'title' => __( 'Post Type Structure' , 'my-wp' ),
      'menu' => self::$menu,
      'use_form' => false,
    );

    return $setting_screens;

  }

  public static function mywp_current_setting_screen_header() {

    printf( '<p>%s</p>' , esc_html( __( 'The structure of all custom fields used in the post type.' , 'my-wp' ) ) );

    MywpApi::include_file( MYWP_PLUGIN_PATH . 'views/elements/setting-screen-select-post-type.php' );

  }

  public static function mywp_current_setting_screen_content() {

    $called_text = sprintf( '%s::%s()' , __CLASS__ , __FUNCTION__ );

    $current_setting_post_type_id = MywpSettingPostType::get_current_post_type_id();
    $current_setting_post_type = MywpSettingPostType::get_current_post_type();

    if( empty( $current_setting_post_type ) ) {

      MywpHelper::error_not_found_message( '$current_setting_post_type' , $called_text );

      echo esc_html( sprintf( __( '%1$s: %2$s is not found.' , 'my-wp' ) , __( 'Invalid Post Type' , 'my-wp' ) , $current_setting_post_type_id ) );

      return false;

    }

    $args = array(
      'post_type' => $current_setting_post_type_id,
      'post_status' => 'any',
      'posts_per_page' => -1,
    );

    $posts = get_posts( $args );

    $post_ids = array();

    if( ! empty( $posts ) ) {

      foreach( $posts as $post ) {

        $post_ids[] = $post->ID;

      }

    }

    $post_type_structure = array();

    if( ! empty( $post_ids ) ) {

      foreach( $post_ids as $post_id ) {

        $post_custom = get_post_custom( $post_id );

        if( empty( $post_custom ) ) {

          continue;

        }

        foreach( $post_custom as $custom_field_key => $custom_field_value ) {

          if( isset( $post_type_structure[ $custom_field_key ] ) ) {

            continue;

          }

          if( isset( $custom_field_value[1] ) ) {

            $post_type_structure[ $custom_field_key ] = 'array';

          } else {

            $post_type_structure[ $custom_field_key ] = 'string';

          }

        }

      }

    }

    if( empty( $post_type_structure ) ) {

      MywpHelper::error_not_found_message( '$post_type_structure' , $called_text );

      return false;

    }

    ksort( $post_type_structure );

    ?>
    <h3 class="mywp-setting-screen-subtitle">
      <?php echo esc_html( __( 'Custom Fields' , 'default' ) ); ?>
    </h3>

    <p><?php echo esc_html( __( 'Count' , 'my-wp' ) ); ?>: <?php echo count( $post_type_structure ); ?></p>

    <table class="form-table">
      <tbody>

        <?php foreach( $post_type_structure as $custom_field_key => $structure ) : ?>

          <tr>
            <th><?php echo esc_html( $custom_field_key ); ?></th>
            <td><?php echo esc_html( $structure ); ?></td>
          </tr>

        <?php endforeach; ?>

      </tbody>
    </table>
    <p>&nbsp;</p>
    <?php

  }

}

MywpSettingScreenDebugPostTypeStructure::init();

endif;
