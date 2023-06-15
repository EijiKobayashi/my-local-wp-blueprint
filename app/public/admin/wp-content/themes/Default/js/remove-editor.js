wp.domReady(function () {
  // サンプル
  // wp.blocks.unregisterBlockStyle( 'ブロック名', 'スタイル名' );

  // 区切り（幅広線）
  wp.blocks.unregisterBlockStyle('core/separator', 'wide');

  // 区切り（ドット）
  wp.blocks.unregisterBlockStyle('core/separator', 'dots');

  // 画像（角丸）
  wp.blocks.unregisterBlockStyle('core/image', 'rounded');

  // 引用（プレーン）
  wp.blocks.unregisterBlockStyle('core/quote', 'plain');

  // 引用（大）
  wp.blocks.unregisterBlockStyle('core/quote', 'large');
});
