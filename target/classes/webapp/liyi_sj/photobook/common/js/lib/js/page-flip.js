//使用方式 pageFlip.show(workId);
var Page = (function() {
  
  var config = {
      $bookBlock : $( '#bb-bookblock' ),
      $navNext : $( '.nex' ),
      $navPrev : $( '.pre' ),
      $navFirst : $( '#bb-nav-first' ),
      $navLast : $( '#bb-nav-last' )
    },

    init = function() {
      config.$bookBlock.bookblock( {
        speed : 800,
        shadowSides : 0.8,
        shadowFlip : 0.7
      } );
      initEvents();
    },

    initEvents = function() {
      
      var $slides = config.$bookBlock.children();

      // add navigation events
      config.$navNext.on( 'click touchstart', function() {
        config.$bookBlock.bookblock( 'next' );
        return false;
      } );

      config.$navPrev.on( 'click touchstart', function() {
        config.$bookBlock.bookblock( 'prev' );
        return false;
      } );

      config.$navFirst.on( 'click touchstart', function() {
        config.$bookBlock.bookblock( 'first' );
        return false;
      } );

      config.$navLast.on( 'click touchstart', function() {
        config.$bookBlock.bookblock( 'last' );
        return false;
      } );
      
      // add swipe events
      $slides.on( {
        'swipeleft' : function( event ) {
          config.$bookBlock.bookblock( 'next' );
          return false;
        },
        'swiperight' : function( event ) {
          config.$bookBlock.bookblock( 'prev' );
          return false;
        }
      } );

      // add keyboard events
      $( document ).keydown( function(e) {
        var keyCode = e.keyCode || e.which,
          arrow = {
            left : 37,
            up : 38,
            right : 39,
            down : 40
          };

        switch (keyCode) {
          case arrow.left:
            config.$bookBlock.bookblock( 'prev' );
            break;
          case arrow.right:
            config.$bookBlock.bookblock( 'next' );
            break;
        }
      } );
    };

    return { init : init };

})();

Page.init();


