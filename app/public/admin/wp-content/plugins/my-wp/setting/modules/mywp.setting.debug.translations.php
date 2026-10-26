<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpAbstractSettingModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpSettingScreenDebugTranslations' ) ) :

final class MywpSettingScreenDebugTranslations extends MywpAbstractSettingModule {

  static protected $id = 'debug_translations';

  static protected $priority = 60;

  static private $menu = 'debug';

  static private $mofiles = array();

  protected static function after_init() {

    $id = 'network_' . self::$id;

    add_action( "mywp_setting_screen_content_{$id}" , array( __CLASS__ , 'mywp_current_setting_screen_content' ) );

    add_action( 'mywp_setup_theme' , array( __CLASS__ , 'mywp_setup_theme' ) );

  }

  public static function mywp_setup_theme() {

    add_filter( 'load_textdomain_mofile' , array( __CLASS__ , 'load_textdomain_mofile' ) , 10 , 2 );

  }

  public static function load_textdomain_mofile( $mofile , $domain ) {

    self::$mofiles[ $domain ] = $mofile;

    return $mofile;

  }

  public static function mywp_setting_screens( $setting_screens ) {

    $setting_screens[ self::$id ] = array(
      'title' => __( 'All Translations' , 'my-wp' ),
      'menu' => self::$menu,
      'use_form' => false,
    );

    if( is_multisite() ) {

      $setting_screens[ 'network_' . self::$id ] = array(
        'title' => __( 'All Translations' , 'my-wp' ),
        'menu' => 'network_' . self::$menu,
        'use_form' => false,
      );

    }

    return $setting_screens;

  }

  private static function get_translations() {

    global $l10n;

    $translations = array();

    if( ! empty( $l10n ) ) {

      $translations = $l10n;

    }

    return $translations;

  }

  public static function mywp_current_setting_screen_content() {

    $called_text = sprintf( '%s::%s()' , __CLASS__ , __FUNCTION__ );

    $all_translations = self::get_translations();

    if( empty( $all_translations ) ) {

      MywpHelper::error_not_found_message( '$all_translations' , $called_text );

      return false;

    }

    ?>
    <p><?php echo esc_html( __( 'Count' , 'my-wp' ) ); ?>: <?php echo count( $all_translations ); ?></p>
    <table class="form-table">
      <tbody>

        <?php foreach( $all_translations as $translation_domain => $translation_object ) : ?>

          <tr>
            <th>
              <?php echo esc_html( $translation_domain ); ?><br />
            </th>
            <td>
              <?php if( $translation_object instanceof MO ) : ?>

                <p><code><?php echo esc_html( $translation_object->get_filename() ); ?></code></p>

              <?php elseif( ! empty( self::$mofiles[ $translation_domain ] ) ) : ?>

                <p><code><?php echo esc_html( self::$mofiles[ $translation_domain ] ); ?></code></p>

              <?php else : ?>

                <p><?php echo esc_html( __( 'Unknown translation file.' , 'my-wp' ) ); ?></p>

              <?php endif; ?>

              <textarea readonly="readonly" class="large-text" style="height: 400px;"><?php echo esc_textarea( print_r( $translation_object->entries ) ); ?></textarea>

            </td>
          </tr>

        <?php endforeach; ?>

      </tbody>
    </table>
    <p>&nbsp;</p>
    <?php

  }

}

MywpSettingScreenDebugTranslations::init();

endif;
