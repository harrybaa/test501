<?php
/* Template Name: default-subject */

/**
 * The template for default subjects-page.
 *
 * @package: Wordpress 4.1
 * @author: wliu
 * Date: 2015/3/30
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
        <div class='wrap-header'>聚焦热点</div>
        <div class='news-wrap-list selected'>

          <?php 
            global $post;
            //从url参数中的subject获取分类信息，通过分类信息展示不同的页面主题，拉取不同的文章。
            $subject = $_GET['subject'];
            switch ($subject) {
              case 'man':
                $category_id = 5;
                break;
              case 'woman':
                $category_id = 6;
                break;
              default:
                break;
            }
            $args = array(
              'numberposts' => 10,
              'category' => $category_id,
            );
            $custom_posts = get_posts($args);
            foreach($custom_posts as $post) : setup_postdata($post);
              echo "<p class='n-l-i'><a href='";
              the_permalink();
              echo "'>";
              the_title();
              echo "</a></p>";
            endforeach;
          ?>

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
  var subject = getUrlVar('subject'),
      subject_cn = subject_i18n(subject);
  setTitle(subject_cn);
});

function getUrlVar(name){
  var vars = {}, hash;
  var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
  for (var i = 0; i < hashes.length; i++) {
      hash = hashes[i].split('=');
      if(hash[0] === name) return hash[1];
  }
  return;
}

function subject_i18n(subject){
  var cn = {
    'man': '男科',
    'woman': '妇科',
    'children': '儿科'
  }
  return cn[subject];
}

function setTitle(subject){
  $('.search-wrapper .logo').html(subject);
}
</script>

<?php get_footer(); ?>
