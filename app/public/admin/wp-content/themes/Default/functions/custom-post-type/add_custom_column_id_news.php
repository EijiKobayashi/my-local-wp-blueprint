<?php
// カテゴリー
add_action('manage_news_posts_custom_column', 'add_custom_column_id_news_category', 10, 2);
function add_custom_column_news_category( $defaults ) {
  $defaults['news_category'] = 'カテゴリー';
  return $defaults;
}
add_filter('manage_news_posts_columns', 'add_custom_column_news_category');
function add_custom_column_id_news_category($column_name, $id) {
  if( $column_name == 'news_category' ) {
    echo get_the_term_list($id, 'news_category', '', ', ');
  }
}
add_action( 'restrict_manage_posts', 'add_post_taxonomy_restrict_filter_news_category' );
function add_post_taxonomy_restrict_filter_news_category() {
  global $post_type;
  if ( 'articles' == $post_type ) {
    ?>
    <select name="news_category">
      <option value="">カテゴリー指定なし</option>
      <?php
      $terms = get_terms('news_category');
      foreach ($terms as $term) { ?>
        <option value="<?php echo $term->slug; ?>"><?php echo $term->name; ?></option>
      <?php } ?>
    </select>
    <?php
  }
}
// タグ
add_action('manage_news_posts_custom_column', 'add_custom_column_id_news_tags', 10, 2);
function add_custom_column_news_tags( $defaults ) {
  $defaults['news_tags'] = 'タグ';
  return $defaults;
}
add_filter('manage_news_posts_columns', 'add_custom_column_news_tags');
function add_custom_column_id_news_tags($column_name, $id) {
  if( $column_name == 'news_tags' ) {
    echo get_the_term_list($id, 'news_tags', '', ', ');
  }
}
add_action( 'restrict_manage_posts', 'add_post_taxonomy_restrict_filter_news_tags' );
function add_post_taxonomy_restrict_filter_news_tags() {
  global $post_type;
  if ( 'articles' == $post_type ) {
    ?>
    <select name="news_tags">
      <option value="">タグ指定なし</option>
      <?php
      $terms = get_terms('news_tags');
      foreach ($terms as $term) { ?>
        <option value="<?php echo $term->slug; ?>"><?php echo $term->name; ?></option>
      <?php } ?>
    </select>
    <?php
  }
}
?>
