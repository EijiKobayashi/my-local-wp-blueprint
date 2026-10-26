<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpAbstractSettingModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpSettingScreenDebugTerms' ) ) :

final class MywpSettingScreenDebugTerms extends MywpAbstractSettingModule {

  static protected $id = 'debug_terms';

  static protected $priority = 40;

  static private $menu = 'debug';

  public static function mywp_setting_screens( $setting_screens ) {

    $setting_screens[ self::$id ] = array(
      'title' => __( 'All Terms' , 'my-wp' ),
      'menu' => self::$menu,
      'use_form' => false,
    );

    return $setting_screens;

  }

  public static function mywp_current_setting_screen_content() {

    $called_text = sprintf( '%s::%s()' , __CLASS__ , __FUNCTION__ );

    $all_taxonomies = MywpApi::get_all_taxonomies();

    if( empty( $all_taxonomies ) ) {

      MywpHelper::error_not_found_message( '$all_taxonomies' , $called_text );

      return false;

    }

    $all_terms = array();

    $args = array(
      'hide_empty' => false,
    );

    foreach( $all_taxonomies as $taxonomy ) {

      $terms = get_terms( $taxonomy->name , $args );

      if( empty( $terms ) ) {

        continue;

      }

      if( is_wp_error( $terms ) ) {

        MywpHelper::error_returned_message( '$terms' , $terms->get_error_message() , $called_text );

        continue;

      }

      foreach( $terms as $term ) {

        $all_terms[] = $term;

      }

    }

    if( empty( $all_terms ) ) {

      MywpHelper::error_not_found_message( '$all_terms' , $called_text );

      return false;

    }

    ?>
    <p><?php echo esc_html( __( 'Count' , 'my-wp' ) ); ?>: <?php echo count( $all_terms ); ?></p>
    <table class="form-table">
      <tbody>

        <?php foreach( $all_terms as $term ) : ?>

          <tr>
            <th>
              [<?php echo esc_html( $term->slug ); ?>]
              <?php echo esc_html( $term->name ); ?><br />
              <a href="<?php echo esc_url( add_query_arg( array( 'taxonomy' => $term->taxonomy , 'tag_ID' => $term->term_id ) , admin_url( 'term.php' ) ) ); ?>"><?php echo esc_html( __( 'Edit' , 'default' ) ); ?></a>
            </th>
            <td>
              <textarea readonly="readonly" class="large-text" style="height: 400px;"><?php echo esc_textarea( print_r( $term , true ) ); ?></textarea>
            </td>
          </tr>

        <?php endforeach; ?>

      </tbody>
    </table>
    <p>&nbsp;</p>
    <?php

  }

}

MywpSettingScreenDebugTerms::init();

endif;
