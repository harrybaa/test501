<?php
/**
 * Template: 主题首页
 *
 * @package: Wordpress 4.1
 * @author: wliu
 * Date: 2015/3/17
 */

get_header(); ?>

<script type="text/javascript" src='<?php bloginfo('template_url'); ?>/js/template.js'></script>
<script type="text/javascript" src='<?php bloginfo('template_url'); ?>/js/slide.js'></script>

<div id='primary' class='content'>

  <div class='search-wrapper clearfix'>
    <div class='logo left'></div>
    <div class='search-block left'>
      <input name='search_input' class='input-block' type='textarea' autocomplete='off'/>
      <input name='search_submit' class='input-submit' value='搜索' type='submit'/>
    </div>
    <div class='forum left'>论坛</div>
  </div>

  <div class='section clearfix'>

    <!-- 分科室在线医生信息展示 -->
    <div class='left'>
      <div class='online-doc block'>
        <div class='wrap-header'>在线医生</div>
        <!-- categories list -->
        <ul class='cate-list'>
          <li class='cate-i i1' data-subject='男科'>
            <div class='cate-header clearfix'>
              <div class='cate-icon left'></div>
              <a class='subject-link left' href="http://localhost/gitPro/test501/?page_id=21&subject=man">男科</a>
            </div>
            <div class='doc-wrapper clearfix'></div>  
          </li>
          <li class='cate-i i2' data-subject='妇科'>
            <div class='cate-header clearfix'>
              <div class='cate-icon left'></div>
              <a class='subject-link left' href="http://localhost/gitPro/test501/?page_id=21&subject=man">妇科</a>
            </div>
            <div class='doc-wrapper clearfix'></div>
          </li>
          <li class='cate-i i3' data-subject='儿科'>
            <div class='cate-header clearfix'>
              <div class='cate-icon left'></div>
              <a class='subject-link left' href="http://localhost/gitPro/test501/?page_id=21&subject=man">儿科</a>
            </div>
            <div class='doc-wrapper clearfix'></div>
          </li>
          <li class='cate-i i4' data-subject='胃病科'>
            <div class='cate-header clearfix'>
              <div class='cate-icon left'></div>
              <a class='subject-link left' href="http://localhost/gitPro/test501/?page_id=21&subject=man">胃病科</a>
            </div>
            <div class='doc-wrapper clearfix'></div>
          </li>
          <li class='cate-i i5' data-subject='肾脏科'>
            <div class='cate-header clearfix'>
              <div class='cate-icon left'></div>
              <a class='subject-link left' href="http://localhost/gitPro/test501/?page_id=21&subject=man">肾脏科</a>
            </div>
            <div class='doc-wrapper clearfix'></div>
          </li>
        </ul>
      </div>
    </div>

    <!-- 网站新闻展示 -->
    <div class='mid'>
      <div class='news-wrap block'>
        <ul class='news-wrap-header clearfix'>
          <li class='n-w-h-i selected' data-name='today_news'>当日头条</li>
          <li class='n-w-h-i' data-name='advices'>就医指南</li>
          <li class='n-w-h-i' data-name='health_tips'>健康速递</li>
        </ul>
        <div id='today_news' class='news-wrap-list selected'>
          <div class='gallery-news'>
            <div class='slide'>
              <ul class='slider'>
                <li class='img-wrapper slide-item' style=" background:#E81216;" id="slide_item_0"><img src="img/banner03.jpg"></li>
                <li class='img-wrapper slide-item' style=" background:#000000;" id="slide_item_1"><img src="img/banner02.jpg"></li>
                <li class='img-wrapper slide-item' style=" background:#4144D7;" id="slide_item_2"><img src="img/banner01.jpg"></li>
              </ul>
              <a class="slide-pre"></a>
              <a class="slide-next"></a>
              <div class="slide-tab"></div>
              <div class="buttonPre" ></div>
              <div class="buttonNext" ></div>
            </div>
          </div>
          <div class='list'>
          <?php
            global $post;
            $args = array(
              'numberposts' => 10,
              'category' => 2,
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
        <div id='advices' class='news-wrap-list'>
          <div class='gallery-news'>
            This is a gallery news.
          </div>

          <?php
            global $post;
            $args = array(
              'numberposts' => 10,
              'category' => 1,
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
        <div id='health_tips' class='news-wrap-list'>
          This block for health campanion information.
        </div>
      </div>
    </div>


    <div class='right'>
      <!-- 登录入口 -->
      <div class='login'>
        <div class='login-patient block'>
          患者登录
        </div>
        <div class='login-doctor block'>
          医生登录
        </div>
      </div>

      <div class='current-query block'>
        <div class='wrap-header'>在线咨询</div>
      </div>

      <div class='hot-query block'>
        <div class='wrap-header'>热门咨询</div>
      </div>
      <div>

      </div>
    </div>
  </div>

  <div class='section block appointment'>

  </div>

</div><!-- .content-area -->

<script id='temp_currentDocInfo' type="text/html">
  <div class='doc-info-wrapper left'>
    <div class='online-status left'></div>
    <div class='head-pic img-wrapper left'></div>
    <div class='right-info left'>
      <span class='name'>{{name}}</span>
      <span class='online'>在线</span>
      <br>
      <span class='department'>{{department}}</span>
    </div>
  </div>
</script>
<script id='temp_currentDocInfo_more' type="text/html">
  <div class='more left'>
    更<br>多<br>>>
  </div>
</script>

<script type="text/javascript">
$(document).ready(function(){
  var currentDocAPI = './data/currentDocFake.json';
  rigestEvent();
  loadCurrentDoc(currentDocAPI);
  //playGallery();//函数位于slide.js
});

function rigestEvent(){
  var slideIterval;

  Slide.init($('.news-wrap-list.selected'));
  Slide.slideNext.call(Slide);
  $('.n-w-h-i').hover(function(){
    //展示新闻
    var name = '#' + $(this).data('name');
    $(this).addClass('selected');
    $(this).siblings().removeClass('selected');
    $(name).addClass('selected');
    $(name).siblings().removeClass('selected');
    //设置幻灯片播放
    
  }, function(){
    clearInterval(slideIterval);
  });
}

function loadCurrentDoc(API){
  $.ajax({
    url: API,
    dataType: 'json',
    success: function(res){
      console.log('Current Online Doc data loaded.');
      renderCurrentDoc(res);
    },
    error: function(){
      console.log('Faild to load Current Online Doc data.');
    }
  });
}
function renderCurrentDoc(data){
  var cateData = {
        '男科': [],
        '妇科': [],
        '儿科': [],
        '胃病科': [],
        '肾脏科': []
      }, 
      l = data.length, cate, html = '';

  for(var i = 0;i < l;i++){
    cate = data[i]['subject'];
    //每个block最多显示两个现在医生信息
    if(cateData[cate].length < 2){
      cateData[cate].push(data[i]);
    }
  }

  for(subject in cateData){
    html = '';
    if(cateData[subject]){
      cateData[subject].forEach(function(data){
        html += template('temp_currentDocInfo', data);
      });
    }
    $('.cate-i').each(function(){
      if($(this).data('subject') === subject){
        $(this).find('.doc-wrapper').append(html).append(
          template('temp_currentDocInfo_more')
        );
      }
    });
  }
}
</script>

<?php get_footer(); ?>
