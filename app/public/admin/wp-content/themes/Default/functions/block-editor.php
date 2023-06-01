<?php
// カスタムカラーピッカーを無効
add_theme_support('disable-custom-colors');

// 使わないブロックを登録する
add_action('enqueue_block_editor_assets', function () {
  wp_enqueue_script('remove-block', get_template_directory_uri() . '/js/remove-block.js', array(), false, true);
});

// WordPressのブロックパターンを削除する
add_filter('should_load_remote_block_patterns', function () {
  return false;
});
function my_unregister_block_pattern()
{
  $patterns = [
    'core/query-grid-posts',
    'core/social-links-shared-background-color',
  ];
  foreach ($patterns as $pattern) {
    unregister_block_pattern($pattern);
  }
}
add_action('init', 'my_unregister_block_pattern');

// WordPressのブロックパターンカテゴリを削除する

function my_unregister_block_pattern_category()
{
  $categories = [
    'buttons',
    'columns',
    'gallery',
    'header',
    'text',
    'query',
    'footer',
  ];
  foreach ($categories as $category) {
    unregister_block_pattern_category($category);
  }
}
add_action('init', 'my_unregister_block_pattern_category');
