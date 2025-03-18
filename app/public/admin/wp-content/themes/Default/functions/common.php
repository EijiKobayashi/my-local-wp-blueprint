<?php

// ヘッダーメタ削除
remove_action('wp_head', 'wlwmanifest_link');
remove_action('wp_head', 'rsd_link');
remove_action('wp_head', 'wp_generator');
remove_action('wp_head', 'print_emoji_detection_script', 7);
remove_action('wp_print_styles', 'print_emoji_styles', 10);

// フィードリンク削除
remove_action('wp_head', 'feed_links', 2);
remove_action('wp_head', 'feed_links_extra', 3);

// 固定ページに拡張子 .html 付与
/*
function custom_page()
{
  global $wp_rewrite;
  $wp_rewrite->page_structure = $wp_rewrite->root . '%pagename%.html';
  $wp_rewrite->use_trailing_slashes = false;
}
add_action('init', 'custom_page');
*/

// カテゴリー、タグ機能を無効化
function remove_post_function() {
  unregister_taxonomy_for_object_type('category', 'post');
  unregister_taxonomy_for_object_type('post_tag', 'post');
}
add_action('init', 'remove_post_function');

// 省略時設定
function new_excerpt_more($more) {
  return '...';
}
add_filter('excerpt_more', 'new_excerpt_more');

// アイキャッチ有効化
add_theme_support('post-thumbnails');

// THUMBNAIL / TRIMMING
// add_image_size('mainvisual', 960, 540, true);      // MAIN VISUAL
// add_image_size('list', 640, 360, true);            // LIST
// add_image_size('list_small', 320, 180, true);      // LIST Small
// add_image_size('square', 600, 600, true);          // SQUARE
// add_image_size('square_small', 300, 300, true);    // SQUARE Small
// add_image_size('gallery', 1920, 1080, true);       // GALLERY

// 階層の深いタームオブジェクトを返す関数
/*function get_deepest_term($terms, $mytaxonomy, $myterm = null) {
  global $post;
  if ($myterm) {
    //$myterm が指定されていれば値からタームオブジェクトを生成
    $my_pref_term =  get_term_by('name', $myterm, $mytaxonomy);
    //タームオブジェクトが取得できて且つそのタームが現在の投稿に属していれば
    if ($my_pref_term && is_object_in_term($post->ID, $mytaxonomy, $my_pref_term->term_id)) {
      //優先的にそのタームを返す
      return $deepest =  $my_pref_term;
    }
  }
  //配列の要素が１つの場合その要素を最も深いタームとする
  if (count($terms) == 1) {
    $deepest = $terms[key($terms)];
  } else {
    $deepest = $terms[key($terms)];
    //祖先オブジェクトの最大数の初期化
    $max = 0;
    //それぞれのタームについて調査
    for ($i = 0; $i < count($terms); $i++) {
      //上の階層から順番に取得した祖先オブジェクトの ID の配列
      $ancestors = array_reverse(get_ancestors($terms[$i]->term_id, $terms[$i]->taxonomy));
      //祖先オブジェクトの数
      $ancestors_count = count($ancestors);
      //祖先オブジェクトの数を比較して最大数より大きければ
      if ($ancestors_count > $max) {
        //祖先オブジェクトの最大数を更新
        $max = $ancestors_count;
        //その要素を最も深いタームとする
        $deepest = $terms[$i];
      }
    }
  }
  return $deepest;
}*/

// CLASS追加 for IMG
function image_class_filter($class) {
  return $class . ' is-responsive-image';
}
add_filter('get_image_tag_class', 'image_class_filter');

// CLASS追加 for previous_post_link() & next_post_link()
/*function add_prev_post_link_class($output) {
  return str_replace('<a href=', '<a class="nav-links__prev nav-links__a" href=', $output);
}
add_filter('previous_post_link', 'add_prev_post_link_class');
function add_next_post_link_class($output) {
  return str_replace('<a href=', '<a class="nav-links__next nav-links__a" href=', $output);
}
add_filter('next_post_link', 'add_next_post_link_class');*/

// デフォルトjQueryを削除
function delete_jquery() {
  if (!is_admin()) {
    wp_enqueue_scripts('jquery');
  }
}
add_action('init', 'delete_jquery');

// SVG, webpアップロード
function add_file_types_to_uploads($file_types) {
  $new_filetypes = array();
  $new_filetypes['svg'] = 'image/svg+xml';
  $new_filetypes['webp'] = 'image/webp';
  $file_types = array_merge($file_types, $new_filetypes);
  return $file_types;
}
add_action('upload_mimes', 'add_file_types_to_uploads');

// SVG, webp表示
add_filter('manage_media_columns', function ($columns) {
  echo '<style>
      .media-icon img[src$=".svg"],
      .media-icon img[src$=".webp"] { width: 100%; }
  </style>';
  return $columns;
});

// 自動整形の無効化
/*
function disabled_wpautop($content)
{
  global $post;
  $post_type = get_post_type($post->ID);
  $arr_types = array('others');
  if (in_array($post_type, $arr_types)) {
    remove_filter('the_content', 'wpautop');
    remove_filter('the_excerpt', 'wpautop');
  }
  return $content;
}
add_filter('the_content', 'disabled_wpautop', 1);
*/

// 記事IDを指定して抜粋を取得
/*function my_get_the_excerpt($post_id = null, $num_words = 55) {
  $post = $post_id ? get_post($post_id) : get_post(get_the_ID());
  $text = get_the_excerpt($post);
  if (!$text) {
    $text = get_post_field('post_content', $post);
  }
  $generated_excerpt = wp_trim_words($text, $num_words);
  return apply_filters('get_the_excerpt', $generated_excerpt, $post);
}*/

// 自動補完リダイレクト無効
function disable_redirect_canonical($redirect_url) {
  if (is_404()) {
    return false;
  }
  return $redirect_url;
}
add_filter('redirect_canonical', 'disable_redirect_canonical');

// Get_terms() 特定の投稿タイプのみcountの対象にする
/*function get_terms_clauses($clauses, $taxonomy, $args) {
  if (!empty($args['post_type'])) {
    global $wpdb;
    $post_types = array();
    if ($args['post_type']) {
      foreach ($args['post_type'] as $cpt) {
        $post_types[] = "'" . $cpt . "'";
      }
    }
    if (!empty($post_types)) {
      $clauses['fields'] = 'DISTINCT ' . str_replace('tt.*', 'tt.term_taxonomy_id, tt.term_id, tt.taxonomy, tt.description, tt.parent', $clauses['fields']) . ', COUNT(t.term_id) AS count';
      $clauses['join'] .= ' INNER JOIN ' . $wpdb->term_relationships . ' AS r ON r.term_taxonomy_id = tt.term_taxonomy_id INNER JOIN ' . $wpdb->posts . ' AS p ON p.ID = r.object_id';
      $clauses['where'] .= ' AND p.post_status = "publish" AND p.post_type IN (' . implode(',', $post_types) . ')';
      $clauses['orderby'] = 'GROUP BY t.term_id ' . $clauses['orderby'];
    }
  }
  return $clauses;
}
add_filter('terms_clauses', 'get_terms_clauses', 10, 3);*/

// iframeの遅延読み込みを無効
function disable_post_content_iframe_lazy_loading($default, $tag_name, $context) {
  if ('iframe' === $tag_name && 'the_content' === $context) {
    return false;
  }
  return $default;
}
add_filter('wp_lazy_loading_enabled', 'disable_post_content_iframe_lazy_loading', 10, 3);
