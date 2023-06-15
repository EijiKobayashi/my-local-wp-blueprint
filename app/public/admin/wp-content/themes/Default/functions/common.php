<?php

// ヘッダーメタ削除
remove_action('wp_head', 'wlwmanifest_link');
remove_action('wp_head', 'rsd_link');
remove_action('wp_head', 'wp_generator');
remove_action('wp_head', 'index_rel_link');
remove_action('wp_head', 'start_post_rel_link', 10, 0);
remove_action('wp_head', 'parent_post_rel_link', 10, 0);
remove_action('wp_head', 'feed_links', 2);
remove_action('wp_head', 'feed_links_extra', 3);
remove_action('wp_head', 'adjacent_posts_rel_link_wp_head', 10);
remove_action('wp_head', 'print_emoji_detection_script', 7);
remove_action('wp_print_styles', 'print_emoji_styles', 10);

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

// 省略時設定
function new_excerpt_more($more) {
  return '...';
}
add_filter('excerpt_more', 'new_excerpt_more');

// メニュー機能有効化
add_theme_support('menus');
// wp_nav_menuのliにclassを追加
function classList_add_li($classes, $item, $args) {
  if (isset($args->add_li_class)) {
    $classes['class'] = $args->add_li_class;
  }
  // wp_nav_menuのcurrent liにclassを追加
  if (isset($args->add_li_current_class)) {
    $classes = str_replace('current-menu-item', $args->add_li_current_class, $classes);
  }
  $classes = preg_grep("/menu-item|\d/", $classes, PREG_GREP_INVERT);
  return $classes;
}
add_filter('nav_menu_css_class', 'classList_add_li', 1, 3);
// wp_nav_menuのaにclassを追加
function classList_add_a($classes, $item, $args) {
  if (isset($args->add_li_class)) {
    $classes['class'] = $args->add_a_class;
  }
  unset($classes['aria-current']);
  return $classes;
}
add_filter('nav_menu_link_attributes', 'classList_add_a', 1, 3);
// wp_nav_menuのsub-menuにclassを追加
function classList_add_submenu($classes, $args, $depth) {
  $count = count($args->add_submenu_class);
  if (isset($args->add_submenu_class)) {
    $childs = $args->add_submenu_class;
    $classes = array($childs[$depth]);
    $classes = isset($classes) ? $classes : 'empty';
  }
  $classes = preg_grep("/sub-menu|\d/", $classes, PREG_GREP_INVERT);
  return $classes;
}
add_filter('nav_menu_submenu_css_class', 'classList_add_submenu', 1, 3);
// wp_nav_menuのliから不要id削除
function wp_navtag_remove($var) {
  return is_array($var) ? array_intersect($var, array('current-menu-item')) : '';
}
//add_filter('nav_menu_css_class', 'wp_navtag_remove', 100, 1); // liのclassを強制的に全削除
add_filter('nav_menu_item_id', 'wp_navtag_remove', 100, 1); // liのidを強制的に削除
add_filter('page_css_class', 'wp_navtag_remove', 100, 1);

// アイキャッチ有効化
add_theme_support('post-thumbnails');

// BODY にタグ CLASS 付与
function add_slug_class_name($classes) {
  // if ( is_singular() ) {
  //   $page = get_post( get_the_ID() );
  //   $classes[] = $page->post_name;
  // }
  // if ( is_home() || is_front_page() ) {
  //   $classes[] = 'is-preload';
  // }
  if (in_array(get_post_type(), array('news')) | is_post_type_archive('news') | is_tax('news_category')) {
    $classes[] = 'news';
  }
  if (is_singular()) {
    $post_type = get_query_var('post_type');
    if (is_page()) {
      $post_type = 'page';
    }
    if ($post_type && is_post_type_hierarchical($post_type)) {
      global $post;
      $classes[] = esc_attr($post->post_name);
      if ($post->ancestors) {
        $root = $post->ancestors[count($post->ancestors) - 1];
        $root_post = get_post($root);
        $classes[] = esc_attr($root_post->post_name);
      }
    }
    $page = get_post(get_the_ID());
    $classes[] = $page->post_name;
  }
  return $classes;
}
add_filter('body_class', 'add_slug_class_name');
function remove_body_class($wp_classes, $extra_classes) {
  $wp_classes = preg_grep("/single-|page-|template|logged-in|\d/", $wp_classes, PREG_GREP_INVERT);
  return array_merge($wp_classes, (array) $extra_classes);
}
add_filter('body_class', 'remove_body_class', 10, 2);

