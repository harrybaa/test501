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
    <div class='logo left'>LOGO</div>
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
          <li class='n-w-h-i selected' data-name='today-news'>当日头条</li>
          <li class='n-w-h-i' data-name='advices'>就医指南</li>
          <li class='n-w-h-i' data-name='health_tips'>健康速递</li>
        </ul>
        <div id='today-news' class='news-wrap-list selected'>
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
          <div class='list'>
          <?php
            global $post;
            $args = array(
              'numberposts' => 10,
              'category' => 3,
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
        <div class='wrap-header'>当前咨询</div>
        <div id='current-q-l' class='query-list'>
          <ul></ul>
        </div>
      </div>

      <div class='hot-query block'>
        <div class='wrap-header'>热门咨询</div>
        <div id='hot-q-l' class='query-list'>
          <ul></ul>
        </div>
      </div>
      <div>

      </div>
    </div>
  </div>

  <div class='section block appointment'>
    <div class='appointment-header'>网上预约咨询</div>
    <div class='appointment-slider'>

    </div>
  </div>

</div><!-- .content-area -->

<!-- **************************** -->
<!-- 模版代码：用于动态渲染的模版 -->
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

<script id='temp_queryListItem' type="text/html">
  <li class='q-l-i'><a href="{{url}}">{{title}}</a><span class='date'>{{date}}</span></li>
</script>

<script id='temp_appointDocInfo' type="text/html">
  <li class='doc-wrapper {{status}} left'>
    <div class='online-status left'></div>
    <div class='head-pic img-wrapper left'></div>
    <div class='right-info left'>
      <p class='subject'>{{subject}}</p>
      <p class='department'>{{department}}</p>
      <p>
        <span class='name'>{{name}}</span>
        <span class='status'>
          {{ if status == 'online'}}
            在线
          {{ else }}
            离线
          {{ /if }}
        </span>
      </p>
    </div>
    <div class='ap-button'>
      {{ if status == 'online'}}
        在线聊天
      {{ else }}
        预约咨询
      {{ /if }}
    </div>
  </li>
</script>

<!-- ****** -->
<!-- 主函数 -->
<!-- ****** -->
<script type="text/javascript" src='<?php bloginfo('template_url'); ?>/js/require.js'></script>
<!-- 每个模块的路径在setting.js里设置 -->
<script type="text/javascript" src='<?php bloginfo('template_url'); ?>/js/setting.js'></script>
<script type="text/javascript">
require([
  'jquery',
  'template'
  ], function($, Template){

    var Home = function() {
      this.init();
    }

    Home.prototype = {
      APIs: {
        currentDocAPI: './data/currentDocFake.json',
        currentQueAPI: './data/currentQueryDataFack.json',
        hotQueAPI: './data/hotQueryDataFack.json',
        appointmentAPI: './data/appointmentFake.json'
      },

      init: function(){
        this.rigestEvent();
        this.loadCurrentDoc(this.APIs.currentDocAPI);
        this.loadCurrentQue(this.APIs.currentQueAPI);
        this.loadHotQue(this.APIs.hotQueAPI);
        this.loadAppointment(this.APIs.appointmentAPI);
      },

      rigestEvent: function(){
        $('.n-w-h-i').hover(function(){
          //展示新闻
          var name = '#' + $(this).data('name');
          $(this).addClass('selected');
          $(this).siblings().removeClass('selected');
          $(name).addClass('selected');
          $(name).siblings().removeClass('selected');
          //设置幻灯片播放
        }, function(){

        });
      },

      loadCurrentDoc: function(API){
        var self = this;
        $.ajax({
          url: API,
          dataType: 'json',
          success: function(res){
            console.log('Current Online Doc data loaded.');
            self.renderCurrentDoc(res);
          },
          error: function(){
            console.log('Faild to load Current Online Doc data.');
          }
        });
      },

      loadCurrentQue: function(API){
        var self = this;
        $.ajax({
          url: API,
          dataType: 'json',
          success: function(res){
            console.log('Current Query data loaded.');
            self.renderCurrentQue(res);
          },
          error: function(){
            console.log('Faild to load Current Online Doc data.');
          }
        });
      },

      loadHotQue: function(API){
        var self = this;
        $.ajax({
          url: API,
          dataType: 'json',
          success: function(res){
            console.log('Current Query data loaded.');
            self.renderHotQue(res);
          },
          error: function(){
            console.log('Faild to load Current Online Doc data.');
          }
        });
      },

      loadAppointment: function(API){
        var self = this;
        $.ajax({
          url: API,
          dataType: 'json',
          success: function(res){
            console.log('Appointment data loaded.');
            self.renderAppointment(res);
          },
          error: function(){
            console.log('Faild to load Current Online Doc data.');
          }
        });
      },

      renderCurrentDoc: function(data){
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
              html += Template('temp_currentDocInfo', data);
            });
          }
          $('.cate-i').each(function(){
            if($(this).data('subject') === subject){
              $(this).find('.doc-wrapper').append(html).append(
                Template('temp_currentDocInfo_more')
              );
            }
          });
        }
      },

      renderCurrentQue: function(data){
        var html = '';
        data.map(function(i){
          html += Template('temp_queryListItem', i);
        })
        $('#current-q-l').children('ul').html(html);
      },

      renderHotQue: function(data){
        var html = '';
        data.map(function(i){
          html += Template('temp_queryListItem', i);
        })
        $('#hot-q-l').children('ul').html(html);
      },

      renderAppointment: function(data){
        var html = '',
            htmlSegment = '',
            tempArray = [],
            result = [];

        //一页只显示四个，要分组
        for(var i = 0, l = data.length; i < l; i++){
          tempArray.push(data[i]);
          //遇四保存一个小数组，使其得到一个二维数组
          if(i % 4 === 3){
            result.push(tempArray);
            tempArray = [];
          }
        }

        result.map(function(r_i){
          html += "<div class='appointment-wrapper clearfix'> <ul>";
          htmlSegment = '';
          r_i.map(function(r_i_i){
            htmlSegment += Template('temp_appointDocInfo', r_i_i);
          });
          html += htmlSegment;
          html += "</ul> </div>";
        });
        $('.appointment-slider').html(html);
      }

    };
    // end of prototype

    var Home = new Home();

  })();
  
</script>

<?php get_footer(); ?>
