<?php
/**
 * Template: 主题首页
 *
 * @package: Wordpress 4.1
 * @author: wliu
 * Date: 2015/3/17
 */

get_header(); ?>

<div id='primary' class='content'>

  <div class='search-wrapper clearfix'>
    <div class='logo left'></div>
    <div class='search-block left'>
      <input name='search_input' class='input-block' type='textarea' autocomplete='off'/>
      <input name='search_submit' class='input-submit' value='搜索' type='submit'/>
    </div>
    <div class='forum left'>论坛</div>
  </div>

  <div class='category '>
    <ul class='cate-list clearfix'>
      <li class='cate-i i1'><a href="#">男科</a></li>
      <li class='cate-i i2'><a href="#">妇科</a></li>
      <li class='cate-i i3'><a href="#">儿科</a></li>
      <li class='cate-i i4'><a href="#">整形</a></li>
      <li class='cate-i i5'><a href="#">不孕不育</a></li>
      <li class='cate-i i6'><a href="#">肿瘤科</a></li>
      <li class='cate-i i7'><a href="#">胃病</a></li>
      <li class='cate-i i8'><a href="#">糖尿病</a></li>
      <li class='cate-i i9'><a href="#">心血管</a></li>
      <li class='cate-i i10'><a href="#">肝脏科</a></li>
      <li class='cate-i i11'><a href="#">肾病科</a></li>
      <li class='cate-i i12'><a href="#">肛肠科</a></li>
      <li class='cate-i i13'><a href="#">泌尿科</a></li>
      <li class='cate-i i14'><a href="#">耳鼻喉</a></li>
      <li class='cate-i i15'><a href="#">眼科</a></li>
      <li class='cate-i i16'><a href="#">口腔科</a></li>
      <li class='cate-i i17'><a href="#">骨科</a></li>
      <li class='cate-i i18'><a href="#">皮肤科</a></li>
      <li class='cate-i i19'><a href="#">精神科</a></li>
      <li class='cate-i i20'><a href="#">其他</a></li>
    </ul>
  </div>

  <div class='section clearfix'>
    <div class='left'>
      <div class='gallery-news'>
        This is a gallery news.
      </div>
    </div>
    <div class='mid'>
      <div class='news-wrap'>
        <ul class='news-wrap-header clearfix'>
          <li class='n-w-h-i selected' data-name='today_news'>当日头条</li>
          <li class='n-w-h-i' data-name='advices'>就医指南</li>
          <li class='n-w-h-i' data-name='heathy_tips'>健康速递</li>
        </ul>
        <div id='today_news' class='news-wrap-list selected'>

          <?php if ( have_posts('today_news') ) : ?>

            <?php
            // Start the loop.
            while ( have_posts('today_news') ) : the_post('today_news');
            if ( in_category( 'today_news' )):
              echo "<p class='n-l-i'><a href='";
              the_permalink();
              echo "'>";
              the_title();
              echo "</a></p>";
            endif;
            // End the loop.
            endwhile;

            else :
              echo "没有相关文章";

          endif;
          ?>

        </div>
        <div id='advices' class='news-wrap-list'>

          <?php if ( have_posts() ) : ?>

            <?php
            // Start the loop.
            while ( have_posts() ) : the_post();
            if ( in_category( 'advices' )):
              echo "<p class='n-l-i'><a href='";
              the_permalink();
              echo "'>";
              the_title();
              echo "</a></p>";
            endif;
            // End the loop.
            endwhile;

            else :
              echo "没有相关文章";

          endif;
          ?>

        </div>
        <div id='heathy_tips' class='news-wrap-list'>
        </div>
      </div>
    </div>
    <div class='right'>
      <div class='health-info'>
        <div class='health-info-header'>健康信息</div>
      </div>
    </div>
  </div>

</div><!-- .content-area -->

<script type="text/javascript">
$(document).ready(function(){
  rigestEvent();
});

function rigestEvent(){
  $('.n-w-h-i').hover(function(){
    $(this).addClass('selected');
    $(this).siblings().removeClass('selected');
    $('#'+$(this).data('name')).addClass('selected');
    $('#'+$(this).data('name')).siblings().removeClass('selected');
  }, function(){});
}
</script>

<?php get_footer(); ?>
