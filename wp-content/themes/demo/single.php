<?php
/**
 * The template for displaying all single posts and attachments
 *
 * @package: Wordpress 4.1
 * @author: wliu
 * Date: 2015/3/25
 */

get_header(); ?>

<div id="primary" class="content">

  <div class='search-wrapper clearfix'>
    <div class='logo left'></div>
    <div class='search-block left'>
      <input name='search_input' class='input-block' type='textarea' autocomplete='off'/>
      <input name='search_submit' class='input-submit' value='搜索' type='submit'/>
    </div>
    <div class='forum left'>论坛</div>
  </div>

  <main id="main" class="site-main clearfix" role="main">

    <div class='left-block post-wrapper'>
    <?php
    // Start the loop.
    while ( have_posts() ) : the_post();

      /*
       * Include the post format-specific template for the content. If you want to
       * use this in a child theme, then include a file called called content-___.php
       * (where ___ is the post format) and that will be used instead.
       */
      get_template_part( 'content', get_post_format() );

      // If comments are open or we have at least one comment, load up the comment template.
      if ( comments_open() || get_comments_number() ) :
        comments_template();
      endif;

      // Previous/next post navigation.
      the_post_navigation( array(
        'next_text' => '<span class="meta-nav" aria-hidden="true">' . __( 'Next', 'twentyfifteen' ) . '</span> ' .
          '<span class="screen-reader-text">' . __( 'Next post:', 'twentyfifteen' ) . '</span> ' .
          '<span class="post-title">%title</span>',
        'prev_text' => '<span class="meta-nav" aria-hidden="true">' . __( 'Previous', 'twentyfifteen' ) . '</span> ' .
          '<span class="screen-reader-text">' . __( 'Previous post:', 'twentyfifteen' ) . '</span> ' .
          '<span class="post-title">%title</span>',
      ) );

    // End the loop.
    endwhile;
    ?>
    </div><!-- .left-post -->

    <div class='right-block navi'>
      <div class='health-info'>
        <div class='health-info-header'>健康信息</div>
      </div>
    </div><!-- .left-navi -->

  </main><!-- .site-main -->
</div><!-- .content-area -->

<?php get_footer(); ?>
