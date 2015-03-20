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

</div><!-- .content-area -->

<?php get_footer(); ?>