// THUMBNAIL / TRIMMING
// add_image_size('mainvisual', 960, 540, true);      // MAIN VISUAL
// add_image_size('list', 640, 360, true);            // LIST
// add_image_size('list_small', 320, 180, true);      // LIST Small
// add_image_size('square', 600, 600, true);          // SQUARE
// add_image_size('square_small', 300, 300, true);    // SQUARE Small
// add_image_size('gallery', 1920, 1080, true);       // GALLERY

// 階層の深いタームオブジェクトを返す関数
function get_deepest_term($terms, $mytaxonomy, $myterm = null) {
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
}

// CLASS追加 for IMG
function image_class_filter($class) {
  return $class . ' img-responsive';
}
add_filter('get_image_tag_class', 'image_class_filter');

// CLASS追加 for previous_post_link() & next_post_link()
function add_prev_post_link_class($output) {
  return str_replace('<a href=', '<a class="nav-links__prev nav-links__a" href=', $output);
}
add_filter('previous_post_link', 'add_prev_post_link_class');
function add_next_post_link_class($output) {
  return str_replace('<a href=', '<a class="nav-links__next nav-links__a" href=', $output);
}
add_filter('next_post_link', 'add_next_post_link_class');

// ブロックエディタスタイル削除
function dequeue_plugins_style() {
  wp_dequeue_style('wp-block-library');
  wp_dequeue_style('core-block-supports');
}
add_action('wp_enqueue_scripts', 'dequeue_plugins_style', 9999);
function dequeue_global_style() {
  wp_dequeue_style('global-styles');
}
add_action('wp_enqueue_scripts', 'dequeue_global_style', 9999);

// フッタースタイル削除
add_action('wp_footer', 'dequeue_plugins_style');
add_action('wp_footer', 'dequeue_global_style');

// 不要 css 非表示
function dequeue_custom_style() {
  wp_dequeue_style('classic-theme-styles');
  wp_dequeue_style('fsb-flexible-spacer-style');
  wp_deregister_style('flexible-table-block', plugins_url('/build/style-index.css', __FILE__));
}
add_action('wp_enqueue_scripts', 'dequeue_custom_style', 9999);

// Yoast SEO コメント非表示
add_filter('wpseo_debug_markers', '__return_false');

// デフォルトjQueryを削除
function delete_jquery() {
  if (!is_admin()) {
    wp_enqueue_scripts('jquery');
  }
}
add_action('init', 'delete_jquery');

// 新規投稿画面にCSS読み込む
/*
function my_front_style()
{
  wp_enqueue_style('my_front_style', home_url() . '/assets/css/style.css');
}
add_action('admin_head-post.php', 'my_front_style');
function my_admin_style()
{
  wp_enqueue_style('my_admin_style', get_template_directory_uri() . '/css/admin-style.css');
}
add_action('admin_head-post.php', 'my_admin_style');
*/

// SVGアップロード
function add_file_types_to_uploads($file_types) {
  $new_filetypes = array();
  $new_filetypes['svg'] = 'image/svg+xml';
  $file_types = array_merge($file_types, $new_filetypes);
  return $file_types;
}
add_action('upload_mimes', 'add_file_types_to_uploads');

