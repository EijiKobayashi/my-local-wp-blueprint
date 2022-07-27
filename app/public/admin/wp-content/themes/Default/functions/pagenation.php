<?php
// PAGINATION
function pagination( $pages = '', $range = 2 ) {
  $showitems = ($range * 2) + 1; // 表示するページ数（5ページを表示）
  global $paged; // 現在のページ値
  if (empty($paged)) $paged = 1; //デフォルトのページ
  if ($pages == '') {
    global $wp_query;
    $pages = $wp_query->max_num_pages; // 全ページ数を取得
    if (!$pages) {
      $pages = 1;
    }
  }
  if (1 != $pages) { // 全ページが1でない場合はページネーションを表示する
    echo '<div class="p-pagination">' . "\n";
    // Prev：現在のページ値が1より大きい場合は表示
    if ( $paged > 1 ) {
      echo '<a href="'. get_pagenum_link($paged - 1) .'" class="p-pagination__prev p-pagination__link"></a>';
    }
    for ( $i = 1; $i <= $pages; $i++) {
      if ( 1 != $pages &&( !($i >= $paged+$range+1 || $i <= $paged-$range-1) || $pages <= $showitems )) {
        // 三項演算子での条件分岐
        if ( $paged == $i ) {
          echo '<a href="#" class="p-pagination__link is-active">'. $i .'</a>';
        } else {
          echo '<a href="'. get_pagenum_link($i) .'" class="p-pagination__link">'. $i .'</a>';
        }
      }
    }
    // Next：総ページ数より現在のページ値が小さい場合は表示
    if ($paged < $pages) {
      echo '<a href="'. get_pagenum_link($paged + 1) .'" class="p-pagination__next p-pagination__link"></a>';
    }
    echo '</div>' . "\n";
  }
}
?>