var pageFlip = (function (){

  var Jsoninfo = {};

  function loadStyle() {
    var css = document.createElement("link");
    css.setAttribute("rel", 'stylesheet')
    css.setAttribute("type", 'text/css')
    css.setAttribute("href", '/common/js/lib/page-flip/css/page-flip.css?v=1')
    document.querySelector('head').appendChild(css)
  }
  
  var showbook = {
    arrange: function (productType) {
      var previewCount = Jsoninfo.pageCount;
      if (previewCount == undefined) {//旧书数据没有pagecount
        previewCount = Jsoninfo.preview_list.length + 2;
      }
  
      var date = [];
  
      if (Jsoninfo.isHTML5) {
        var front_cover = this.get('front_cover');
        if (front_cover != "empty") {
          date.push({
            "path_left": "empty",
            "path_left_num": "封底",
            "path_right": front_cover.path,
            "path_right_num": "封面",
            "path_right_timestamp": front_cover.timestamp,
            "type": "0"
          });
        }
  
        var title_page = this.get('title_page');
        if (title_page != "empty") {
          date.push({
            "path_left": "empty",
            "path_left_num": "封面对页",
            "path_right": title_page.path,
            "path_right_num": "1",
            "path_right_timestamp": title_page.timestamp,
            "type": "0"
          });
        }
      } 
      else {
        var cover = this.get('cover');//旧书封面
        if (cover != "empty") {
          date.push({
            "path_left": "empty",
            "path_left_num": "封底",
            "path_right": cover.path,
            "path_right_num": "封面",
            "path_right_timestamp": cover.timestamp,
            "type": "0"
          });
        }
  
        var title_page = this.get('0');
        if (title_page != "empty") {
          date.push({
            "path_left": "empty",
            "path_left_num": "封面对页",
            "path_right": title_page.path,
            "path_right_num": "扉页",
            "path_right_timestamp": title_page.timestamp,
            "type": "0"
          });
        }
      }
      
      //布艺、海绵本开放页
      if (productType != "1009" && window.Versions != "v2") {
        var page1 = this.get(1);
        if (page1 != "empty") {
          date.push({
            "path_left": "empty",
            "path_left_num": "扉页对页",
            "path_right": page1.path,
            "path_right_num": "2",
            "path_right_timestamp": page1.timestamp,
            "type": "0"
          });
        }
      }
  
      //海绵本
      var initNum, initPage;
      if (productType != "1009" && window.Versions != "v2") {
        initNum = 0;
        initPage = 2;
      } else {
        initNum = 1;
        initPage = 0;
      }
  
      for (i = initPage; i < previewCount - 3; i += 2) {
        var pageLeft = this.get(i);
        var pageRight = this.get(i + 1);
        var c_type;
        if (pageLeft.type != undefined) {
          c_type = (pageLeft != "empty" && pageLeft.type.toString() === '2') ? '1' : '0';
        }
        if (pageLeft.storage_type != undefined) {
          c_type = (pageLeft != "empty" && pageLeft.storage_type.toString() === '2') ? '1' : '0';
        }
  
        //版权对页也不需要显示哦
        if (i == previewCount - 4 + initNum) {
          pageRight = "empty";
        }
        date.push({
          "path_left": pageLeft === 'empty' ? pageLeft : pageLeft.path,
          "path_left_num": (i + 1 + initNum).toString(),
          "path_left_timestamp": pageLeft.timestamp,
          "path_right": pageRight === 'empty' ? pageRight : pageRight.path,
          "path_right_num": (i + 2 + initNum).toString(),
          "path_right_timestamp": pageRight.timestamp,
          "type": c_type
        });
      }
  
      //最后加版权页
      if (Jsoninfo.isHTML5) {
        var copyright = this.get('copyright');
        if (copyright != "empty") {
          date.push({
            "path_left": copyright.path,
            "path_left_num": "(版权)",
            "path_left_timestamp": copyright.timestamp,
            "path_right": "empty",
            "path_right_num": "封底",
            "type": "0"
          });
        }
      } else {
        // var copyright = this.get('author_info');//旧书版权页
        if (cover != "empty") {
          date.push({
            "path_left": cover.path + "_copyright",
            "path_left_num": "(版权)",
            "path_left_timestamp": cover.timestamp,
            "path_right": "empty",
            "path_right_num": "封底",
            "type": "0"
          });
        }
      }
  
      return date;
    },
    get: function (pageNum) {
      var previewList = Jsoninfo.preview_list;
      for (var i = 0; i < previewList.length; i++) {
        var num = previewList[i].num;
        if (pageNum == num) {
          return previewList[i];
        }
      }
      return "empty";
    }
  }

  function getphoto(imgData) {
    var imgUrl = [];
    for (var i = 0; i < imgData.length; i++) {
      var type = imgData[i].type;
      var leftImg = (imgData[i].path_left == "empty") ? "common/js/lib/page-flip//blank.jpg" : 'http://www.mimoprint.com/' + imgData[i].path_left + '_1x.jpg';
      var rightImg = (imgData[i].path_right == "empty") ? "common/js/lib/page-flip//blank.jpg" : 'http://www.mimoprint.com/' + imgData[i].path_right + '_1x.jpg';
      switch (type) {
        case "0":
          $('#bb-bookblock').append('<div class="bb-item">\
                                        <div style="display: flex">\
                                            <div class="pge">\
                                                <img src="' + leftImg + '" style="width:479px;height:358px;">\
                                                <div class="right-shadow"></div>\
                                            </div>\
                                            <div class="pge">\
                                                <img src="' + rightImg + '" style="width:479px;height:358px;">\
                                                <div class="left-shadow"></div>\
                                            </div>\
                                        </div>\
                                    </div>')
          break;
        case "1":
          $('#bb-bookblock').append('<div class="bb-item">\
                                        <div style="display: flex">\
                                            <div class="pge">\
                                                <img src="' + leftImg + '" style="width: auto; height: 358px; z-index: 1; position: absolute;">\
                                                <div class="right-shadow"></div>\
                                            </div>\
                                            <div class="pge">\
                                                <img src="' + rightImg + '" style="width:479px;height:358px;">\
                                                <div class="left-shadow"></div>\
                                            </div>\
                                        </div>\
                                    </div>')
          break;
      }
    }
  }
  
  var template = '<div class="showworks" style="display: none">\
                    <div id="bb-bookblock" class="bb-bookblock">\
                      <div class="bb-item">\
                        <div style="display: flex">\
                          <div class="pge">\
                            <img src="/common/js/lib/page-flip/blank.jpg" style="width: 459px; height: 325px;">\
                            <div class="right-shadow"></div>\
                          </div>\
                          <div class="pge">\
                            <img src="http://mimoprint.com/imagedata/751/51/195751/444327/preview/front_cover_1x.jpg" style="width: 459px; height: 325px;">\
                            <div class="left-shadow"></div>\
                          </div>\
                        </div>\
                      </div>\
                    </div>\
                    <div class="page-flip_next"></div>\
                    <div class="page-flip_prev"></div>\
                    <div class="page-flip_close"></div>\
                    <div class="moreBtns" v-show="showModule">\
				        <ul class="btns">\
				        	<li><a href="http://i.mimoprint.com/mycenter/center#create_book" target="_blank">立即制作</a></li>\
				        	<li class="active"><a href="/product/photo-book/index" target="_blank">挑选款式</a></li>\
				        </ul>\
			        </div>\
                  </div>\
                  <div class="dark" style="display: none;"></div>'
  
  var _pageFlip = {
    prevId: 0,
    init: function (config){
      loadStyle();
      $(document.body).append(template)
    },
    show: function (data, closeCb){
      if(data != 'old'){
        $("#bb-bookblock").empty();
        Jsoninfo = data;
        var imgData = showbook.arrange("4000");
        getphoto(imgData);
  
        $('#bb-bookblock').bookblock();
        $(".showworks")
          .on("click", ".page-flip_next", function () {
            $('#bb-bookblock').bookblock('next');
            return false;
          })
          .on("click", ".page-flip_prev", function () {
            $('#bb-bookblock').bookblock('prev');
            return false;
          })
          .on("click", ".page-flip_close", function () {
            $(".showworks, .dark").fadeOut(200);
            if(typeof closeCb === 'function'){
              closeCb();
            }
            return false;
          })
      }
      
      $(".showworks, .dark").fadeIn(200);

    },
  }

  return _pageFlip;
})()
pageFlip.init();