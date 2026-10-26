<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpShortcodeAbstractModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpShortcodeModuleToolbarItem' ) ) :

final class MywpShortcodeModuleToolbarItem extends MywpShortcodeAbstractModule {

  protected static $id = 'mywp_toolbar_item';

  public static function do_shortcode( $atts = false , $content = false , $tag = false ) {

    $called_text = sprintf( '%s::%s( $atts , $content , $tag )' , __CLASS__ , __FUNCTION__ );

    $item = false;

    if( ! empty( $atts['item'] ) ) {

      $item = MywpHelper::sanitize_text( $atts['item'] );

    }

    if( empty( $item ) ) {

      return $content;

    }

    ob_start();

    ?>

    <?php if( $item === 'search' ) : ?>

      <form action="<?php echo esc_url( home_url( '/' ) ); ?>" method="get" id="adminbarsearch">

        <input class="adminbar-input" name="s" id="adminbar-search" type="text" value="" maxlength="150" />

        <label for="adminbar-search" class="screen-reader-text"><?php echo esc_html( __( 'Search' , 'default' ) ); ?></label>

        <input type="submit" class="adminbar-button" value="<?php echo esc_attr( __( 'Search' , 'default' ) ); ?>"/>

      </form>

    <?php endif; ?>

    <?php

    $content = ob_get_contents();

    ob_end_clean();

    $content = apply_filters( 'mywp_shortcode_toolbar_item' , $content , $atts );

    return $content;

  }

}

MywpShortcodeModuleToolbarItem::init();

endif;
