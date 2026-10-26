<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpSetting' ) ) {
  return false;
}

if( ! MywpApi::is_manager() ) {
  return false;
}

$current_meta_box_screen_id = MywpSettingMetaBox::get_current_meta_box_screen_id();

if( empty( $current_meta_box_screen_id ) ) {

  return false;

}

$current_meta_box_screen_url = MywpSettingMetaBox::get_current_meta_box_screen_url();

if( empty( $current_meta_box_screen_url ) ) {

  return false;

}

$current_meta_boxes = MywpSettingMetaBox::get_current_meta_boxes();

$current_meta_box_setting_data = MywpSettingMetaBox::get_current_meta_box_setting_data();

$is_use_block_editor = MywpSettingBlockEditor::get_is_use_block_editor();

if( $is_use_block_editor && ! empty( $current_meta_boxes ) ) {

  foreach( $current_meta_boxes as $meta_box_id => $meta_box ) {

    if( $is_use_block_editor && ! empty( $meta_box['args'] ) ) {

      if( ! empty( $meta_box['args']['__back_compat_meta_box'] ) ) {

        if( empty( $meta_box['args']['__block_editor_compatible_meta_box'] ) ) {

          unset( $current_meta_boxes[ $meta_box_id ] );

        }

      }

    }

  }

}

?>

<div id="setting-screen-management-meta-boxes">

  <p id="meta-box-screen-refresh">

    <a href="<?php echo esc_url( add_query_arg( array( 'mywp_refresh_metabox' => 1 ) , $current_meta_box_screen_url ) ); ?>" class="button button-secondary" id="meta-box-screen-refresh-button">
      <span class="dashicons dashicons-update"></span>
      <?php echo esc_html( __( 'Refresh meta boxes' , 'my-wp' ) ); ?>
    </a>

  </p>

  <?php if( empty( $current_meta_boxes ) ) : ?>

    <p class="">

      <?php echo esc_html( sprintf( __( '%s is not found.' , 'my-wp' ) , __( 'Meta boxes' , 'my-wp' ) ) ); ?>

    </p>

    <?php if( ! $is_use_block_editor ) : ?>

      <p class="mywp-error-message">

        <span class="dashicons dashicons-warning"></span>

        <?php echo esc_html( __( 'Please refresh the Columns.' , 'my-wp' ) ); ?>

      </p>

    <?php endif; ?>

  <?php else : ?>

    <p class="mywp-description">
      <span class="dashicons dashicons-lightbulb"></span>
      <?php echo esc_html( __( 'If you have problem after remove the meta box, please select the hide meta box.' , 'my-wp' ) ); ?>
    </p>

    <ul id="meta-box-bulk-actions">
      <li>
        <a href="javascript:void(0);" class="button button-secondary" id="meta-box-bulk-action-show">
          <?php echo esc_html( __( 'All Show' , 'my-wp' ) ); ?>
        </a>
      </li>
      <li>
        <a href="javascript:void(0);" class="button button-secondary" id="meta-box-bulk-action-remove">
          <?php echo esc_html( __( 'All Remove' , 'my-wp' ) ); ?>
        </a>
      </li>
      <li>
        <a href="javascript:void(0);" class="button button-secondary" id="meta-box-bulk-action-hide">
          <?php echo esc_html( __( 'All Hide' , 'my-wp' ) ); ?>
        </a>
      </li>
    </ul>

    <table class="form-table" id="meta-boxes-table">
      <thead>
        <tr>
          <th></th>
          <th><?php echo esc_html( __( 'Remove' , 'default' ) ); ?>/<?php echo esc_html( __( 'Hide' , 'default' ) ); ?></th>
          <th><?php echo esc_html( __( 'Update meta box title' , 'my-wp' ) ); ?></th>
        </tr>
      </thead>
      <tbody>

        <?php foreach( $current_meta_boxes as $meta_box_id => $meta_box ) : ?>

          <?php $action = false; ?>

          <?php if( ! empty( $current_meta_box_setting_data[ $meta_box_id ]['action'] ) ) : ?>

            <?php $action = $current_meta_box_setting_data[ $meta_box_id ]['action']; ?>

          <?php endif; ?>

          <?php $change_title = ''; ?>

          <?php if( ! empty( $current_meta_box_setting_data[ $meta_box_id ]['title'] ) ) : ?>

            <?php $change_title = $current_meta_box_setting_data[ $meta_box_id ]['title']; ?>

          <?php endif; ?>

          <tr class="meta-box-tr">
            <th><?php echo esc_html( $meta_box['title'] ); ?></th>
            <td>
              <select name="mywp[data][meta_boxes][<?php echo esc_attr( $meta_box_id ); ?>][action]" class="meta-box-action-select">
                <option value="" <?php selected( $action , '' ); ?>></option>
                <option value="remove" <?php selected( $action , 'remove' ); ?>>
                  <?php echo esc_html( __( 'Remove' , 'default' ) ); ?>
                </option>
                <option value="hide" <?php selected( $action , 'hide' ); ?>>
                  <?php echo esc_html( __( 'Hide' , 'default' ) ); ?>
                </option>
              </select>
            </td>
            <td>
              <input type="text" name="mywp[data][meta_boxes][<?php echo esc_attr( $meta_box_id ); ?>][title]" class="meta-box-change-title large-text" value="<?php echo esc_attr( $change_title ); ?>" placeholder="<?php echo esc_attr( $meta_box['title'] ); ?>" />
              <?php do_action( 'mywp_setting_admin_manage_meta_boxes_td' , $meta_box_id , $current_meta_box_screen_id ); ?>
            </td>
          </tr>

        <?php endforeach; ?>

      </tbody>
    </table>

  <?php endif; ?>

</div>
