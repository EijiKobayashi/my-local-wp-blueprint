<?php
// PAGINATION
function pagination($pages, $paged, $range = 2, $show_only = false)
{

  $pages = (int)$pages; // float型で渡ってくるので明示的に int型 へ
  $paged = $paged ?: 1; // get_query_var('paged')をそのまま投げても大丈夫なように
  $display = $range * 2 + 1;
  $before_shortage = $range - ($pages - $paged);
  $after_shortage = $range - ($paged - 1);

  // 表示テキスト
  $text_before = "Prev";
  $text_next = "Next";

  // 1ページのみで表示設定が true の時
  if ($show_only && $pages === 1) {
    echo '<div class="pager_style"><li class="on">1</li></div>';
    return;
  }

  // 1ページのみで表示設定もない場合
  if ($pages === 1) return;

  // 2ページ以上の時
  if (1 !== $pages) {
    // echo '全' . $pages . 'ページ, ';
    // echo $paged . 'ページ目, ';
    // echo '表示' . $display . '個, ';
    // if ($pages >= $display) {
    //   echo 'ページが多い, ';
    //   if ($paged <= $range) { echo '表示件数が少ない, ' . $after_shortage . '個不足, '; }
    //   if (($pages - $paged) < $range) { echo '表示件数が少ない, ' . $before_shortage . '個不足, '; }
    // }
    echo '<div class="p-pagination">';
    if ($paged > 1) {
      // 「前へ」の表示
      //echo '<li class="prev"><a href="'. get_pagenum_link($paged - 1) .'">'. $text_before .'</a></li>';
      echo '<a href="' . get_pagenum_link($paged - 1) . '" class="p-pagination__item p-pagination__prev"><i class="icon ion-ios-arrow-back"></i></a>';
    }
    // 最後のページ
    if ($pages >= $display) {
      $start = $pages - ($display - 1);
      for ($c = 1; $c <= $before_shortage; $c++) {
        echo '<a href="' . get_pagenum_link($start) . '" class="p-pagination__item">' . $start . '</a>';
        $start++;
      }
    }
    for ($i = 1; $i <= $pages; $i++) {
      if ($i <= $paged + $range && $i >= $paged - $range) {
        // $paged +- $range 以内であればページ番号を出力
        if ($paged === $i) {
          echo '<span class="p-pagination__item is-current">' . $i . '</span>';
        } else {
          echo '<a href="' . get_pagenum_link($i) . '" class="p-pagination__item">' . $i . '</a>';
        }
      }
    }
    // 最初のページ目
    if ($pages >= $display) {
      $start = ($display - $after_shortage) + 1;
      for ($c = 1; $c <= $after_shortage; $c++) {
        echo '<a href="' . get_pagenum_link($start) . '" class="p-pagination__item">' . $start . '</a>';
        $start++;
      }
    }
    if ($paged < $pages) {
      // 「次へ」の表示
      //echo '<li class="next"><a href="'. get_pagenum_link($paged + 1) .'">'. $text_next .'</a></li>';
      echo '<a href="' . get_pagenum_link($paged + 1) . '" class="p-pagination__item p-pagination__next"><i class="icon ion-ios-arrow-forward"></i></a>';
    }
    echo '</div>';
  }
}