// SVG表示
add_filter('manage_media_columns', function ($columns) {
  echo '<style>.media-icon img[src$=".svg"]{width:100%;}</style>';
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

// 全角半角英語、片仮名平仮名検索
function zenkaku_hankaku_kensaku($where, $obj) {
  if ($obj->is_search) {
    $where = str_replace(".post_title", ".post_title COLLATE utf8_unicode_ci", $where);
    $where = str_replace(".post_content", ".post_content COLLATE utf8_unicode_ci", $where);
  }
  return $where;
}
add_filter('posts_where', 'zenkaku_hankaku_kensaku', 10, 2);

// 記事IDを指定して抜粋を取得
function my_get_the_excerpt($post_id = null, $num_words = 55) {
  $post = $post_id ? get_post($post_id) : get_post(get_the_ID());
  $text = get_the_excerpt($post);
  if (!$text) {
    $text = get_post_field('post_content', $post);
  }
  $generated_excerpt = wp_trim_words($text, $num_words);
  return apply_filters('get_the_excerpt', $generated_excerpt, $post);
}

// 自動補完リダイレクト無効
function disable_redirect_canonical($redirect_url) {
  if (is_404()) {
    return false;
  }
  return $redirect_url;
}
add_filter('redirect_canonical', 'disable_redirect_canonical');

// CSS Minifier (https://shimotsuki.wwwxyz.jp/20200930-650)
function minify_css($input) {
  if (trim($input) === "") return $input;
  $css = $input;
  $css_replaces = []; // 置換用の配列を生成
  $css_replaces['/@charset \"(utf|UTF)-8\";/'] = ''; // (1) @charsetの除去
  $css_replaces['/(\/\*!.*?\*\/|\"(?:(?!(?<!\\\)\").)*\"|\'(?:(?!(?<!\\\)\').)*\')|\/\*.*?\*\//s'] = '${1}'; // (2) コメントの除去
  $css_replaces['/(\/\*!.*?\*\/|\"(?:(?!(?<!\\\)\").)*\"|\'(?:(?!(?<!\\\)\').)*\')\s*|\s+/s'] = '${1} '; // (3) 1つ以上連続する空白文字列の置換
  $css_replaces['/(\/\*!.*?\*\/|\"(?:(?!(?<!\\\)\").)*\"|\'(?:(?!(?<!\\\)\').)*\')| ([!#$%&,.:;<=>?@^{|}~]) |([!#$&(,.:;<=>?@\[^{|}~]|\A) | ([$%&),;<=>?@\]^{|}~]|\z)/s'] = '${1}${2}${3}${4}'; // (4) 一部の演算記号を除く記号前後の半角スペースの除去
  $css_replaces['/(\/\*!.*?\*\/|\"(?:(?!(?<!\\\)\").)*\"|\'(?:(?!(?<!\\\)\').)*\'|\([^;{}]+\))| ([+\-\/]) |([+\-\/]) | ([+\/])/s'] = '${1}${2}${3}${4}'; // (5) 演算記号前後の半角スペースの除去
  return $css = preg_replace(array_keys($css_replaces), array_values($css_replaces), $css); // 一括置換
}

// JavaScript Minifier (https://shimotsuki.wwwxyz.jp/20200930-650)
function minify_js($input) {
  if (trim($input) === "") return $input;
  $js = $input;
  $js_replaces = []; // 置換用の配列を生成
  $js_replaces['/([(+=])\s*(\/(?:(?!(?<!\\\)\/).)+\/[dgimsuy]*)\s*([)+,.;])/s'] = '${1}${2}${3}'; // (1) JSの正規表現前後の空白文字列の除去
  $js_replaces['/(\/\*[!@].*?\*\/|[(+=]\/(?:(?!(?<!\\\)\/).)+\/[dgimsuy]*[)+,.;]|\"(?:(?!(?<!\\\)\").)*\"|\'(?:(?!(?<!\\\)\').)*\'|\`(?:(?!(?<!\\\)\`).)*\`)|\/\*.*?\*\/|\/\/[^\r\n]+[\r\n]/s'] = '${1}'; // (2) コメントの除去
  $js_replaces['/(\/\*[!@].*?\*\/|[(+=]\/(?:(?!(?<!\\\)\/).)+\/[dgimsuy]*[)+,.;]|\"(?:(?!(?<!\\\)\").)*\"|\'(?:(?!(?<!\\\)\').)*\'|\`(?:(?!(?<!\\\)\`).)*\`)\s*|\s+/s'] = '${1} '; // (3) 1つ以上連続する空白文字列の置換
  $js_replaces['/(\/\*[!@].*?\*\/|[(+=]\/(?:(?!(?<!\\\)\/).)+\/[dgimsuy]*[)+,.;]|\"(?:(?!(?<!\\\)\").)*\"|\'(?:(?!(?<!\\\)\').)*\'|\`(?:(?!(?<!\\\)\`).)*\`) | ([!#$%&)*+,\-.\/:;<=>?@\]^_|}~]) | ([!#$%&)*,.\/:;<=>?@\]^_|}~]|\+(?!\+)|-(?!-)|\z)|([!#$%&()*+,\-.\/:;<=>?@\[\]^_{|}~]|\A) /s'] = '${1}${2}${3}${4}'; // (4) 記号前後の半角スペースの除去
  return $js = preg_replace(array_keys($js_replaces), array_values($js_replaces), $js); // 一括置換
}

// Get_terms() 特定の投稿タイプのみcountの対象にする
function get_terms_clauses($clauses, $taxonomy, $args) {
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
add_filter('terms_clauses', 'get_terms_clauses', 10, 3);

// iframeの遅延読み込みを無効
function disable_post_content_iframe_lazy_loading($default, $tag_name, $context) {
  if ('iframe' === $tag_name && 'the_content' === $context) {
    return false;
  }
  return $default;
}
add_filter('wp_lazy_loading_enabled', 'disable_post_content_iframe_lazy_loading', 10, 3);

// Disable block frontend wrapper
// add_filter( 'lazyblock/test/frontend_allow_wrapper', '__return_false' );
