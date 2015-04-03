//原作：jujenjie
//改写：wliu
//请尊重作者，可用于商业，请保留此段话

function slide(){
  var slide_boxWidth = $('.slide').width(); //获取幻灯片外部div宽度
  var slide_boxHeight = $('.slide').height(); //获取幻灯片外部div高度
  var slide_LiWidth = $('.slide-item').width(); //获取幻灯片Li的宽度
  var slide_number = $('.slide-item').length; //获取幻灯片Li的数量
  var slide_speed = 1000; //滚动速度
  var slide_Tab_Contne = ''; //初始化tab按钮
  var slide_Nav_Height = $('.slide-pre').height(); //获取按钮高度
  var slide_Tab_AWidth = (1 / slide_number) * 100;
  var slide_TabWidth = $('.slide-tab').width(); //tab的宽度
  var slideWidth = $('.slide').width(); //slide的宽度

  $('.slide').find('ul').append($('.slide-item')[0]);

  for (var i = 0; i < slide_number; i++) {
    $('slide-item').eq(i).css('left', (i - 1) * slide_LiWidth); //初始化Li位置

    if (i == 1) {
      slide_Tab_Contne = slide_Tab_Contne + '<a class="selected" id="tab' + i + '" style="width:' + slide_Tab_AWidth + ';"></a>';
    } else {
      slide_Tab_Contne = slide_Tab_Contne + '<a id="tab' + i + '" style="width:' + slide_Tab_AWidth + ';"></a>'; //生成tab按钮
    }
  }
  $('.slide_Tab').html(slide_Tab_Contne); //写入tab按钮

  var slide_run = setInterval(slide_next, slide_speed) //设置滚动器

  function slide_next() {
    for (var k = 0; k < slide_number; k++) {
      if (parseInt($('slide-item').eq(k).css('left')) == -slide_LiWidth) //判断LI是否有位移到0，防止同时多次点击出错
      {

        for (var j = 0; j < parseInt(slide_number); j++) {
          if (parseInt($('.slide').children('ul').children('li').eq(j).css('left')) == -slide_LiWidth) { //判断是否第一个

            $('.slide-item').eq(j).css('left', slide_LiWidth * (slide_number - 2)); //第一个回到最后一个

          } else {

            slide_liSeat = parseInt($('.slide').children('ul').children('li').eq(j).css('left')) - slide_LiWidth; //获取位移位置
            $('.slide').children('ul').children('li').eq(j).animate({
                left: slide_liSeat
            }, 'slow'); //进行位移动画

          }
        }

      }
    }
  }

  function Slide_Last() {
      for (var k = 0; k < parseInt(slide_number); k++) {
          if (parseInt($('.slide').children('ul').children('li').eq(k).css('left')) == 0) //判断LI是否有位移到0，防止同时多次点击出错
          {

              var slide_liSeat = 0; //位置参数归零
              for (var j = 0; j < parseInt(slide_number); j++) {
                  if (parseInt($('.slide').children('ul').children('li').eq(j).css('left')) == slide_LiWidth * (slide_number - 2)) { //判断是否第一个

                      $('.slide').children('ul').children('li').eq(j).css('left', -slide_LiWidth); //第一个回到最后一个

                  } else {

                      slide_liSeat = parseInt($('.slide').children('ul').children('li').eq(j).css('left')) + slide_LiWidth; //获取位移位置
                      $('.slide').children('ul').children('li').eq(j).animate({
                          left: slide_liSeat
                      }, 'slow'); //进行位移动画

                  }
              }

          }
      }
  }

  setInterval(function() {
      for (var n = 0; n < parseInt(slide_number); n++) {
          if (parseInt($('.slide').children('ul').children('li').eq(n).css('left')) == 0) {
              if ((n - 1) < 0) {
                  $('.tab' + (slide_number - 1)).removeClass('tab');
                  $('.tab' + (n + 1)).removeClass('tab');
                  $('.tab' + n).addClass('tab');
              } else {
                  $('.tab0').removeClass('tab');
                  $('.tab' + (n - 1)).removeClass('tab');
                  $('.tab' + (n + 1)).removeClass('tab');
                  $('.tab' + n).addClass('tab');
              }
          }
      }
  }, 1)

  $('.slide_Next').click(slide_next); //下一张按钮
  $('.slide_Last').click(Slide_Last); //上一张按钮
  $('.slide_box').mouseenter(function() {
    clearInterval(slide_run)
  }); //鼠标在幻灯片上，停止滚动
  $('.slide_box').mouseleave(function() {
    slide_run = setInterval(slide_next, slide_speed)
  }) //鼠标不在幻灯哦上，开始滚动

}
