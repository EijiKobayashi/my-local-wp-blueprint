<?php get_header(); ?>
<?php
if (function_exists('yoast_breadcrumb')) {
  yoast_breadcrumb('<div class="p-breadcrumbs">', '</div>');
}
?>
<div class="p-breadcrumbs">
  <?php
  $args = array(
    'nav_div' => 'nav',
    'nav_div_class' => 'p-breadcrumbs__inner',
    'aria_label' => 'breadcrumbs',
    'ul_class' => 'p-breadcrumbs__list',
    'li_class' => '',
    'li_active_class' => 'is-active',
    'aria_current' => 'page',
    'separator' => ' ',
    'post_type' => 'news',
  );
  custom_breadcrumb($args);
  ?>
</div>
<div id="content">
  <?php if (have_posts()) : ?>
    <?php $post = $posts[0]; // Hack. Set $post so that the_date() works.
    ?>
    <?php /* If this is a category archive */ if (is_category()) { ?>
      <h2>Archive for the &#8216;<?php single_cat_title(); ?>&#8217; Category</h2>
    <?php /* If this is a tag archive */ } elseif (is_tag()) { ?>
      <h2>Posts Tagged &#8216;<?php single_tag_title(); ?>&#8217;</h2>
    <?php /* If this is a daily archive */ } elseif (is_day()) { ?>
      <h2>Archive for <?php the_time(get_option('date_format')); ?></h2>
    <?php /* If this is a monthly archive */ } elseif (is_month()) { ?>
      <h2>Archive for <?php the_time('F Y'); ?></h2>
    <?php /* If this is a yearly archive */ } elseif (is_year()) { ?>
      <h2>Archive for <?php the_time('Y'); ?></h2>
    <?php /* If this is an author archive */ } elseif (is_author()) { ?>
      <h2>Author Archive</h2>
    <?php /* If this is a paged archive */ } elseif (isset($_GET['paged']) && !empty($_GET['paged'])) { ?>
      <h2>Blog Archives</h2>
    <?php } ?>
    <div class="navigation">
      <div class="alignleft"><?php next_posts_link('&laquo; Older Entries') ?></div>
      <div class="alignright"><?php previous_posts_link('Newer Entries &raquo;') ?></div>
    </div>
    <?php while (have_posts()) : the_post(); ?>
      <div class="post" id="post-<?php the_ID(); ?>">
        <h3 class="post-title"><a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>"><?php the_title(); ?></a></h3>
        <div class="postmetadata">Posted on <?php the_time(get_option('date_format')) ?>, <?php the_time(get_option('time_format')) ?>, by <?php the_author() ?>, under <?php the_category(', ') ?>.</div>
        <div class="entry">
          <?php the_excerpt(); ?>
        </div>
        <div class="postmetadata">
          <?php if (function_exists('the_tags'))
            the_tags(__('Tags: '), ', ', '<br />');
          ?>
        </div>
      <?php endwhile; ?>
      <?php
      if (function_exists('pagination')) {
        pagination($wp_query->max_num_pages, get_query_var('paged'));
      }
      ?>
      <?php /*
<div class="navigation">
<div class="alignleft"><?php next_posts_link('&laquo; Older Entries') ?></div>
<div class="alignright"><?php previous_posts_link('Newer Entries &raquo;') ?></div>
</div>
*/ ?>
    <?php else : ?>
      <h2 class="center">Not Found</h2>
    <?php endif; ?>
      </div>
      <?php get_sidebar(); ?>
      <?php get_footer(); ?>