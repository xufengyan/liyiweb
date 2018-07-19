$(document).ready(function() {
	var totalBookPages = 0
	var picsPage = 1;
	var A5Width = 582;
	var A5Height = 816;
	var pageHeit = 0;
	var pageWidth = 0;
	var spaceBetween = 0;
	var scale = 0;
	var isPad = false;
	var scale_ = 1;
	var m_down = 0;
	var nowBookDataResId = 0;
	var bookCoverStyle = $('#bookCoverStyle').val();
	console.info(bookCoverStyle);
	if (bookCoverStyle == 13 || bookCoverStyle == '13') {
		scale_ = 1.8844221106;
	} else if (bookCoverStyle == 14 || bookCoverStyle == '14') {
		scale_ = 1.8844221106;
	} else if (bookCoverStyle == 15 || bookCoverStyle == '15') {
		scale_ = 1.2315270936;
	} else if (bookCoverStyle == 16 || bookCoverStyle == '16') {
		scale_ = 0.7933333333;
	} else if (bookCoverStyle == 17 || bookCoverStyle == '17') {
		scale_ = 0.9529860229;
	}else if (bookCoverStyle == 20 || bookCoverStyle == '20') {
		scale_ = 1.39303483;
	}else if (bookCoverStyle == 27 || bookCoverStyle == '27') {
		scale_ = 0.853242321;
	}
	var bookId = $('#bookId').val();
	var c = $('#c').val();
	//pc_s_loading('加载中…');
	$.ajax({
		type:"get",
		dataType: "json",
		async: false,
		url:"/pics/getPicsPages.do?bookId="+bookId+"&a="+Math.random(),
		success:function(res){
			console.log(res)
			for(var i=0;i<res.pages.length;i++){
				$("#flipbook").append('<div content="'+res.pages[i].content+'" bookDataId1="'+res.pages[i].bookDataId+'" num1="'+res.pages[i].num+'" bookId1="'+res.pages[i].bookPageStyleId+'" class="swiper-slide slide-top"><div class="img-tips">tips:点击图片可编辑</div>'+res.pages[i].html+'</div>');
			}
			var backImg = $('#backImg').val();
			var backImgHtml = '';
			if(backImg != null && backImg != ''){
				backImgHtml = '<a class="lf-img3"><img src="'+backImg+'"></a>';
			}
			backImgHtml = backImgHtml + '<a class="up-back-img" style="display:none;z-index:999;"><img src="images/up_book_back_btn.png"></a>';
			$("#flipbook").append('<div class="swiper-slide slide-top back-face"><div class="book-back-to-up-img pbook-back wrapTrans"' +
				' style=""><img' +
				' style="width: 100%;" class="pbook-back trans" src="images/pics/pbook_back_'+c+'.png?v=333">'+backImgHtml+'</div></div>');
			$('.showChangeDiv').each(function(){
				var showChangDiv = $(this);
				var data_background = showChangDiv.attr('data-background');
				showChangDiv.css('background-image','url('+data_background+')');
			});
			
			pc_h_loading();
			
			/*$(".up-back-img>img").unbind();
			$(".up-back-img>img").bind({
				click : function(){
					$('.img-back-input').click();
				}
			})*/
			/*$(".book-back-to-up-img").unbind();
			$(".book-back-to-up-img").bind({
				click : function(){
					if($(this).hasClass('m-show')){
						$(".up-back-img").hide();
						$(this).removeClass('m-show');
					}else{
						$(".up-back-img").show();
						$(this).addClass('m-show');
					}
				}
			})*/
			//高度判断
			init();
			Emoji.emoji();
			$("#flipbook").click(function(){
				$(".turn-action").hide()
	       })
	 
	       $("#flipbook").turn({
	   		   autoCenter: true
		   });
			totalBookPages = $("#flipbook").turn("pages");
			if(totalBookPages%2 == 1){
				$('.pbook-back').removeClass('page');
			}else{
				$('.pbook-back').addClass('page');
			}
			$('.turn-cicle-lf').html('第1页/共'+totalBookPages+'页');
			$('.range').attr('max',totalBookPages+'');
			turn_book_page();
		}
	});
	
	function showSet() {
		scale = ($('#flipbook').width()-400)/A5Width;
		pageHeit = A5Height * scale;
		pageWidth = $('#flipbook').width()-400;
		$(".content-box").css("width",pageWidth);
		$(".content-box").css("height",pageHeit);
		$(".trans").css("width",A5Width);
		$(".trans").css("height",A5Height);
		$(".trans").css("transform","scale("+scale+","+scale+")");
		$(".trans").css("-webkit-transform-origin","0 0");
		$(".trans").css("padding-left","60px");
		$(".trans").css("padding-right","60px");
		$(".trans").css("padding-top","70px");
		$(".trans").css("padding-bottom","70px")

		$(".vigour_images").css("left","60px");
		$(".vigour_images").css("right","60px");
		$(".vigour_images").css("top","70px");
		$(".vigour_images").css("bottom","70px");
		$(".wrapTrans").css("height",pageHeit);
		if(isPad){
			$(".wrapTrans,.content-box").css("margin-left",spaceBetween);
			$(".wrapTrans,.content-box").css("margin-right",spaceBetween);
			$(".wrapTrans,.content-box").css("margin-top","25px");
			$(".wrapTrans,.content-box").css("margin-bottom","25px");
		}else{
			$(".wrapTrans,.content-box").css("margin-left","15px");
			$(".wrapTrans,.content-box").css("margin-right","15px");
			$(".wrapTrans,.content-box").css("margin-top",spaceBetween);
			$(".wrapTrans,.content-box").css("margin-bottom",spaceBetween);
		}

	}
	
	function my_alert(title,content,btnTxt){
		$('.my-alert-title').html(title);
		$('.my-alert-body').html(content);
		$('.my-alert-btn').html(btnTxt);
		$('#myModal').modal('show');
	}
	
	function my_input_alert(title,content,btnTxt){
		$('.my-input-title').html(title);
		$('.my-input-body').val(content);
		$('.my-input-btn').html(btnTxt);
		$('#myModal2').modal('show');
	}
	
	function close_my_alert(){
		$('#myModal').modal('hide');
	}
	
	function close_my_input(){
		$('#myModal2').modal('hide');
	}
	
	function s_f(){
		$('.pics-opp-flag').fadeOut();	
		setTimeout( function(){
			$('.pics-opp-flag-finish').fadeIn();
		}, 500 );
	}
	
	function s_ed(){
		$('.pics-opp-flag').fadeOut();
		setTimeout( function(){
			$('.pics-opp-flag-saved').fadeIn();
			setTimeout( function(){
				s_f();
			}, 500 );
		}, 500 );
	}
	
	function s_fail(){
		$('.pics-opp-flag').fadeOut();
		setTimeout( function(){
			$('.pics-opp-flag-fail').fadeIn();
		}, 500 );
	}
	
	function s_si(){
		$('.pics-opp-flag').fadeOut();
		setTimeout( function(){
			$('.pics-opp-flag-saveing').fadeIn();
		}, 500 );
	}
	
	function select_img(){
		$(".cover-gray").unbind();
		$(".cover-gray").bind({
			click : function(event){
				event.stopPropagation();
				$(".zps-add-new-img-now,.zps-add-new-img-new").hide()
		        $(this).parent().find(".zps-add-new-img-now,.zps-add-new-img-new").toggle();
			}
		})
		
		$(".zps-add-new-img-new").unbind();//添加图片到新页
		$(".zps-add-new-img-new").bind({
			click : function(event){
				event.stopPropagation();
				var _ = $(this);
				$(".zps-add-new-img-now,.zps-add-new-img-new").hide();
				var imgId = _.parents('.zps-upload-img').attr('data-id');
				var bookId = $('#bookId').val();
				var c = $('#c').val();
				var data = {};
				data.c = c;
				data.r = Math.random();
				data.bookId = bookId;
				data.id = imgId;
				//pc_s_loading('处理中…');
				$.ajax({
		        	type: "GET",
			        url: "",
			        data: data,
			        dataType: "json",
			        success: function(data){
			        	pc_h_loading();
			        	if(data.success){
			        		/*$("#flipbook").turn("addPage", data.html, totalBookPages-1);
			        		totalBookPages = totalBookPages + 1;
							var bdid = bookDataId;
							$("[bookdataid1='"+bdid+"']").find('.showChangeDiv').each(function(){
								var showChangDiv = $(this);
								var data_background = showChangDiv.attr('data-background');
								showChangDiv.css('background-image','url('+data_background+')');
							});
							init();*/
			        		my_alert('操作提示','添加成功','关闭');
			        	}else{
				        	my_alert('操作提示','添加失败','关闭');
				        }
			        }
		        })
			}
		})
		
		$(".zps-add-new-img-now").unbind();//添加图片到当前页
		$(".zps-add-new-img-now").bind({
			click : function(event){
				event.stopPropagation();
				var _ = $(this);
				$(".zps-add-new-img-now,.zps-add-new-img-new").hide();
				var imgId = _.parents('.zps-upload-img').attr('data-id');
				var bookId = $('#bookId').val();
				var c = $('#c').val();
				if(picsPage <2 || picsPage > totalBookPages - 1){
					return;
				}
				var bookDataId = '0';
				var imgSize0 = $('.page-wrapper[page='+picsPage+']').find('.showChangeDiv').length;
				var imgSize1 = $('.page-wrapper[page='+(picsPage+1)+']').find('.showChangeDiv').length;
				if(imgSize0 == 0 && imgSize1 == 0){
					my_alert('操作提示','添加失败，每页最多4张照片','关闭');
					return;
				}else if(imgSize0 > 3 && imgSize1 > 3){
					my_alert('操作提示','添加失败，每页最多4张照片','关闭');
					return;
				}else if(imgSize0 == 0){
					if(imgSize1 > 3){
						my_alert('操作提示','添加失败，每页最多4张照片','关闭');
						return;
					}else{
						bookDataId = $('.page-wrapper[page='+(picsPage+1)+']').find('.swiper-slide').attr('bookdataid1');
					}
				}else if(imgSize1 == 0){
					if(imgSize0 > 3){
						my_alert('操作提示','添加失败，每页最多4张照片','关闭');
						return null;
					}else{
						bookDataId = $('.page-wrapper[page='+picsPage+']').find('.swiper-slide').attr('bookdataid1');
					}
				}else if(imgSize0 > imgSize1){
					bookDataId = $('.page-wrapper[page='+(picsPage+1)+']').find('.swiper-slide').attr('bookdataid1');
				}else{
					bookDataId = $('.page-wrapper[page='+picsPage+']').find('.swiper-slide').attr('bookdataid1');
				}
				var data = {};
				data.c = c;
				data.r = Math.random();
				data.bookDataId = bookDataId;
				data.id = imgId;
				//pc_s_loading('处理中…');
				$.ajax({
		        	type: "GET",
			        url: "",
			        data: data,
			        dataType: "json",
			        success: function(data){
			        	pc_h_loading();
			        	if(data.success){
			        		var now_html=data.html;
							var bdid = bookDataId;
							$("[bookdataid1='"+bdid+"']").html(now_html);
							$("[bookdataid1='"+bdid+"']").find('.showChangeDiv').each(function(){
								var showChangDiv = $(this);
								var data_background = showChangDiv.attr('data-background');
								showChangDiv.css('background-image','url('+data_background+')');
							});
							init();
			        		my_alert('操作提示','添加成功','关闭');
			        	}else{
			        		my_alert('操作提示','添加失败','关闭');
			        	}
			        }
		        })
			}
		})
	}
	
	select_img();
	
	$(".click-send-pic").bind({
		click : function(event){
			event.stopPropagation();
			$('.photo-imgs-u').click();
		}
	})
	
	$(".send-front-cover").bind({
		click : function(event){
			event.stopPropagation();
			$('.photo-imgs-cover').click();
		}
	})
	
	var input2 = document.getElementById("file_input2");
	var input = document.getElementById("file_input");
	var input3 = document.getElementById("file_input3");
	if(typeof FileReader==='undefined'){
		result.innerHTML = "抱歉，你的浏览器不支持 FileReader";      
	    input2.setAttribute('disabled','disabled');
	    input.setAttribute('disabled','disabled');
	    input3.setAttribute('disabled','disabled');
	}else{   
	    input2.addEventListener('change',readFile2,false);
	    input.addEventListener('change',readFile,false);
	    input3.addEventListener('change',readFile3,false);
	}
	
	function readFile2() {
		var fileList = this.files;
		for(var i=0;i<fileList.length;i++){
	        var result;
			var file = fileList[i];
			pc_s_loading("<span id='hhh'>正在上传 "+(i+1)+"/"+fileList.length+"</span>");
			var reader = new FileReader();
			console.log("上传："+file);
			reader.readAsDataURL(file);
			reader.onload = function(e){
				result = this.result;
				var img = new Image();
		        img.src = result;
		        img.onload = function(){
		        	EXIF.getData(img, function(){
		        		var fd = new FormData();
		    	        var data = compress(img);//图片首先进行压缩
		    		    fd.append('file', data);
		    	        var xhr = new XMLHttpRequest();
		    	        xhr.addEventListener("load", uploadComplete2, false);
		    	        xhr.addEventListener("error", uploadFailed, false);
		    	        xhr.addEventListener("abort", uploadCanceled, false);
		    	        xhr.open("POST", "/pc/yunPhoto/saveImgsBase64.html");//修改成自己的接口
		    	        xhr.send(fd);
		    	        console.log(xhr);
		        	});
		        };
			}
	    }
	    
		setTimeout( function(){
//			pc_h_loading();
		}, 2000 );
	    this.files.length = 0;
	}
	
	function readFile3() {
		for (var i = 0; i < this.files.length; i++) {
			if (!input3['value'].match(/.jpg|.jpeg|.gif|.png|.bmp/i)) {
				$.alert("上传的图片格式不正确，请重新选择");
				return;
			}

		}
		if(this.files.length<1){
			return;
		}
		//pc_s_loading("处理中");
		var result;
		var fd = new FormData();
		var file = this.files[0];
		this.files.length = 0;
		var reader = new FileReader();
		reader.readAsDataURL(file);
		reader.onload = function (e) {
			result = this.result;
			var bookId = $('#bookId').val();
			var img = new Image();
			img.src = result;
			img.onload = function () {
				EXIF.getData(img, function () {
					var data = compress(img);//图片首先进行压缩
					fd.append('file', data);
					fd.append("bookId", bookId);
					var xhr = new XMLHttpRequest();
					xhr.addEventListener("load", uploadComplete3, false);
					xhr.addEventListener("error", uploadFailed, false);
					xhr.addEventListener("abort", uploadCanceled, false);
					xhr.open("POST", "/wBook/saveImgsBase64ForBookBack.html");//修改成自己的接口
					xhr.send(fd);
					console.log(xhr);
				});
			};
		}
	}
	
	function readFile() {
		var fileList = this.files;
		var bookId = $('#bookId').val();
		for(var i=0;i<fileList.length;i++){
	        var result;
			var file = fileList[i];
			pc_s_loading("<span id='hhh'>上传中…</span>");
			var reader = new FileReader();
			console.log("上传："+file);
			reader.readAsDataURL(file);
			reader.onload = function(e){
				result = this.result;
				var img = new Image();
		        img.src = result;
		        img.onload = function(){
		        	EXIF.getData(img, function(){
		        		var fd = new FormData();
		    	        var data = compress(img);//图片首先进行压缩
		    	        fd.append('file', data);
		    	        fd.append("bookId",bookId);
		    	        var xhr = new XMLHttpRequest();
		    	        xhr.addEventListener("load", uploadComplete, false);
		    	        xhr.addEventListener("error", uploadFailed, false);
		    	        xhr.addEventListener("abort", uploadCanceled, false);
		    	        xhr.open("POST", "/wBook/saveImgsBase64.html");//修改成自己的接口
		    	        xhr.send(fd);
		    	        console.log(xhr);
		        	});
		        };
			}
	    }
	    
		setTimeout( function(){
//			pc_h_loading();
		}, 2000 );
	    this.files.length = 0;
	}
	
	function uploadComplete(evt) {
		var data = evt.target.responseText;
		var obj = eval("("+data+")");
		console.log("data:"+data);
		console.log("obj:"+obj);
		if(!obj["flag"]){
			 my_alert('操作提示',obj["msg"],'关闭');
			 return;
		}
		$('.img-caijian-wrap').show();
		var imgw = obj["w"];
		var imgh = obj["h"];
		console.info('data.w:'+obj["w"]+'data.h:'+obj["h"]);
		$("#element_id").attr('src',obj["urlshort"]);
		$("#element_id").cropper('destroy');
		$("#element_id").cropper({
		  viewMode:2,
		  cropBoxResizable:true,
		  dragMode:'move',
		  movable:false,
		  aspectRatio: scale_,
		  autoCropArea:1,
		  background:false,
		  responsive:true,
		  checkImageOrigin:false,
		  crop: function(data) {
		  	console.info('imgw:'+imgw+'imgh:'+imgh);
	  		if(imgw && imgh){
//	  			pc_h_loading();
	  			var nw = 500;
	        	var nh = 500*imgh/imgw;
	        	console.info('data.width:'+data.width+'data.height:'+data.height);
	        	console.info('imgw/nw*data.width:'+imgw/nw*data.width+'imgh/nh*data.height:'+imgh/nh*data.height);
	  			if(imgw/nw*data.width < 400 || imgh/nh*data.height < 400){
				  //提示像素过低
				  console.info('像素低imgw:'+imgw+'imgh:'+imgh);
				  $("#warningimg").show();
			  	}else{
				  $("#warningimg").hide();
		  		}
		  	 }
		   }
		});
		$("#element_id").cropper('replace',obj["urlshort"]+"?key="+Math.random());
		
	}
	
	function uploadComplete2(evt) {
		var data = evt.target.responseText;
		var obj = eval("("+data+")");
		if(!obj["success"]){
			return;
		}
		var middleUrl = obj["middleUrl"];
		var shortUrl = obj["shortUrl"];
		var backgroundSize = obj["backgroundSize"];
		var imgId = obj["id"];
		var result = '<div class="zps-upload-btn zps-upload-img" data-id="'+imgId+'" background-image="'+middleUrl+'" data-url="" style="background-size:'+backgroundSize+';background-image: url('+shortUrl+');">'+
  	    	 			'<div class="cover-gray">' +
  	    	 				'<img src="images/zhaopianshuPC-img/29.png">'+
  	    	 			'</div>'+
	 					'<p class="zps-add-new-img-now">添加到当前页</p>'+
	 					'<p class="zps-add-new-img-new">添加到新页</p>'+  	    	 
 					'</div>';
		$(".img-after-flag").after(result);
		select_img();
	}
	
	function uploadComplete3(evt) {
//		pc_h_loading();
		var data = evt.target.responseText;
		var obj = eval("(" + data + ")");
		console.log("data:" + data);
		console.log("obj:" + obj);
		if (!obj["flag"]) {
			$.alert(obj["msg"]);
			return;
		}
		var backImg = obj["url"];
		$('.up-back-img').hide();
		$('.book-back-to-up-img').removeClass('m-show');
		$('.lf-img3').remove();
		$('.up-back-img').after('<a class="lf-img3"><img src="'+backImg+'"></a>');
	}
	
	function uploadFailed(evt) {
		pc_h_loading();
	}

	function uploadCanceled(evt) {
		pc_h_loading();
	}
	
	function compress(img) {
		var data;
		EXIF.getData(img, function () {
			var orientation = EXIF.getTag(this, 'Orientation');
			var canvas = document.createElement('canvas');
			var ctx = canvas.getContext('2d');
			console.log(img.width + "*" + img.height);
			if (orientation && 3 == orientation) {
				canvas.width = img.width;
				canvas.height = img.height;
				console.log("orientation:" + orientation);
				var xpos = canvas.width / 2;
				var ypos = canvas.height / 2;
				ctx.save();
				ctx.translate(xpos, ypos);
				ctx.rotate(180 * Math.PI / 180);//旋转180度
				ctx.translate(-xpos, -ypos);
				ctx.drawImage(img, 0, 0, canvas.width, canvas.height);
				ctx.restore();
			} else if (orientation && 8 == orientation) {
				console.log("orientation:" + orientation);
				canvas.width = img.height;
				canvas.height = img.width;
				var xpos = img.height / 2;
				var ypos = img.width / 2;
				ctx.save();
				ctx.translate(xpos, ypos);
				ctx.rotate(270 * Math.PI / 180);//旋转270度
				ctx.translate(-ypos, -xpos);
				ctx.drawImage(img, 0, 0, img.width, img.height);
				ctx.restore();
			} else if (orientation && 6 == orientation) {
				canvas.width = img.height;
				canvas.height = img.width;
				console.log("orientation:" + orientation);
				var xpos = img.height / 2;
				var ypos = img.width / 2;
				ctx.save();
				ctx.translate(xpos, ypos);
				ctx.rotate(90 * Math.PI / 180);//旋转90度
				ctx.translate(-ypos, -xpos);
				ctx.drawImage(img, 0, 0, img.width, img.height);
				ctx.restore();
			} else {
				canvas.width = img.width;
				canvas.height = img.height;
				ctx.drawImage(img, 0, 0, canvas.width, canvas.height);
			}
			//利用canvas进行绘图
			data = canvas.toDataURL('image/jpeg'); //data url的形式
			console.log("canvas图片大小" + data.length);
			data = canvas.toDataURL('image/jpeg', 0.95)
			console.log("canvas图片大小" + data.length);

		});
		return data;
	}
	
	$(".my-input-btn").bind({
		click : function(event){
			event.stopPropagation();
			var data = {};
			var bdid = $(this).attr('data-id');
			data.bookDataId = bdid;
			var content = $('.my-input-body').val();
			data.content = content;
			data.r = Math.random();
			$.ajax({
				type:"post",
				dataType: "json",
				url:"",
				data:data,
				success:function(res){
					console.log(res);
					if(res.success){
						close_my_input();
						var now_html=res.html;
						$("[bookdataid1='"+bdid+"']").html(now_html);
						$("[bookdataid1='"+bdid+"']").attr("content",content);
						if(content){
							$("[bookdataid1='"+bdid+"']").find('.content-page').removeClass("tipContent");
						}else{
							$("[bookdataid1='"+bdid+"']").find('.content-page').addClass("tipContent");
						}
						$("[bookdataid1='"+bdid+"']").find('.showChangeDiv').each(function(){
							var showChangDiv = $(this);
							var data_background = showChangDiv.attr('data-background');
							showChangDiv.css('background-image','url('+data_background+')');
						});
						init();
					}else{
						my_alert('操作提示',res.msg,'关闭');
					}
				}
			});
		}
	})
	
	function init(){
		showSet();
		content_edit_init();
		delImg();
		show_menu();
		pc_move_menu();
		changePosition();
		turn_book_page();
	}
	
	function content_edit_init(){
		$(".content-page").unbind();
		$(".content-page").bind({
			click : function(event){
				event.stopPropagation();
				var bdata =  $(this).parents('.swiper-slide');
				var content = bdata.attr('content');
				if(content == null){
					content = '';
				}
				var bdid = bdata.attr('bookdataid1');
				$(".my-input-btn").attr('data-id',bdid);
				$('.my-input-body').val('');
				my_input_alert('请添加或修改文字',content,'保存');
			}
		})
	}
	
	$(".pc-book-name").bind({
		blur : function(event){
			event.stopPropagation();
			var bookId = $('#bookId').val();
			var bookName = $('.pc-book-name').val();
			if(bookName == null || bookName == ''){
				return;
			}
			var c = $('#c').val();
			var data = {};
			data.c = c;
			data.r = Math.random();
			data.bookName = bookName;
			data.id = bookId;
			s_si();
			$.ajax({
	        	type: "GET",
		        url: "",
		        data: data,
		        dataType: "json",
		        success: function(data){
		        	if(data.flag){
		        		s_ed();
		        		$('.pc-book-name-t').html(bookName);
		        		$('.bookinfo-bookname').html(bookName);
		        	}else{
		        		s_fail();
		        	}
		        }
	        })
		}
	})
	
	$(".pc-book-author").bind({
		blur : function(event){
			event.stopPropagation();
			var bookId = $('#bookId').val();
			var bookAuthor = $('.pc-book-author').val();
			if(bookAuthor == null || bookAuthor == ''){
				return;
			}
			var c = $('#c').val();
			var data = {};
			data.c = c;
			data.r = Math.random();
			data.bak5 = bookAuthor;
			data.id = bookId;
			s_si();
			$.ajax({
	        	type: "GET",
		        url: "",
		        data: data,
		        dataType: "json",
		        success: function(data){
		        	if(data.flag){
		        		s_ed();
		        		$('.bookinfo-author').find('span').html(bookAuthor);
		        	}else{
		        		s_fail();
		        	}
		        }
	        })
		}
	})
	
	$(".pc-book-title").bind({
		blur : function(event){
			event.stopPropagation();
			var bookId = $('#bookId').val();
			var bookTitle = $('.pc-book-title').val();
			if(bookTitle == null || bookTitle == ''){
				return;
			}
			var c = $('#c').val();
			var data = {};
			data.c = c;
			data.r = Math.random();
			data.bookTitle = bookTitle;
			data.id = bookId;
			s_si();
			$.ajax({
	        	type: "GET",
		        url: "",
		        data: data,
		        dataType: "json",
		        success: function(data){
		        	if(data.flag){
		        		s_ed();
		        		$('.book-bookTitle').html(bookTitle);
		        	}else{
		        		s_fail();
		        	}
		        }
	        })
		}
	})
	
	$(".pic-book-nei-style").bind({
		click : function(event){
			event.stopPropagation();
			var bookId = $('#bookId').val();
			var bookStyle = $(this).attr('data-id');
			if(bookStyle == null || bookStyle == ''){
				return;
			}
			var c = $('#c').val();
			var data = {};
			data.c = c;
			data.r = Math.random();
			data.templateId = bookStyle;
			data.bookId = bookId;
			s_si();
			$.ajax({
	        	type: "GET",
		        url: "",
		        data: data,
		        dataType: "json",
		        success: function(data){
		        	if(data.success){
		        		s_ed();
		        		window.location.href = '/pc/pics/l/pics_edit.html?bookId='+bookId+'&c='+c+'&r='+Math.random();
		        	}else{
		        		s_fail();
		        	}
		        }
	        })
		}
	})
	
	$(".caijian-ok").bind({
		click : function(event){
			event.stopPropagation();
			var id = $('#bookId').val();
			$('.img-caijian-wrap').hide();
			var caijiandata = JSON.stringify($("#element_id").cropper('getData'));
			var data = $("#element_id").cropper('getCroppedCanvas').toDataURL('image/jpeg', 1);
			var fd = new FormData();
			fd.append("caijiandata",caijiandata);
		    fd.append("id",id);
		    fd.append('file', data);
		    var xhr = new XMLHttpRequest();
		    xhr.onreadystatechange = backfun;
		    xhr.open("POST", "/wBook/updateSaveImgsBase64.html");//修改成自己的接口
		    xhr.send(fd);
		    console.log(xhr);
		    function backfun(){
		    	if(xhr.readyState == 4){  
		            //表示和服务器端的交互已经完成  
		            if(xhr.status == 200){  
		            //表示服务器的响应代码是200，正确的返回了数据  
		            //纯文本数据的接受方法 
			            var data = xhr.responseText;  
			            var obj = eval("("+data+")"); 
			            var caijianurl = obj["caijianurl"];
			            $('.bookinfo-first-page-img1').attr('src',caijianurl);
		            }  
		        } 
		    }
		}
	})
	
	function show_menu(){
		$(".showChangeDiv").unbind();
		$(".showChangeDiv").bind({
			click : function(event){
				event.stopPropagation();
				if($(this).find('.pics-img-oppo-btn-move-wrap').find('.pics-img-to-move').hasClass('img-moving')){
					return;
				}
				$('.pics-img-oppo-btn').hide();
				$('.hideChangeDiv').hide();
				var _ = $(this);
				_.find('.pics-img-oppo-btn').hide();
				if(_.hasClass('menu-show')){
					_.find('.hideChangeDiv').hide();
					_.removeClass('menu-show');
				}else{
					nowBookDataResId = _.attr('data-id');
					_.find('.delImg').show();
					_.find('.moveClick').show();
					_.find('.hideChangeDiv').show();
					_.addClass('menu-show');
					_.siblings().find('.hideChangeDiv').show();
					_.siblings().find('.changePosition').show();
				}
				
			}
		})
	}
	
	function changePosition(){
		$(".changePosition").unbind();
		$(".changePosition").bind({
			click : function(event){
				event.stopPropagation();
				var _ = $(this);
				var nowImgId = _.parents('.showChangeDiv').attr('data-id');
				if(nowBookDataResId > 0){
					var c = $('#c').val();
					var data = {};
					data.c = c;
					data.r = Math.random();
					data.bookDataResId = nowImgId;
					data.newBookDataResId = nowBookDataResId;
					s_si();
					$.ajax({
			        	type: "GET",
				        url: "",
				        data: data,
				        dataType: "json",
				        success: function(data){
				        	if(data.success){
				        		var now_html=data.html;
								var bdid = data.bookDataId;
								$("[bookdataid1='"+bdid+"']").html(now_html);
								$("[bookdataid1='"+bdid+"']").find('.showChangeDiv').each(function(){
									var showChangDiv = $(this);
									var data_background = showChangDiv.attr('data-background');
									showChangDiv.css('background-image','url('+data_background+')');
								});
								init();
				        	}
				        }
			        })
				}
			}
		})
	}

	function delImg() {
		$('.delImg').unbind();
		$('.delImg').on('click',function (event) {
			event.stopPropagation();
			var _ = $(this);
			var data = {};
			data.bookDataResId = _.parents('.showChangeDiv').attr('data-id');
			data.r = Math.random();
			console.log(data);
			pc_s_loading('删除中…');
			$.ajax({
				type: "post",
				dataType: "json",
				url: "",
				data: data,
				success: function (res) {
					console.log(res);
//					pc_h_loading();
					if (res.success) {
						_.parents('.showChangeDiv').find('.pics-img-oppo-btn').hide();
						_.parents('.showChangeDiv').find('.hideChangeDiv').hide();
						_.parents('.showChangeDiv').find('.hideChangeDiv').removeClass('menu-show');
						if(res.num == 0){
							var page = _.parents('.page-wrapper').attr('page');
							$("#flipbook").turn('removePage',page);
							totalBookPages = totalBookPages -1;
							$('.turn-cicle-lf').html('第'+picsPage+'页/共'+totalBookPages+'页');
							$('.range').val(picsPage);
							if(totalBookPages%2 == 1){
								$('.pbook-back').removeClass('page');
							}else{
								$('.pbook-back').addClass('page');
							}
						}else{
							var now_html=res.html;
							var bdid = _.parents('.swiper-slide').attr('bookdataid1');
							$("[bookdataid1='"+bdid+"']").html(now_html);
							$("[bookdataid1='"+bdid+"']").find('.showChangeDiv').each(function(){
								var showChangDiv = $(this);
								var data_background = showChangDiv.attr('data-background');
								showChangDiv.css('background-image','url('+data_background+')');
							});
							init();
						}

					} else {
						my_alert('操作提示',res.msg,'关闭');
						return;
					}
				}
			});
		});
	}
	
	function pc_move_menu(){
		$(".moveClick").unbind();
		$(".moveClick").bind({
			click : function(event){
				event.stopPropagation();
				var _ = $(this);
				_.parents('.showChangeDiv').find('.hideChangeDiv').show();
				_.parents('.showChangeDiv').find('.pics-img-oppo-btn').hide();
				_.parents('.showChangeDiv').find('.pics-img-oppo-btn-move-wrap').find('.pics-img-to-move').html('拖动');
				_.parents('.showChangeDiv').find('.pics-img-oppo-btn-move-wrap').show();
			}
		})
		
		$(".pics-img-to-big").unbind();//放大
		$(".pics-img-to-big").bind({
			click : function(event){
				event.stopPropagation();
				var showChangeDiv = $(this).parents('.showChangeDiv');
				var backgroundSize = showChangeDiv.css('background-size');
				if(backgroundSize.indexOf("a") == 0){
					var bili = backgroundSize.replace("auto ","").replace("%","");
					bili  = parseInt(bili) + 6;
					//x可以调整
					showChangeDiv.css("background-size","auto "+bili+"%");
				}else if(backgroundSize.indexOf("a") > 0){
					//y可以调整
					var bili = backgroundSize.replace(" auto","").replace("%","");
					bili  = parseInt(bili) + 6;
					showChangeDiv.css("background-size",bili+"%");
				}else{
					//y可以调整
					var bili = backgroundSize.replace("%","").split(" ");
					if(bili.length == 2){
						var biliX  = parseInt(bili[0]) + 6;
						var biliY  = parseInt(bili[1]) + 6;
						showChangeDiv.css("background-size",biliX+"% "+biliY + "%");
					}else{
						var biliX  = parseInt(bili[0]) + 6;
						showChangeDiv.css("background-size",biliX+"%");
					}
				}
				
				var x = showChangeDiv.css("background-position-x");
				var y = showChangeDiv.css("background-position-y");
				backgroundSize = showChangeDiv.css("background-size");
				var data = {};
				data.bookDataResId = showChangeDiv.attr('data-id');
				data.backgroundPosition = x + "," + y;
				data.backgroundSize = backgroundSize;
				data.r = Math.random();
				$.ajax({
					type: "post",
					dataType: "json",
					url: "",
					data: data,
					success: function (res) {
						console.log(res);
						if (res.success) {
							
						}
					}
				});
			}
		})
		
		$(".pics-img-to-small").unbind();//缩小
		$(".pics-img-to-small").bind({
			click : function(event){
				event.stopPropagation();
				var showChangeDiv = $(this).parents('.showChangeDiv');
				var backgroundSize = showChangeDiv.css('background-size');
				if(backgroundSize.indexOf("a") == 0){
					var bili = backgroundSize.replace("auto ","").replace("%","");
					bili  = parseInt(bili) - 6;
					if(bili < 100){
						bili = 100;
					}
					//x可以调整
					showChangeDiv.css("background-size","auto "+bili+"%");
				}else if(backgroundSize.indexOf("a") > 0){
					//y可以调整
					var bili = backgroundSize.replace(" auto","").replace("%","");
					bili  = parseInt(bili) - 6;
					if(bili < 100){
						bili = 100;
					}
					showChangeDiv.css("background-size",bili+"%");
				}else{
					//y可以调整
					var bili = backgroundSize.replace("%","").split(" ");
					if(bili.length == 2){
						var biliX  = parseInt(bili[0]) - 6;
						var biliY  = parseInt(bili[1]) - 6;
						if(biliX < 100){
							biliX = "100%";
							biliY = "auto";
						}
						if(biliY < 100){
							biliY = "100%";
							biliX = "auto";
						}
						showChangeDiv.css("background-size",biliX+" "+biliY);
					}else{
						var biliX  = parseInt(bili[0]) - 6;
						var biliY = parseInt(bili[0]) - 6;
						if(biliX < 100){
							biliX = "100%";
							biliY = "auto";
							showChangeDiv.css("background-size",biliX+" "+biliY);
						}else{
							showChangeDiv.css("background-size",biliX+"%");
						}

					}
				}
				
				var x = showChangeDiv.css("background-position-x");
				var y = showChangeDiv.css("background-position-y");
				backgroundSize = showChangeDiv.css("background-size");
				var data = {};
				data.bookDataResId = showChangeDiv.attr('data-id');
				data.backgroundPosition = x + "," + y;
				data.backgroundSize = backgroundSize;
				data.r = Math.random();
				$.ajax({
					type: "post",
					dataType: "json",
					url: "",
					data: data,
					success: function (res) {
						console.log(res);
						if (res.success) {
							
						}
					}
				});
			}
		})
		
		
		$(".pics-img-to-move").unbind();//去移动
		$(".pics-img-to-move").bind({
			click : function(event){
				event.stopPropagation();
				var _ = $(this);
				_.parents('.showChangeDiv').find('.hideChangeDiv').show();
				_.parents('.showChangeDiv').find('.pics-img-oppo-btn').hide();
				var html_move_tip = '<p>按下鼠标拖动</p><p class="pics-move-tip-btn"><a href="javascript:;" class="pics-move-tip-btn-a">确定</a></p>';
				_.parents('.showChangeDiv').find('.moveTip').html(html_move_tip);
				$(".pics-move-tip-btn-a").unbind();
				$(".pics-move-tip-btn-a").bind({
					click : function(event){
						event.stopPropagation();
						_.parents('.showChangeDiv').find('.pics-img-oppo-btn-move-wrap').find('.pics-img-to-move').removeClass('img-moving');
						_.parents('.showChangeDiv').find('.hideChangeDiv').unbind("mousemove");
						_.parents('.showChangeDiv').find('.hideChangeDiv').hide();
						_.parents('.showChangeDiv').removeClass('menu-show');
						$('.pics-img-oppo-btn').hide();
						$('.hideChangeDiv').hide();
					}
				})
				_.parents('.showChangeDiv').find('.moveTip').show();
				_.parents('.showChangeDiv').find('.pics-img-oppo-btn-move-wrap').find('.pics-img-to-move').addClass('img-moving');
			}
		})
		
		$(".hideChangeDiv").mousedown(function(event){
				event.stopPropagation();
				var distanceX = 0;
				var distanceY = 0;
				distanceX = event.pageX;
				distanceY = event.pageY;
				m_down = 1;
				$(".hideChangeDiv").unbind("mousemove");
	  	  	   $(".hideChangeDiv").mousemove(function(ev){
	  	  		ev.stopPropagation();
	  	  		   if(m_down == 1 && $(this).find('.pics-img-oppo-btn-move-wrap').find('.pics-img-to-move').hasClass('img-moving')){
		  	  		// console.log(event);
	  	  			$('.hideChangeDiv').css('cursor','move');
	  	  			   var backgroundSize = $(this).parents('.showChangeDiv').css('background-size');
						var beishu = 0;
						if(backgroundSize.indexOf("a") == 0){
							// console.log(backgroundSize.indexOf("a"));
							//x可以调整
							beishu = parseFloat(backgroundSize.replace("auto ","").replace("%",""))/100;
						}else if(backgroundSize.indexOf("a") > 0 ){
							//y可以调整
							beishu = parseFloat(backgroundSize.replace(" auto","").replace("%",""))/100;
						}else{
							beishu = parseFloat(backgroundSize.replace("%",""))/100;
						}
						console.log('beishu'+beishu);
						console.log(ev);
						var x = $(this).parents('.showChangeDiv').css("background-position-x").replace("%","");
						var y = $(this).parents('.showChangeDiv').css("background-position-y").replace("%","");
						console.log("原百分比:"+x);
						console.log("原百分比:"+y);
						console.log('scale'+scale);
						var newX = parseFloat(x)-parseFloat((ev.pageX-distanceX))/($(this).parents('.showChangeDiv').width()*scale)*100/beishu;
						var newY = parseFloat(y)-parseFloat((ev.pageY-distanceY))/($(this).parents('.showChangeDiv').height()*scale)*100/beishu;
						console.log('移动距宽'+(ev.pageX-distanceX));
						console.log('移动距离'+(ev.pageY-distanceY));
						console.log('盒子长'+($(this).parents('.showChangeDiv').width()*scale) + '盒子高'+($(this).parents('.showChangeDiv').height()*scale));
						distanceX = ev.pageX;
						distanceY = ev.pageY;
						if(newX > 100){
							newX = 100;
						}
						if(newX < 0){
							newX = 0;
						}
						if(newY > 100){
							newY = 100;
						}
						if(newY < 0){
							newY = 0;
						}
						
						if(backgroundSize.indexOf("a") == 0 && backgroundSize.indexOf("100%") > 0 ){
							// console.log(backgroundSize.indexOf("a"));
							//x可以调整
							$(this).parents('.showChangeDiv').css("background-position-x",newX+"%");
						}else if(backgroundSize.indexOf("a") > 0 && backgroundSize.indexOf("100%") == 0){
							//y可以调整
							$(this).parents('.showChangeDiv').css("background-position-y",newY+"%");
						}else{
							//y可以调整
							$(this).parents('.showChangeDiv').css("background-position-x",newX+"%");
							$(this).parents('.showChangeDiv').css("background-position-y",newY+"%");
						}
						console.info('newX'+newX+'newY'+newY);
	  	  		   } 	  	   	    
	  	  	   })	  	  	   
	  	  })
  	  $(".hideChangeDiv").mouseup(function(event){
  		  event.stopPropagation();
	   	    console.log("抬起");
	   	    m_down = 0;
	   	    $('.hideChangeDiv').css('cursor','');
	   	    //$(this).find('.pics-img-oppo-btn-move-wrap').find('.pics-img-to-move').removeClass('img-moving')
	   	   // $(".hideChangeDiv").unbind("mousemove");
	   	    if($(this).find('.pics-img-oppo-btn-move-wrap').find('.pics-img-to-move').hasClass('img-moving')){
	   	    	var showChangeDiv = $(this).parents('.showChangeDiv');
			   	var x = showChangeDiv.css("background-position-x");
				var y = showChangeDiv.css("background-position-y");
				var backgroundSize = showChangeDiv.css("background-size");
				var data = {};
				data.bookDataResId = showChangeDiv.attr('data-id');
				data.backgroundPosition = x + "," + y;
				data.backgroundSize = backgroundSize;
				data.r = Math.random();
				$.ajax({
					type: "post",
					dataType: "json",
					url: "",
					data: data,
					success: function (res) {
						console.log(res);
						if (res.success) {
							
						}
					}
				});
	   	    }
  	  })
	}
	
	$("#flipbook").bind("turned", function(event, page, view) {
		content_edit_init();
		delImg();
		show_menu();
		pc_move_menu();
		changePosition();
		turn_book_page();
		/*$(".up-back-img>img").unbind();
		$(".up-back-img>img").bind({
			click : function(){
				$('.img-back-input').click();
			}
		})
		$(".book-back-to-up-img").unbind();
		$(".book-back-to-up-img").bind({
			click : function(){
				if($(this).hasClass('m-show')){
					$(".up-back-img").hide();
					$(this).removeClass('m-show');
				}else{
					$(".up-back-img").show();
					$(this).addClass('m-show');
				}
			}
		})*/
		picsPage = page;
		if(picsPage%2==1){
			picsPage = picsPage - 1;
			if(picsPage==0){
				picsPage=1;
			}
		}
		if(picsPage>1 && picsPage < totalBookPages){
			$('.page-wrapper').css('box-shadow','-6px 0px 6px rgba(0,0,0,0.1), 6px 0px 6px rgba(0,0,0,0.1)');
			$('.book-view-box').css('box-shadow','6px 6px 6px rgba(0,0,0,0.1), -6px 6px 6px rgba(0,0,0,0.1),6px 6px 6px rgba(0,0,0,0.1), 6px -6px 6px rgba(0,0,0,0.1)');
		}else{
			$('.page-wrapper').css('box-shadow','');
			$('.book-view-box').css('box-shadow','');
		}
		$('.turn-cicle-lf').html('第'+picsPage+'页/共'+totalBookPages+'页');
		$('.range').val(picsPage);
		if(totalBookPages%2 == 1){
			$('.pbook-back').removeClass('page');
		}else{
			$('.pbook-back').addClass('page');
		}
		
		$('.showChangeDiv').find('.pics-img-oppo-btn-move-wrap').find('.pics-img-to-move').removeClass('img-moving');
		$('.showChangeDiv').find('.hideChangeDiv').unbind("mousemove");
		$('.showChangeDiv').find('.hideChangeDiv').hide();
		$('.showChangeDiv').removeClass('menu-show');
		$('.pics-img-oppo-btn').hide();
		$('.hideChangeDiv').hide();
	});
	
	$(".click-send-pic-txt").unbind();
	$(".click-send-pic-txt").bind({
		click : function(event){
			event.stopPropagation();
			var _ = $(this);
			var totalHtml = '';
			if(picsPage == 1){
				return;
			}
			$('.page-wrapper[page='+picsPage+']').find('.showChangeDiv').each(function(){
				totalHtml = totalHtml + '<div style="margin-top: 15px;"><img width="10%" src="'+$(this).attr('data-background')+'"/><textarea data-id="'+$(this).attr('data-id')+'" rows="2" style="width: 80%;border: 1px solid #ddd;border-radius: 5px;margin-left: 15px;resize: none;" class="my-pic-input-body" maxlength="10" placeholder="为图片添加说明(最多10字)"></textarea></div>';
			});
			$('.page-wrapper[page='+(picsPage+1)+']').find('.showChangeDiv').each(function(){
				totalHtml = totalHtml + '<div style="margin-top: 15px;"><img width="10%" src="'+$(this).attr('data-background')+'"/><textarea data-id="'+$(this).attr('data-id')+'" rows="2" style="width: 80%;border: 1px solid #ddd;border-radius: 5px;margin-left: 15px;resize: none;" class="my-pic-input-body" maxlength="10" placeholder="为图片添加说明(最多10字)"></textarea></div>';
			});
			$('#myModal3').find('.modal-body').html(totalHtml);
			$('#myModal3').modal('show');
		}
	})
	
	$(".my-pic-input-btn").unbind();//图片描述
	$(".my-pic-input-btn").bind({
		click : function(event){
			event.stopPropagation();
			var ids = "";
			var contents = "";
			$(".my-pic-input-body").each(function () {
				var _ = this;
				ids += $(_).attr("data-id") + ",";
				contents += $(_).val() + "<|>";
			});
			var data = {};
			data.ids = ids;
			data.contents = contents;
			$.ajax({
				type: "post",
				dataType: "json",
				url: "",
				data: data,
				success: function (res) {
					console.log(res);
					if (res.success) {
						$(".my-pic-input-body").each(function () {
							var imgwrap = $(this);
							var bdrestid = imgwrap.attr("data-id");
							var imgTxt = imgwrap.val();
							if(bdrestid != null && imgTxt != null){
								$('.showChangeDiv[data-id='+bdrestid+']').find('.imgContent').html(imgTxt);
							}
						});

					}
				}
			});
			$('#myModal3').modal('hide');
		}
	})
	
	$(".range").unbind();//滑动翻页
	$(".range").bind({
		change : function(event){
			event.stopPropagation();
			var pageStr  = $(this).val();
			if(pageStr != null && pageStr != ''){
				$("#flipbook").turn("page", parseInt(pageStr));
			}
		}
	})
	
	$(".click-send-book-pic-style").unbind();//更换当前页面版式
		$(".click-send-book-pic-style").bind({
			click : function(event){
				event.stopPropagation();
				var _ = $(this);
				var bookId = $('#bookId').val();
				var c = $('#c').val();
				if(picsPage <2 || picsPage > totalBookPages - 1){
					return;
				}
				var bookDataId = '0';
				var randomPage = new Date().getTime()%2;
				bookDataId = $('.page-wrapper[page='+(picsPage+randomPage)+']').find('.swiper-slide').attr('bookdataid1');
				var data = {};
				data.c = c;
				data.r = Math.random();
				data.bookDataId = bookDataId;
				pc_s_loading('处理中…');
				$.ajax({
		        	type: "GET",
			        url: "",
			        data: data,
			        dataType: "json",
			        success: function(data){
			        	pc_h_loading();
			        	if(data.success){
			        		var now_html=data.html;
							var bdid = bookDataId;
							$("[bookdataid1='"+bdid+"']").html(now_html);
							$("[bookdataid1='"+bdid+"']").find('.showChangeDiv').each(function(){
								var showChangDiv = $(this);
								var data_background = showChangDiv.attr('data-background');
								showChangDiv.css('background-image','url('+data_background+')');
							});
							init();
			        		my_alert('操作提示','更换成功','关闭');
			        	}else{
			        		my_alert('操作提示','更换失败','关闭');
			        	}
			        }
		        })
			}
		})
		
		$(".front-cover-pic ul li").unbind();//封面版式
		$(".front-cover-pic ul li").bind({
			click : function(event){
				event.stopPropagation()
				$(".select-ck").hide();
			   	$(this).find(".select-ck").show();
			   	var bookCoverStyle = $(this).attr('data-id');
			   	s_si();
			   	var dataCover = {};
				dataCover.id = $('#bookId').val();
				dataCover.bookCoverStyle = bookCoverStyle;
				var c = $('#c').val();
				dataCover.c = c;
				dataCover.rc = 'imgrc';
				$.ajax({
					type: "POST",
					url: "/wBook/changeBookCoverStyle.html?r="+Math.random(),
					data: dataCover,
					dataType: "json",
					async: false,
					success: function(data){
						if(data.flag){
							s_ed();
							window.location.href = '/pc/pics/l/pics_edit.html?bookId='+bookId+'&c='+c+'&r='+Math.random();
						}else{
							s_fail();
						}
					}
				});
			}
		})
		
		function turn_book_page(){
			$(".page-wrapper").each(function(){
				if($(this).hasClass('pc-turn-ev')){
					
				}else{
					$(this).addClass('pc-turn-ev');
					$(".page-wrapper").bind({
						click : function(event){
							event.stopPropagation();
							$('.turn-action').hide();
							var book_page_str = $(this).attr('page');
							var book_page = 0;
							if(book_page_str != null){
								book_page = parseInt(book_page_str);
							}
							if(book_page > 0 && book_page < totalBookPages){
								if(book_page%2 == 0){
									$("#flipbook").turn("page", book_page - 1);
								}else if(book_page%2 == 1){
									$("#flipbook").turn("page", book_page + 1);
								}
							}
						}
					})
				}
			  });
		}
		
		function ss(){
			var coverImg = $('#bookCoverImg').val();
			var bookCoverEdit = $('#bookCoverEdit').val();
			if(coverImg != null && coverImg != '' && bookCoverEdit == '1'){
				$('.img-caijian-wrap').show();
				$("#element_id").attr('src',coverImg);
				$("#element_id").cropper('destroy');
				$("#element_id").cropper({
				  viewMode:2,
				  cropBoxResizable:true,
				  dragMode:'move',
				  movable:false,
				  aspectRatio: scale_,
				  autoCropArea:1,
				  background:false,
				  responsive:true,
				  checkImageOrigin:false,
				  crop: function(data) {
					  
				   }
				});
				$("#element_id").cropper('replace',coverImg+"?key="+Math.random());
			}
		}
		
		ss();
	
});