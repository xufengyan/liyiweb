var vm = new Vue({
	el: "#app",
	data: {
		data: '',//all msg
		curSilder: 1,//banner轮播下标
	    marlen: 0,//调整banner图片居中
	    isMobile: false,//是否是750以下的屏幕
	    commentList: [],//评论列表
	    allCommentList: {},//全部评论列表
	    curComIndex: 1,//当前评论下标
	    proShow: [],//展厅列表
	    proList: [],//独家创意产品列表
	    curListIndex: 1,//当前独家创意产品列表下标
	    proNew: [],//最新产品
	    bestPrint: [],//品质最好个性印品
	    banner: [],//all banner msg
	    theme: [],//all theme msg
	    video: '',//
	    isVideo: false,//这玩意还不一定是视频
	    showNewPro: false,//是否是新产品
	    showHotPro: false,//是否是最热门的产品
	},
	methods: {
		makeItUp: function(num, ind){
			if(num == 1){
				var ss = document.getElementsByClassName('product')[1];
				if(ss.getElementsByTagName('li')[ind] != undefined){
					ss.getElementsByTagName('li')[ind].getElementsByClassName('new')[0].className = 'new active';
					ss.getElementsByTagName('li')[ind].getElementsByClassName('hot')[0].className = 'hot active';
				}
			}else if(num == 2){
				var ss = document.getElementsByClassName('product')[1];
				if(ss.getElementsByTagName('li')[ind] != undefined){
					ss.getElementsByTagName('li')[ind].getElementsByClassName('new')[0].className = 'new';
					ss.getElementsByTagName('li')[ind].getElementsByClassName('hot')[0].className = 'hot';
				}
			}
		},
		runNow: function(){
			window.location.href = this.data.occassionVedio[0].url;
		},
		getTheme: function(){
			this.theme = this.data.occassion;
		},
		closeVideo: function(){
			document.getElementById('vedioShow').style.display = 'none';
			//document.getElementsByTagName('video')[0].stop();
		},
		showVedio: function(){
			document.getElementById('vedioShow').style.display = 'block';
			//document.getElementsByTagName('video')[0].play();
		},
		getProNew: function(){
			var originality = this.data.originality;
			var newPro = this.data.newPro;
			this.proNew = {
				'1': originality,
				'2': newPro
			};
		},
		changeProList:function(num){
			this.proList = this.proNew[num];
			this.curListIndex = num;
		},
		getProList: function(){
			this.proList = this.proNew[1];
		},
		getProShow: function(){
			this.proShow = this.data.gallery;
		},
		changeCommentLsit: function(leftOrRight) {
			var length = this.allCommentList.length;
			var len =  length/4;
			if (leftOrRight == 'left') {
				this.curComIndex += 1;
				if(this.curComIndex > len && len > parseInt(len)){
					this.curComIndex = 1;
					//return;
				}
				this.commentList = [];
				for(var n = 0; n < 4; n++){
					this.commentList.push(this.allCommentList[n + this.curComIndex]);
				}
			} else if((leftOrRight == 'right')){
				
				this.curComIndex -= 1;
				if(this.curComIndex <= 0){
					this.curComIndex = 0;
					//return ;
				}
				this.commentList = [];
				for(var n = 0; n < 4; n++){
					this.commentList.push(this.allCommentList[n - this.curComIndex]);
				}
			}
		},
		getCommentList: function() {
			this.allCommentList = this.data.comment;
			if(this.allCommentList.length > 4){
				for(var n = 0; n < 4; n++){
					this.commentList.push(this.allCommentList[n]);
				}
			}else {
				for(var n = 0; n < this.allCommentList.length; n++){
					this.commentList.push(this.allCommentList[n]);
				}
			}
			
			this.curComIndex = 1;
		},
		sendTime: function () {
var dom = document.getElementById('get_send_time3');
            if (typeof widget_sendTime == "undefined") {
                if (document.addEventListener) {
                    document.addEventListener('WidgetSendTimeReady', widget_sendTime.init_no(dom), false);
                } else if (document.attachEvent) {
                    document.attachEvent('WidgetSendTimeReady', widget_sendTime.init_no(dom));
                    document.attachEvent('onWidgetSendTimeReady', widget_sendTime.init_no(dom));
                }
            } else {
                widget_sendTime.init_no(dom)
            }			},
		judgeWidth: function(){
	    	var screenWid = window.innerWidth;
	    	var bestPrint = this.bestPrint;
	    	this.bestPrint = [];
	    	if(screenWid <= 750){
	        	this.isMobile = true;
	        	this.bestPrint = this.data.bestPrint;
	    	}else {
	        	this.isMobile = false;
	        	for(var n = 0;n < 5; n++){
	        		this.bestPrint.push(bestPrint[n])
	        	}
	    	}
	    },
	    marLen: function(){
	    	var screenWid = window.innerWidth;
	    	if(screenWid < 1920){
	        	var marLeft = (1920-screenWid)/2;
	    	}
	    	this.marlen = marLeft;
	    },
	    changeSlider: function(num){
	    	this.curSilder = num;
	    	var sliderBox = document.getElementsByClassName('sliderBox')[0];
	        sliderBox.style.left = -(parseInt(this.curSilder)*1920) + 'px';
	        this.curSilder += 1;
	        if(this.curSilder == 3){
	        	this.curSilder = 0;
	        }
	    },
	    changeSize: function(){
	    	var scWidth = window.innerWidth;
			var aa = document.getElementsByClassName('sliderBaner')[0].getElementsByClassName('swiper-slide');
			var realLeft = (1920 - scWidth)/2;
			if(realLeft <= 0){
				return;
			}
			for(var bb = 0; bb < aa.length; bb++){
				aa[bb].getElementsByTagName('img')[0].style.cssText = 'transform:translateX(-'+ realLeft +'px);-webkit-transform:translateX(-' + realLeft +'px);-moz-transform:translateX(-' + realLeft +'px);-ms-transform:translateX(-' + realLeft +'px);';
			}
	    },
	    init: function(){
	    	var that = this;
	    	superagent
	    		.get('/api/index')
				.set('Content-Type', 'application/json')
				.end(function(err, res){
					if(res.statusCode == 200){
						that.data = JSON.parse(res.text).data; 
						that.banner = that.data.banner; 
						that.bestPrint = that.data.bestPrint;
						that.judgeWidth();
						that.getProNew();
						that.getProList();
						that.getProShow();
		    			that.getCommentList();
		    			that.getTheme();
		    			that.video = that.data.occassionVedio[0].vediourl;
		    			
		    			if(that.video.indexOf('.mp4') != -1){
							that.isVideo = true;
						}else {
							that.isVideo = false;
						}
		    			setTimeout(function(){
		    				document.getElementById('vedio').innerHTML = "<source src="+that.video+" type='video/mp4'></source>"
		    			},500);
		    			
		    			Vue.nextTick(function(){
		    				that.changeSize();
		    			})
		    			
					}else {
						alert("网络连接错误！");
					}
				});
	    	this.marLen();
		    var that = this;
		    window.onresize = function(){
		        that.marLen();
		        that.judgeWidth();
		    }
	    },
	},
	mounted: function(){
		this.init();
    	this.sendTime();
		
		window.onresize = function(){
			vm.changeSize();
		}
		
		if (document.getElementsByClassName('swiper2').length != 0) {
			mySwiper2 = new Swiper('.swiper2', {
				autoplay: 5000,
				direction: 'horizontal',
				pagination: '.swiper-pagination',
				observeParents: false,
				observer:true,//修改swiper自己或子元素时，自动初始化swiper 
			})
		}
		
		if (document.getElementsByClassName('swiper3').length != 0) {
			mySwiper2 = new Swiper('.swiper3', {
				autoplay: 5000,
				direction: 'horizontal',
				pagination: '.swiper-pagination',
				paginationClickable :true,
				observeParents: false,
				observer:true,//修改swiper自己或子元素时，自动初始化swiper 
			})
		}
	}
});
