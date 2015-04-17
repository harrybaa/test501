$(document).ready(function(){
  var currentDocAPI = './data/currentDocFake.json',
      currentQueAPI = './data/currentQueryDataFack.json',
      hotQueAPI = './data/hotQueryDataFack.json',
      appointmentAPI = './data/appointmentFake.json';

  rigestEvent();
  loadCurrentDoc(currentDocAPI);
  loadCurrentQue(currentQueAPI);
  loadHotQue(hotQueAPI);
  loadAppointment(appointmentAPI);
});

function rigestEvent(){
  var slide = new Slide();

  // Slide.init($('.news-wrap-list.selected'));
  // Slide.runSlide.call(Slide, $('.news-wrap-list.selected'));
  slide.runSlide($('.news-wrap-list.selected'));
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
function loadCurrentQue(API){
  $.ajax({
    url: API,
    dataType: 'json',
    success: function(res){
      console.log('Current Query data loaded.');
      renderCurrentQue(res);
    },
    error: function(){
      console.log('Faild to load Current Online Doc data.');
    }
  });
}
function loadHotQue(API){
  $.ajax({
    url: API,
    dataType: 'json',
    success: function(res){
      console.log('Current Query data loaded.');
      renderHotQue(res);
    },
    error: function(){
      console.log('Faild to load Current Online Doc data.');
    }
  });
}
function loadAppointment(API){
  $.ajax({
    url: API,
    dataType: 'json',
    success: function(res){
      console.log('Appointment data loaded.');
      renderAppointment(res);
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
function renderCurrentQue(data){
  var html = '';
  data.map(function(i){
    html += template('temp_queryListItem', i);
  })
  $('#current-q-l').children('ul').html(html);
}
function renderHotQue(data){
  var html = '';
  data.map(function(i){
    html += template('temp_queryListItem', i);
  })
  $('#hot-q-l').children('ul').html(html);
}
function renderAppointment(data){
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
      htmlSegment += template('temp_appointDocInfo', r_i_i);
    });
    html += htmlSegment;
    html += "</ul> </div>";
  });
  $('.appointment-slider').html(html);
}