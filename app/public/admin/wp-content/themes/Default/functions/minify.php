<?php
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
