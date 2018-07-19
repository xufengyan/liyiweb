var isLogin = false;//是否已经登录
var isWorkShop = false;//是否是工作室用户
var vmm = new Vue({
	el: "#app_head",
	data: {
		/*头部*/
		curIndex: '0', //当前的选项卡所处的位置
		touchIndex: '0', //鼠标移动到标题上时高亮的位置
		showMenu: false, //是否显示H5菜单栏
		showAllpro: false, //显示所有产品
		showAlltheme: false, //显示所有主题
		showCenter: false, //显示个人中心
		isLogin: false,//是否已经登录
		name: '',//登录名称
		headImg: '',
		lvName: '',
		loginMsg: '',//loginmsg
		ishowCode: false,
		iShowGotop: false,//是否显示gotop
		isWorkshop: false,//是否是工作室用户
		shopcarCount: 0,//购物车的数量
		/*头部*/
	},
	methods: {
		getShopcarCount: function(){
			var that = this;
			superagent
				.post('http://i.mimoprint.com/Mycenter/UserinfoByHeader')
				.set('Content-Type', 'application/x-www-form-urlencoded')
				.withCredentials()
				.query('hostName=' + window.location.origin)
				.end(function(err, res){
					if(res.statusCode == 200){
						that.shopcarCount = res.body.count ? res.body.count : 0;
					}else {
						that.shopcarCount = 0;
					}
				})
		},
		showCode: function (num) {
			if (num == '1') {
				this.ishowCode = false;
			} else {
				this.ishowCode = true;
			}
		},
		/*头部*/
		downApp: function () {
			var u = navigator.userAgent;
			var ios = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/);
			var android = u.indexOf('Android') > -1 || u.indexOf('Linux') > -1;
			if (ios) {
				window.location = "https://itunes.apple.com/cn/app/id1104188183";
			} else if (android) {
				window.location = "http://a.app.qq.com/o/simple.jsp?pkgname=com.gzmob.mimo";
			}
		},
		sendTime: function () {
var dom = document.getElementById('get_send_time');
			var dom2 = document.getElementById('get_send_time2');
            if (typeof widget_sendTime == "undefined") {
                if (document.addEventListener) {
                    document.addEventListener('WidgetSendTimeReady', widget_sendTime.init(dom, dom2), false);
                } else if (document.attachEvent) {
                    document.attachEvent('WidgetSendTimeReady', widget_sendTime.init(dom, dom2));
                    document.attachEvent('onWidgetSendTimeReady', widget_sendTime.init(dom, dom2));
                }
            } else {
                widget_sendTime.init(dom, dom2)
            }			},

		showPersonal: function () {
			document.getElementsByClassName('exterRight')[0].style.display = 'block';
		},

		hidePersonal: function () {
			document.getElementsByClassName('exterRight')[0].style.display = 'none';
		},

		getTouchIndex: function (num) {
			this.touchIndex = num;
		},

		resetTouchIndex: function () {
			this.touchIndex = 0;
		},

		isShow: function () {
			if (this.showMenu) {
				this.showMenu = false;
			} else {
				this.showMenu = true;
			}
			
			var vid = document.getElementsByClassName('videoo');
			if(vid){
				var android = navigator.userAgent.indexOf('Android') > -1 || navigator.userAgent.indexOf('Linux') > -1;
			    for(var k = 0 ;k < vid.length; k++){
			    	vid[k].pause();
			    	if(this.showMenu && android){
			    		vid[k].style.display = 'none';
			    	}else {
			    		vid[k].style.display = 'block';
			    	}
			    }
			}
		},
		goTop: function () {
			var acceleration = 0.1,
				time = 16;

			var x1 = 0;
			var y1 = 0;
			var x2 = 0;
			var y2 = 0;
			var x3 = 0;
			var y3 = 0;

			if (document.documentElement) {
				x1 = document.documentElement.scrollLeft || 0;
				y1 = document.documentElement.scrollTop || 0;
			}
			if (document.body) {
				x2 = document.body.scrollLeft || 0;
				y2 = document.body.scrollTop || 0;
			}
			var x3 = window.scrollX || 0;
			var y3 = window.scrollY || 0;

			// 滚动条到页面顶部的水平距离
			var x = Math.max(x1, Math.max(x2, x3));
			// 滚动条到页面顶部的垂直距离
			var y = Math.max(y1, Math.max(y2, y3));

			// 滚动距离 = 目前距离 / 速度, 因为距离原来越小, 速度是大于 1 的数, 所以滚动距离会越来越小
			var speed = 1 + acceleration;
			window.scrollTo(Math.floor(x / speed), Math.floor(y / speed));

			// 如果距离不为零, 继续调用迭代本函数
			if (x > 0 || y > 0) {
				window.setTimeout(this.goTop, time);
			}
		},
		getLoginmsg: function () {
			var that = this;
			
			superagent
                .post('http://design.mimoprint.com/User/MimoUserInfo')
                .withCredentials()
				.end(function (err, res) {
					if (res.body.result == 200) {
						that.isLogin = true;
						isLogin = true;
						that.loginMsg = res.body.datas;
						that.name = that.loginMsg.nickName;
						that.lvName = that.loginMsg.level;
						that.isWorkshop = that.loginMsg.isWorkShop;
						isWorkShop = that.isWorkshop;
						var headImg = that.loginMsg.image;
						if (headImg == null) {
							that.headImg = '/common/img/icon_portrait.png';
						} else if (headImg.indexOf('http') != -1) {
							that.headImg = headImg;
						} else {
							that.headImg = 'http://design.mimoprint.com/static/' + headImg;
						}
						var u = navigator.userAgent;
						if(that.name.length > 9 && !u.match(/AppleWebKit.*Mobile.*/)){
							that.name = that.name.substring(0,6) + '...';
						}
						that.getShopcarCount();
					} else if (res.body.code == 90) {
						console.log("没有登录。");
					}
				})
		},
		init: function () {
			this.getLoginmsg();
			setTimeout(function(){
				document.getElementsByClassName('menuCon_h5')[0].style.display = 'block';
			},500);
		}
		/*头部*/
	},
	mounted: function () {
		this.init();
		this.sendTime();
		
		window.onscroll = function () {
			var exTop = document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;;
			if (exTop > 180) {
				vmm.iShowGotop = true;
			} else if (exTop <= 180) {
				vmm.iShowGotop = false;
			}
		};

		var link = document.createElement('link');
		link.rel = "shortcut icon";
		link.href = "/common/img/favicon.ico";
		document.getElementsByTagName('head')[0].appendChild(link);

		var getUrl = location.pathname;
		switch (getUrl) {
			case "/index":
				this.curIndex = 0;
				break;
			case "/product/index":
				this.curIndex = 1;
				break;
			case "/product/calendars/index":
				this.curIndex = 2;
				break;
			case "/product/photo-book/index":
				this.curIndex = 3;
				break;
			case "/product/timebooks/index":
				this.curIndex = 4;
				break;
			case "/product/prints/index":
				this.curIndex = 5;
				break;
			case "/product/frames/index":
				this.curIndex = 6;
				break;
			case "/product/goods/index":
				this.curIndex = 7;
				break;
			case "/stage/index":
				this.curIndex = 8;
				break;
			case "/product/packages/index":
				this.curIndex = 9;
				break;
			default:
				this.curIndex = 0;
				break;
		}
	}
});

/*
 	美洽客服相关
 * */
(function(m, ei, q, i, a, j, s) {
    m[i] = m[i] || function() {
        (m[i].a = m[i].a || []).push(arguments)
    };
    j = ei.createElement(q),
        s = ei.getElementsByTagName(q)[0];
    j.async = true;
    j.charset = 'UTF-8';
    j.src = 'https://static.meiqia.com/dist/meiqia.js?_=t';
    s.parentNode.insertBefore(j, s);
})(window, document, 'script', '_MEIQIA');
_MEIQIA('entId', 91990);

_MEIQIA('withoutBtn');