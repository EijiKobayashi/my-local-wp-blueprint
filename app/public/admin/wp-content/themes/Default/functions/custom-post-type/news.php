<?php
  $labels = array(
    'name' => 'ニュース',
    'singular_name' => 'ニュース',
    'menu_name' => 'ニュース',
    'all_items' => 'ニュース一覧',
    'add_new' => '新規追加',
    'add_new_item' => '新規ニュースを追加',
    'edit_item' => 'ニュースの編集',
    'new_item' => '新規ニュース',
    'view_item' => 'ニュースを表示',
    'search_items' => 'ニュースを検索',
    'not_found' =>  'ニュースが見つかりませんでした。',
    'not_found_in_trash' => 'ゴミ箱内にニュースが見つかりませんでした。',
    'parent_item_colon' => '親ニュース',
    'featured_image' => 'アイキャッチ',
    'set_featured_image' => 'アイキャッチを設定',
    'remove_featured_image' => 'アイキャッチを削除',
    'use_featured_image' => 'アイキャッチとして使用する',
  );
  $args = array(
    'labels' => $labels,
    'public' => true,
    'publicly_queryable' => true,
    'exclude_from_search' => false,
    'show_ui' => true,
    'show_in_nav_menus' => false,
    'has_archive' => true,
    'hierarchical' => false,
    'rewrite' => array( 'slug' => 'news', 'with_front' => true, 'feeds' => false, 'pages' => true ),
    'query_var' => true,
    'can_export' => true,
    'menu_position' => 4,
    'menu_icon' => 'dashicons-edit-page',
    'supports' => array( 'title', 'editor', 'author', 'thumbnail', 'revisions', 'page-attributes', 'post-formats' ),
    'show_in_rest' => true,
    'taxonomies' => array( 'news_category', 'news_tags' ),
  );
  register_post_type( 'news', $args );

  // カテゴリー
  $labels = array(
    'name' => 'カテゴリー',
    'singular_name' => 'カテゴリー',
    'menu_name' => 'カテゴリー',
    'all_items' => 'すべてのカテゴリー',
    'edit_item' => 'カテゴリーの編集',
    'view_item' => 'カテゴリーを表示',
    'update_item' => 'カテゴリーを更新',
    'add_new_item' => '新規カテゴリーを追加',
    'new_item_name' => '新規カテゴリー名',
    'parent_item' => '親カテゴリー',
    'parent_item_colon' =>  '親カテゴリー',
    'search_items' => 'カテゴリーを検索',
    'popular_items' => '人気のカテゴリー',
    'separate_items_with_commas' => 'カテゴリーが複数ある場合はコンマで区切ってください',
    'add_or_remove_items' => 'カテゴリーの追加もしくは削除',
    'choose_from_most_used' => 'よく使われているカテゴリーから選択',
    'not_found' => 'カテゴリーが見つかりませんでした。',
  );
  $args = array(
    'labels' => $labels,
    'show_ui' => true,
    'show_in_nav_menus' => true,
    'show_tagcloud' => true,
    'show_admin_column' => false,
    'hierarchical' => true,
    'query_var' => true,
    'rewrite' => array( 'slug' => 'news/category/-', 'with_front' => true, 'hierarchical' => true, ),
    'sort' => true,
    'show_in_rest' => true,
  );
  register_taxonomy( 'news_category', array( 'news' ) , $args );

  // タグ
  $labels = array(
    'name' => 'タグ',
    'singular_name' => 'タグ',
    'menu_name' => 'タグ',
    'all_items' => 'すべてのタグ',
    'edit_item' => 'タグの編集',
    'view_item' => 'タグを表示',
    'update_item' => 'タグを更新',
    'add_new_item' => '新規タグを追加',
    'new_item_name' => '新規タグ名',
    'parent_item' => '親タグ',
    'parent_item_colon' =>  '親タグ',
    'search_items' => 'タグを検索',
    'popular_items' => '人気のタグ',
    'separate_items_with_commas' => 'タグが複数ある場合はコンマで区切ってください',
    'add_or_remove_items' => 'タグの追加もしくは削除',
    'choose_from_most_used' => 'よく使われているタグから選択',
    'not_found' => 'タグが見つかりませんでした。',
  );
  $args = array(
    'labels' => $labels,
    'show_ui' => true,
    'show_in_nav_menus' => true,
    'show_tagcloud' => true,
    'show_admin_column' => false,
    'hierarchical' => true,
    'query_var' => true,
    'rewrite' => array( 'slug' => 'news/tags/-', 'with_front' => true, 'hierarchical' => true, ),
    'sort' => true,
    'show_in_rest' => true,
  );
  register_taxonomy( 'news_tags', array( 'news' ) , $args );

?>
