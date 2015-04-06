var Slide = {
  slider : {},
  items : {},
  item0 : {},
  buttonPre : {},
  buttonNext : {},
  sliderWidth : 0, //获取幻灯片外部div宽度
  sliderHeight : 0, //获取幻灯片外部div高度
  itemWidth : 0, //获取幻灯片Li的宽度
  itemNumber : 0, //获取幻灯片Li的数量
  // slide_Tab_Contne : '', //初始化tab按钮
  // slide_Nav_Height : $('.slide-pre').height(), //获取按钮高度
  // slide_Tab_AWidth : (1 / slide_number) * 100,
  // slide_TabWidth : $('.slide-tab').width(), //tab的宽度
  speed : 1000, //滚动速度
  interval : {},

  // slider.find('ul').append($('.slide-item')[0]);

  // for (var i = 0; i < slide_number; i++) {

  //   if (i == 1) {
  //     slide_Tab_Contne = slide_Tab_Contne + '<a class="selected" id="tab' + i + '" style="width:' + slide_Tab_AWidth + ';"></a>';
  //   } else {
  //     slide_Tab_Contne = slide_Tab_Contne + '<a id="tab' + i + '" style="width:' + slide_Tab_AWidth + ';"></a>'; //生成tab按钮
  //   }
  // }
  // $('.slide_Tab').html(slide_Tab_Contne); //写入tab按钮

  init : function(o){
    var self = this;
    self.slider = o.find('.slider');
    self.items = self.slider.find('.slide-item');
    self.item0 = $(self.items[0]);
    self.buttonPre = o.find('.buttonPre');
    self.buttonNext = o.find('.buttonNext');
    self.sliderWidth = self.slider.width(); //获取幻灯片外部div宽度
    self.sliderHeight = self.slider.height(); //获取幻灯片外部div高度
    self.itemWidth = self.item0.width(); //获取幻灯片Li的宽度
    self.itemNumber = self.items.length; //获取幻灯片Li的数量
  },

  slideNext : function() {
    var self = this;
    self.slider.animate({marginLeft: -itemWidth}, 500, function checkLast(){
      //判断是否到最后一张
      if(parseInt(self.slider.css('margin-left')) == self.itemWidth * self.itemNumber){
        self.slider.css('margin-left', 0);
      }
    });

  },

  slidePre : function() {
    var self = this;
    //判断是否到第一张
    if(parseInt(self.slider.css('margin-left')) == 0){
      self.slider.css('margin-left', - self.itemWidth * self.itemNumber + 'px');
    }
    self.slider.animate({marginLeft: +self.itemWidth}, 500);
  },

  // setInterval(function() {
  //     for (var n = 0; n < parseInt(slide_number); n++) {
  //         if (parseInt(slider.children('ul').children('li').eq(n).css('left')) == 0) {
  //             if ((n - 1) < 0) {
  //                 $('.tab' + (slide_number - 1)).removeClass('tab');
  //                 $('.tab' + (n + 1)).removeClass('tab');
  //                 $('.tab' + n).addClass('tab');
  //             } else {
  //                 $('.tab0').removeClass('tab');
  //                 $('.tab' + (n - 1)).removeClass('tab');
  //                 $('.tab' + (n + 1)).removeClass('tab');
  //                 $('.tab' + n).addClass('tab');
  //             }
  //         }
  //     }
  // }, 1)

  // $('.slide_Next').click(slideNext); //下一张按钮
  // $('.slide_Last').click(Slide_Last); //上一张按钮
  // $('.slide_box').mouseenter(function() {
  //   clearInterval(slide_run)
  // }); //鼠标在幻灯片上，停止滚动
  // $('.slide_box').mouseleave(function() {
  //   slide_run = setInterval(slideNext, slide_speed)
  // }) //鼠标不在幻灯哦上，开始滚动

  runSlide : function(o){
    if(o){
      this.init(o);
      interval = setInterval(this.slideNext, this.speed);
    } else{
      return;
    }
  },

  stopSlide : function(){
    clearInterval(interval);
  }

};
