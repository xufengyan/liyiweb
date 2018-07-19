/*
 	PC和h5共用一个文件\(^o^)/~
 * */
var imggg;
var mySwiper2;
var ModalHelper = (function(bodyCls) {
  var scrollTop;
  return {
  	//不雨荨滚动
    afterOpen: function() {
      scrollTop = document.scrollingElement.scrollTop;
      document.body.classList.add(bodyCls);
      document.body.style.top = -scrollTop + 'px';
    },
    //雨荨滚动
    beforeClose: function() {
      document.body.classList.remove(bodyCls);
      document.scrollingElement.scrollTop = scrollTop;
    }
  };
})('modal-open');

var vm = new Vue({
	el: "#app",
	data: {
		data: "",//ajax回来的数据
		productName: "",//产品名称
		productType: "",//当前产品分类
		productList: "",//当前产品大分类
		description: "",//
		proPrice: '',//当前选择下的价格
		proComment: '',//评论数量
		proSale: '',//月销售多少份
		productSelimg: [],//左侧选择图片列表
		prodcutBigimg: [],//产品大图列表
		isVideo: false,//当前选择的是不是视频
		curBigimgIndex: '0',//当前产品大图下标
		curBigimg: "product/detail/img/default.jpg",//当前显示产品大图
		inchSize: [],//全部的产品尺寸(in)
		allSize: [],//全部的产品尺寸(cm)
		proSize: [],//只显示三个产品尺寸
		curSizeType: '1',//当前选择的是厘米还是英寸（1：厘米，2：英寸）
		hideMoreSize: false,//产品尺寸超过三个就显示下拉箭头
		proPrint: [],//产品印刷
		proBind: [],//产品装订
		proCover: [],//产品封面
		curSize: '',//当前选中的尺寸
		curPrint: '',//当前选中的印刷工艺
		curBind: '',//当前选中的装订
		curCover: '',//当前选中的封面
		proPaper: [],//产品纸张
		curPaper: '',//当前纸张
		proFrame: [],//产品画框
		curFrame: '',//当前选中的画框
		proCapacity: [],//产品画框
		curCapacity: '',//当前选中的画框
		proStyle: [],//产品画框
		curStyle: '',//当前选中的画框
		proGift: [],//礼包套餐
		curGift: '',//当前选中的礼包
		proBox: [],//
		proActivity: [],//领券全是富文本
		detailMsg: '',//产品详情
		mdetailMsg: '',//H5产品详情
		isShowPrint: false,//是否显示印刷工艺
		allprintMsg: [//印刷工艺的全部介绍
		],
		curprintMsg: {//印刷工艺展示的那个介绍
			'img': 'product/detail/img/printDetail01.jpg',
			'con': '默认文案'
		},
		isShowCover: false,//是否显示封面信息
		allcoverMsg: [//封面的全部介绍
		],
		curcoverMsg: {//封面展示的那个介绍
			'img': 'product/detail/img/coverDetail01.jpg',
			'con': '默认文案'
		},
		isShowBind: false,//是否显示装订工艺
		allbindMsg: [//装订工艺的全部介绍
		],
		curbindMsg: {//装订工艺展示的那个介绍
			'img': 'product/detail/img/printDetail01.jpg',
			'con': '默认文案'
		},
		isShowFrame: false,//是否显示画框
		allframeMsg: [//画框的全部介绍
		],
		curframeMsg: {//画框展示的那个介绍
			'img': 'product/detail/img/printDetail01.jpg',
			'con': '默认文案'
		},
		isShowPaper: false,//是否显示画框
		allpaperMsg: [//画框的全部介绍
		],
		curpaperMsg: {//画框展示的那个介绍
			'img': 'product/detail/img/printDetail01.jpg',
			'con': '默认文案'
		},
		isShowCapacity: false,//是否显示容量
		allcapacityMsg: [//容量的全部介绍
		],
		curcapacityMsg: {//容量的那个介绍
			'img': 'product/detail/img/printDetail01.jpg',
			'con': '默认文案'
		},
		isShowStyle: false,//是否显示容量
		allstyleMsg: [//容量的全部介绍
		],
		curstyleMsg: {//容量的那个介绍
			'img': 'product/detail/img/printDetail01.jpg',
			'con': '默认文案'
		},
		isShowGift: false,//是否显示容量
		allgiftMsg: [//容量的全部介绍
		],
		curgiftMsg: {//容量的那个介绍
			'img': 'product/detail/img/printDetail01.jpg',
			'con': '默认文案'
		},
		isShowBox: false,//是否显示容量
		allboxMsg: [//容量的全部介绍
		],
		curboxMsg: {//容量的那个介绍
			'img': 'product/detail/img/printDetail01.jpg',
			'con': '默认文案'
		},
		isShowSize: false,
		allsizeMsg: [
		],
		cursizeMsg: {
			'img': 'product/detail/img/printDetail01.jpg',
			'con': '默认文案'
		},
		recomment: [],//猜您喜欢
		sliderMsg: [],//h5了解详情区别
		ishowDetail: false,//显示h5了解详情区别
		detailIndex: 1,//下标
		sliderLength: 0,
		unit: '',//价格单位
		qi: '',//是否存在起
		tap: 'detail',
		iShowCodeImg: false,//是否显示二维码
		curType: '',//跳转制作使用
		showPicPrice: false,//显示照片书的价格
		showTimePrice: false,//显示时光书的价格
		allPriceList: [
			{'page': 0,
			'fourC': 0,
			'sixC': 0}
		],//照片书的价格列表
		serviceMsg_pc: '',//pc的服务信息
		serviceMsg_h5: '',//h5的服务信息
		isBuyNow: '',//是否立即购买
		workId: '',//直接购买产品的id
		serverTag: [],//服务信息
		cantDo: true,//禁止多次点击购买
		showFrameTip: false,//是否显示框画的提示
		showCardTip: false,//是否显示卡片的提示
		showDetailMsg: true,//是否存在详情信息
		moreBookPriceImg: 'product/detail/img/default.jpg',//多本折扣图片
		isShowMoreBookPriceImg: false,//是否显示多本折扣的图片
		isShowMorePriceTip: false,//是否显示多本折扣的文案
		getAllTicket: false,//是否已经领券完全部的券
		coverName: '',//封面的名称
		coverPrice: 0,//封面价格
		/*台历套餐相关*/
		isShowPacRule: false,//是否显示套餐购买须知
		isShowInput: false,//显示输入框
		inputNum: 1,//输入的数量
		agreeRule: true,//同意规则
		curPayFun: 1,//套餐当前选中的支付方式
		isShowPayWay: false,//是否显示购买套餐优惠券
		isPaySuc: false,//是否购买成功
		isPackage: false,//是否是台历套餐详情
		packageList: [],//推荐的台历套餐
		package: {},//当前的套餐信息
		packageDetail: [],//显示的套餐列表
		curPacIndex: 0,//当前的套餐是第几个
		pacNum: [],//总共有几个套餐
		keyName: '',//套餐的keyName
		memo: '',//活动规则
		membentTip: false,
		minPage: 24,//最低页数
		maxPage: 72,//最高页数
		defPage: 24,//默认页数
		addPage: 2,//每次加几页
		pagePrice: 0,//每次加页的价格
		addPageIsnot: false,//是否可以加页
		showCreateMsg: false,//显示立即制作弹窗
		alertImg: '',//弹窗里面的图片
		videoPoster: '',//视频封面
		nothingImg: '',//弹窗图片为空
		nothingImg2: '',//弹窗图片为空
		swiperImg: '',//轮播图上面的图片
		isShowSwImg: false,//是否显示轮播图上面的图片
		//mathPagePri: 0,//时光书页数计算出来的总价
		/*新版活动*/
		mActList: [],//移动端活动列表，可能是图片或者全文案
		pActList: [],
		showNewGetCou: false,//是否显示最新版的领券
		showWorkshopTips: false,//工作室用户不参与套餐优惠
		isGetTicket: [],//是否领取券的信息
		blackTipsText: '',
		tipsHidden: false,
		stopGetCouMoreTime: false,
		showVideo: false,
    openIndex: 'no'
	},
	methods: {
		clickToShow: function(){
			this.showVideo = true;
			document.getElementById('showVideo').play();
		},
		//优惠券是否领取
		isGetCuoed: function(){
			var that = this;
			var tickList = vm.data.ticketList;
			var tickStr = [];
			for(var n = 0; n < tickList.length; n++){
				tickStr.push(tickList[n].url);
			}
			tickStr = tickStr.join(',');
			var sendData = {
				'configIds': tickStr
			}
			superagent
				.post('/api/product/checkDraw')
				.set('Content-type', 'application/json')
				.send(sendData)
				.end(function(err, res){
					if(err){
						alert('优惠券请求失败,请刷新页面重试！');
						return;
					}
					if(res.body.code == 200){
						that.isGetTicket = res.body.data;
						that.showNewGetCou = !that.showNewGetCou;
					}else {
						alert(res.body.msg);
					}
				})
		},
		//工作室用户不参与套餐优惠tips
		closeWorkshopTip: function(){
			this.showWorkshopTips = false;
		},
		/*新版活动*/
		urlOrOpenCou: function(str){
			if(str == ''){
				this.showNewGetCou = true;
			}else {
				window.location.href = str;
			}
		},
		closeNewGetCou: function(){
			if(this.isGetTicket[0].configId){
				this.showNewGetCou = !this.showNewGetCou;
			} else {
				this.isGetCuoed();
			}	
		},
		getNewActivityList: function(e){
			var mbActList = this.data.mbActivityList;
			for(var a = 0; a < mbActList.length; a++){
				var obbj = {};
				obbj.img = mbActList[a].imgUrl;
				obbj.desc = mbActList[a].note;
				obbj.url = mbActList[a].url;
				this.mActList.push(obbj);
			}
			
			var pActList = this.data.pcActivityList;
			for(var a = 0; a < pActList.length; a++){
				var obbj = {};
				obbj.desc = pActList[a].note;
				obbj.url = pActList[a].url;
				this.pActList.push(obbj);
			}
		},
		closeBlack: function(e){
			if(e.currentTarget == e.target){
				this.showCreateMsg = false;
				ModalHelper.beforeClose();
			}
			var vid = document.getElementsByClassName('videoo');
			var u = navigator.userAgent;
			var android = u.indexOf('Android') > -1 || u.indexOf('Linux') > -1;
		    for(var k = 0 ;k < vid.length; k++){
		    	vid[k].pause();
//		    	if(this.showCreateMsg && android){
//		    		vid[k].style.display = 'none';
//		    	}else if(vm.isVideo){
//		    		vid[k].style.display = 'block';
//		    	}
		    }
		},
		ppp: function(){
			document.getElementById('showVideo').play();
		},
		loseBlur: function(e){
			var defP = this.defPage;
			var num = e.target.value;
			var reg = new RegExp('^[0-9]*$');
			if(reg.test(num)){
				if(num > this.minPage && num < this.maxPage){
					var clo = num % parseInt(this.addPage);
					if(clo == 0){
						this.defPage = num;
					}else {
						this.defPage = num - clo;
					}
				}else if(num == this.minPage || num == this.maxPage){
					this.defPage = num;
				}else if(num < this.minPage){
					this.defPage = this.minPage;
				}else if(num > this.maxPage){
					this.defPage = this.maxPage;
				}
			}else {
				this.defPage = this.defPage;
			}
			if(this.defPage > defP && vm.data.type != '时光书'){
				this.proPrice = parseInt(this.proPrice) + (this.defPage - defP)/this.addPage*this.pagePrice;
			}else if(this.defPage < defP && vm.data.type != '时光书'){
				this.proPrice = parseInt(this.proPrice) - (defP - this.defPage)/this.addPage*this.pagePrice;
			}
			e.target.value = this.defPage;
			//this.mathPagePri = (this.pagePrice / this.addPage * this.defPage + this.coverPrice).toFixed(2);
		},
		reduPage: function(){
			if(this.defPage > this.minPage && vm.data.type != '时光书'){
				this.defPage = parseInt(this.defPage) - parseInt(this.addPage);
				this.proPrice = this.proPrice - this.pagePrice;
			}else if(this.defPage > this.minPage){
				this.defPage = parseInt(this.defPage) - parseInt(this.addPage);
			}
			//this.mathPagePri = (this.pagePrice / this.addPage * this.defPage + this.coverPrice).toFixed(2);
		},
		adddPage: function(){
			if(this.defPage < this.maxPage && vm.data.type != '时光书'){
				this.defPage = parseInt(this.defPage) + parseInt(this.addPage);
				this.proPrice = this.proPrice + this.pagePrice;
			}else if(this.defPage < this.maxPage){
				this.defPage = parseInt(this.defPage) + parseInt(this.addPage);
			}
			//this.mathPagePri = (this.pagePrice / this.addPage * this.defPage + this.coverPrice).toFixed(2);
		},
		switchShowMsg: function(){
			this.showCreateMsg = !this.showCreateMsg;
			var sp = document.getElementById('mmso').getElementsByTagName('span');
			var le = sp.length
			var aaa = sp[le - 1].innerText.replace('|','');
			sp[le - 1].innerHTML = aaa;
			
			if (this.showCreateMsg) {
				ModalHelper.afterOpen();
			} else{
				ModalHelper.beforeClose();
			}
			
			var vid = document.getElementsByClassName('videoo');
			var u = navigator.userAgent;
			var android = u.indexOf('Android') > -1 || u.indexOf('Linux') > -1;
		    for(var k = 0 ;k < vid.length; k++){
		    	vid[k].pause();
//		    	if(this.showCreateMsg && android){
//		    		vid[k].style.display = 'none';
//		    	}else if(vm.isVideo){
//		    		vid[k].style.display = 'block';
//		    	}
		    }
		},
		//套餐活动相关
		bankPay: function(){
			var count = this.inputNum;
			var keyName = this.keyName;
			window.location.href = 'http://shopcar.mimoprint.com/BizWechat/bankValue?count=' + count + '&keyName=' + keyName;
		},
		goShopcar3: function(){
			superagent
                .post('http://design.mimoprint.com/User/MimoUserInfo')
                .withCredentials()
				.end(function (err, res) {
					if (res && (res.statusCode == 200 || res.statusCode == 201)) {
                        var code = JSON.parse(res.text).result;
                        if(code == 90 || code == 401){
                            var phone = !!navigator.userAgent.match(/AppleWebKit.*Mobile.*/);
							if (phone) {
								location.href = 'http://passport.mimoprint.com/passport/login?callback_url=' + encodeURIComponent(window.location.href);
							} else {
								location.href = 'http://passport.mimoprint.com/passport/wlogin?callback_url=' + encodeURIComponent(window.location.href);
							}
                        }else{
							//判断是否是工作室会员，工作室会员不允许购买套餐优惠券
                        	if(res.body.datas.isWorkShop){
                        		vm.showWorkshopTips = true;
								return;
                        	}
                            window.location.href = '/help/activity/calPackageBuy/' + productKey;
                        }
					}else{
                        alert("服务器出了点小差，休息下稍后再重试:(")
                    }
				})
		},
		redNum: function(){
			if(this.inputNum > 1){
				this.inputNum = parseInt(this.inputNum) - 1;
			}
		},
		addNum: function(){
			this.inputNum = parseInt(this.inputNum) + 1;
		},
		buyCalPackage: function(){
			var that = this;
			var count = this.inputNum;
			var keyName = this.keyName;
			if(!this.agreeRule){
				alert('请先阅读上述活动规则，并点击同意活动规则。');
				return ;
			}
			  
			var newTab=window.open('about:blank');
			superagent
				.get('http://design.mimoprint.com/Cuponorder/ByMimoPackage')
				.withCredentials()
				.set('Content-Type', 'application/x-www-form-urlencoded')
				.query('count=' + count)
				.query('activity_code=' + keyName)
				.query('hostName=' + window.location.origin)
				.end(function(err, res){
					if (res.statusCode == 200) {
						if(res.body.code == -99) {
							alert('请先前往登录！');
						var phone = !!navigator.userAgent.match(/AppleWebKit.*Mobile.*/);
							if (phone) {
								location.href = 'http://passport.mimoprint.com/passport/login?callback_url=' + encodeURIComponent(window.location.href);
							} else {
								location.href = 'http://passport.mimoprint.com/passport/wlogin?callback_url=' + encodeURIComponent(window.location.href);
							}
						}else if(res.body.code == -98){
							alert('购买发生错误，请联系客服！');
						}else if(res.body.code == 100){
							var cuponId = res.body.cuponorder_id;
							
							//当前选中的是什么支付类型 支付宝1 银联2 微信3
							var payType = that.curPayFun;
							var bankValue = -1;
							
							if (cuponId) {
								var url = "http://design.mimoprint.com/cuponorder/pay?id=" + cuponId + "&paytype=" + payType + "&bankvalue=" + bankValue;
								newTab.location.href = url;
							}
							
						}
					} else {
						alert('购买失败');
					}
				})
		},
		changePacindex: function(num){
			this.curPacIndex = num;
			this.package = this.packageList[num];
			this.packageDetail = this.packageList[num].packageDetail;
		},
		getPackageNum: function(){
			var lol = [
				'套餐一','套餐二','套餐三','套餐四','套餐五',
				'套餐六','套餐七','套餐八','套餐九','套餐十'
			];
			for(var n = 0; n < this.packageList.length; n++){
				this.pacNum.push(lol[n]);
			}
		},
		closePaySuc: function(){
			this.isPaySuc = false;
		},
		closePayWay: function(){
			this.isShowPayWay = false;
		},
		showPayWay: function(){
			//判断是否是工作室会员，工作室会员不允许购买套餐优惠券
			if(isWorkShop){
				this.showWorkshopTips = true;
				return;
			}
			
			var that = this;
			superagent
                .post('http://design.mimoprint.com/User/MimoUserInfo')
                .withCredentials()
				.end(function (err, res) {
					if (res && (res.statusCode == 200 || res.statusCode == 201)) {
                        var code = JSON.parse(res.text).result;
                        if(code == 90 || code == 401){
                            var phone = !!navigator.userAgent.match(/AppleWebKit.*Mobile.*/);
							if (phone) {
								location.href = 'http://passport.mimoprint.com/passport/login?callback_url=' + encodeURIComponent(window.location.href);
							} else {
								location.href = 'http://passport.mimoprint.com/passport/wlogin?callback_url=' + encodeURIComponent(window.location.href);
							}
                        }else{
                            that.isShowPayWay = true;
                        }
					}else{
                        alert("服务器出了点小差，休息下稍后再重试:(")
                    }
				})
		},
		changePayWay: function(num){
			this.curPayFun = num;
		},
		changeAgree: function(){
			this.agreeRule = !this.agreeRule;
		},
		changePacNum: function(e){
			this.isShowInput = false;
			var res = /^\+?[1-9][0-9]*$/;
			var num = e.target.value;
			if(res.test(num)){
				this.inputNum = num;
			}else {
				this.inputNum = 1;
				e.target.value = 1;
			}
		},
		showInput: function(){
			this.isShowInput = true;
			setTimeout(function(){
				document.getElementById('pacNum').focus();
			},100);
			
		},
		showPacRule: function(){
			this.isShowPacRule = !this.isShowPacRule;
		},
		//套餐活动相关^^
		closeGetAllTip: function () {
			this.getAllTicket = false;
			this.membentTip = false;
		},
		closeMoreBookPic: function () {
			this.isShowMoreBookPriceImg = false;
		},
		getPic: function () {
			var that = this;
			this.isShowMoreBookPriceImg = true;
			var sizeId = '';
			var size = vm.data.size;
			var curSize = vm.curSize;
			for (var n = 0; n < size.length; n++) {
				if (size[n].cm == curSize || size[n].inch == curSize) {
					sizeId = size[n].id;
					break;
				}
			}
			superagent
				.get('/api/product/discount')
				.set('Content-Type', 'application/json')
				.query('sizeId=' + sizeId)
				.end(function (err, res) {
					if (res.statusCode == 200) {
						that.moreBookPriceImg = JSON.parse(res.text).data.disCount;//.discountSize & discountSize_m
					} else {
						alert('价格获取失败');
					}
				})
		},
		toApp: function(){
			var u = navigator.userAgent;
			var ios = u.indexOf('iPhone') > -1;
			var wx = u.match(/MicroMessenger/i) == 'MicroMessenger';
			if(ios && !wx){
				window.location.href = 'iOSMimoAppGo://product?1013';
				var loadDateTime = new Date();
		        window.setTimeout(function () {
                    var timeOutDateTime = new Date();
                    if (timeOutDateTime - loadDateTime < 5000 && location.href.indexOf('iOSMimoAppGo://product?1013') == -1){
	                	window.location = "https://itunes.apple.com/cn/app/id1104188183?mt=8";
	                } else {
                    	window.close();
                    }
                }, 2500);
			} else if(ios && wx){
				window.location = "https://itunes.apple.com/cn/app/id1104188183?mt=8";
			} else if(!ios){
				this.showFrameTip = false;
			} else {
				alert('nothing happen');
			}
			
			//雨荨滚动
			ModalHelper.beforeClose();
		},
		closeTip: function () {
			this.showFrameTip = false;
			this.showCardTip = false;
			//雨荨滚动
			ModalHelper.beforeClose();
		},
		getCoupon: function (item) {
			if(this.stopGetCouMoreTime){
				return;
			}
			this.stopGetCouMoreTime = true;
			var that = this;
			var phone = !!navigator.userAgent.match(/AppleWebKit.*Mobile.*/);
			if (!this.isLoading) {
				this.isLoading = true;
				var sendData = {
					activityId: item.activityId,
					type: 1,
					dateType: item.dateType,
					indate: item.initday,
					count: item.num || 1,
					beginTime: item.startTime || null,
					endTime: item.endTime || null,
					loseGet: item.loseGet,
					hostName: location.origin
				}
				var time = (new Date()).toLocaleDateString();
				sendData.beginTime = sendData.beginTime || time;
				sendData.endTime = sendData.endTime || time;
				superagent
					.post('http://www.mimoprint.com/promotion/SenPromotion')
					.type('form')
					.withCredentials()
					.send(sendData)
					.end(function (err, res) {
						that.stopGetCouMoreTime = false;
						if (err) {
							console.log(err);
							alert('服务器开小差，请稍后刷新试试');
							return;
						}

						if (res.statusCode == 200) {
							that.isLoading = false;
							var data = res.body;
							if (data.code == -99) {//没登陆
								alert("请先登录！");
								if (phone) {
									location.href = 'http://passport.mimoprint.com/passport/login?callback_url=' + encodeURIComponent(window.location.href);
								} else {
									location.href = 'http://passport.mimoprint.com/passport/wlogin?callback_url=' + encodeURIComponent(window.location.href);
								}
							}else if(data.code == 999){//用完才可以再领
								if (phone) {
									that.tipsHidden = true;
									that.blackTipsText = data.msg;
									setTimeout(function(){
										that.tipsHidden = false;
									}, 4000)
								} else{
									
									that.getAllTicket = true;
									document.getElementsByClassName('getCouMsg')[0].innerText = '您已经领过这张优惠券了，请使用完再来领吧。';
								}
							}else if(data.code == 99){//已经不能再次领取
								if (phone) {
									that.tipsHidden = true;
									that.blackTipsText = data.msg;
									setTimeout(function(){
										that.tipsHidden = false;
									}, 4000)
								} else{
									
									that.getAllTicket = true;
									document.getElementsByClassName('getCouMsg')[0].innerText = '您领取的优惠券已达上限。';
								}
							}else {
								if (phone) {
									that.tipsHidden = true;
									that.blackTipsText = data.msg;
									setTimeout(function(){
										that.tipsHidden = false;
									}, 4000)
								} else{
									alert(data.msg);
								}
							}
							/*
							 96活动不存在或已下线
							 500未知错误
							 101领取失败
							 95优惠券类型错误
							 100领取成功
							 * */
						}else {
							alert('网络请求失败。')
						}
					})
			}

		},
		goCar: function(){
			var workId;
			var count = 1;
			var hostName = window.location.origin;
			superagent
				.get('/Activity/BuyCaldenlar20161205')
				.set('Content-Type', 'application/x-www-form-urlencoded')
				.withCredentials()
				.query('hostName=' + hostName)
				.end(function (err, res) {
					if (err) {
						console.log(err);
						//alert('服务器开小差，请稍后刷新试试');
						return;
					}

					if (res.statusCode == 200) {
						if (res.body.success == 1) {
							workId = res.body.workId;
							superagent
								.post('http://shopcar.mimoprint.com/api/shopcar/join')
								.set('Content-Type', 'application/x-www-form-urlencoded')
								.withCredentials()
								.send('hostName=' + hostName)
								.send('workId=' + workId)
								.send('count=1')
								.send('paper=')
								.send('cover=')
								.send('color=')
								.send('binding=')
								.send('slipcase=')
								.send('isOptimize=')
								.send('fasciculeRule=')
								.send('fasciculeData=')
								.send('OptimizImagWay=')
								.end(function (err, res) {
									if (res.statusCode == 200) {
										window.location.href = 'http://shopcar.mimoprint.com/shopcar/shopcar';
									}
								})
						}
					}
				})
		},
		goShopcar2: function (e) {
			if (!this.cantDo) {
				return;
			}
			var that = this;
			this.cantDo = false;
			e.target.innerText = '正在购买....';
			superagent
                .post('http://design.mimoprint.com/User/MimoUserInfo')
                .withCredentials()
				.end(function (err, res) {
					if (res && (res.statusCode == 200 || res.statusCode == 201)) {
                        var code = JSON.parse(res.text).result;
                        if(code == 90 || code == 401){
                        	var phone = !!navigator.userAgent.match(/AppleWebKit.*Mobile.*/);
							if (phone) {
								location.href = 'http://passport.mimoprint.com/passport/login?callback_url=' + encodeURIComponent(window.location.href);
							} else {
								location.href = 'http://passport.mimoprint.com/passport/wlogin?callback_url=' + encodeURIComponent(window.location.href);
							}
//                          window.location.href = 'http://passport.mimoprint.com/Passport/Login?callback_url=' + window.location.href;
//						    console.log("没有登录。");
                        }else{
                            that.goCar();
                        }
					}else{
                        alert("服务器出了点小差，休息下稍后再重试:(")
                    }
				})
//			if (!isLogin) {
//				var that = this;
//				superagent
//					.get('/api/user/getUserInfo')
//					.set('Content-Type', 'application/json')
//					.end(function (err, res) {
//						if (res.body.code == 200) {
//							that.goCar();
//						} else {
//							console.log("没有登录。");
//							var phone = !!navigator.userAgent.match(/AppleWebKit.*Mobile.*/);
//							alert("请先登录！");
//							if (phone) {
//								location.href = 'http://passport.mimoprint.com/passport/login?callback_url=' + encodeURIComponent(window.location.href);
//							} else {
//								location.href = 'http://passport.mimoprint.com/passport/wlogin?callback_url=' + encodeURIComponent(window.location.href);
//							}
//							return;
//						}
//					})
//			}else {
//				this.goCar();
//			}
		},
		goCar2: function(){
			var workId = this.workId;
			var count = 1;
			var hostName = window.location.origin;
			var phone = !!navigator.userAgent.match(/AppleWebKit.*Mobile.*/);
			superagent
				.get('http://shopcar.mimoprint.com/api/shopcar/JoinGiftBoxs')
				//http://shopcar.mimoprint.com/api/shopcar/JoinGiftBoxs
				//.set('Content-Type', 'application/x-www-form-urlencoded')
				.withCredentials()
				.query('workId=' + workId)
				.query('count=' + count)
				.query('host=' + hostName)
				.end(function (err, res) {
					if (err) {
						console.log(err);
						alert('服务器开小差，请稍后刷新试试');
						return;
					}

					if (res.statusCode == 200) {
						if (phone) {
							window.location.href = 'http://shopcar.mimoprint.com/mshopcar/shopcar';
						} else {
							window.location.href = 'http://shopcar.mimoprint.com/shopcar/shopcar';
						}
					}
					vm.cantDo = true;
				})
		},
		goShopcar: function (e) {
			if (!this.cantDo) {
				return;
			}
			var that = this;
			this.cantDo = false;
			e.target.innerText = '正在购买....';
			superagent
                .post('http://design.mimoprint.com/User/MimoUserInfo')
                .withCredentials()
				.end(function (err, res) {
					if (res && (res.statusCode == 200 || res.statusCode == 201)) {
                        var code = JSON.parse(res.text).result;
                        if(code == 90 || code == 401){
                            var phone = !!navigator.userAgent.match(/AppleWebKit.*Mobile.*/);
							if (phone) {
								location.href = 'http://passport.mimoprint.com/passport/login?callback_url=' + encodeURIComponent(window.location.href);
							} else {
								location.href = 'http://passport.mimoprint.com/passport/wlogin?callback_url=' + encodeURIComponent(window.location.href);
							}
                        }else{
                            that.goCar2();
                        }
					}else{
                        alert("服务器出了点小差，休息下稍后再重试:(")
                    }
				})
//			if (!isLogin) {
//				var that = this;
//				superagent
//					.get('/api/user/getUserInfo')
//					.set('Content-Type', 'application/json')
//					.end(function (err, res) {
//						if (res.body.code == 200) {
//							that.goCar2();
//						} else {
//							console.log("没有登录。");
//							var phone = !!navigator.userAgent.match(/AppleWebKit.*Mobile.*/);
//							alert("请先登录！");
//							if (phone) {
//								location.href = 'http://passport.mimoprint.com/passport/login?callback_url=' + encodeURIComponent(window.location.href);
//							} else {
//								location.href = 'http://passport.mimoprint.com/passport/wlogin?callback_url=' + encodeURIComponent(window.location.href);
//							}
//							return;
//						}
//					})
//			}else {
//				this.goCar2();
//			}
		},
		closeAllPrice: function () {
			this.showPicPrice = false;
			this.showTimePrice = false;

		},
		getMorePrice: function () {

			//判断当前的type,只有照片书和时光书才有了解更多价格
			var that = this;
			var type = this.data.type;
			var hei = document.body.scrollTop||document.documentElement.scrollTop;
			if(document.getElementsByClassName('priceList1')[0] != undefined){
				document.getElementsByClassName('priceList1')[0].style.top = hei + 'px';
			}
			if (type == '照片书') {
				that.showPicPrice = true;
			} else if (type == '时光书') {
				that.showTimePrice = true;
				return;
			}

			var data = this.data;
			var sizeId = '';
			var paperId = '';
			var styleId = '';
			var bindingId = '';
			var frameId = '';
			//var price = this.proPrice;
			var capacityId = '';
			var boxId = '';
			var bookId = '';


			for (var n = 0; n < data.prodStyle.length; n++) {
				if (data.prodStyle[n].name == this.curStyle) {
					styleId = data.prodStyle[n].styleId;
					break;
				}
			}

			for (var n = 0; n < data.prodCapacity.length; n++) {
				if (data.prodCapacity[n].name == this.curCapacity) {
					capacityId = data.prodCapacity[n].capacityId;
					break;
				}
			}

			for (var n = 0; n < data.frame.length; n++) {
				if (data.frame[n].name == this.curFrame) {
					frameId = data.frame[n].id;
					break;
				}
			}

			for (var n = 0; n < data.size.length; n++) {
				if (data.size[n].cm == this.curSize) {
					sizeId = data.size[n].id;
					break;
				}
			}

			for (var n = 0; n < data.paper.length; n++) {
				if (data.paper[n].name == this.curPaper) {
					paperId = data.paper[n].id;
					break;
				}
			}

			for (var n = 0; n < data.binding.length; n++) {
				if (data.binding[n].name == this.curBind) {
					bindingId = data.binding[n].id;
					break;
				}
			}

			for (var n = 0; n < data.giftBox.length; n++) {
				if (data.giftBox[n].name == this.curGift) {
					boxId = data.giftBox[n].boxId;
					break;
				}
			}

			for (var n = 0; n < data.bookCase.length; n++) {
				if (data.bookCase[n].name == this.curCover) {
					bookId = data.bookCase[n].id;
					break;
				}
			}

			superagent
				.get('/api/product/price')
				.set('Content-Type', 'application/json')
				.query('prodKey=' + productKey)
				.query('sizeId=' + sizeId)
				.query('paperId=' + paperId)
				.query('styleId=' + styleId)
				.query('bindingId=' + bindingId)
				.query('frameId=' + frameId)
				.query('boxId=' + boxId)
				.query('bookId=' + bookId)
				.query('capacityId=' + capacityId)
				.end(function (err, res) {
					if (err) {
						console.log(err);
						alert('服务器开小差，请稍后刷新试试');
						return;
					}

					if (res.statusCode == 200) {
						if (document.getElementsByClassName('priceList1')[0] != undefined) {
							document.getElementsByClassName('priceList1')[0].style.top = window.scrollY + 'px';
						}


						//allPriceList
						var arr = [];
						var data = JSON.parse(res.text).data;
						var fourC = data.priceFourColor;
						var sixC = data.priceSixColor;
						for (var n = 0; n < fourC.length; n++) {
							var obj = {};
							obj.fourC = fourC[n].fourColor;
							obj.page = fourC[n].page;
							obj.sixC = sixC[n].sixColor;
							arr.push(obj);
						}
						that.allPriceList = arr;
					}
				});
		},
		clickCommentpc: function () {
			this.changeTap('evaluate');
			window.scrollTo(0, 1100);
		},
		clickComment: function () {
			this.changeTap('evaluate');
			window.scrollTo(0, 1300);
		},
		jumpCenterM: function () {
			this.showCreateMsg = false;
			if (this.workId == 1013 || this.workId == 1014) {
				this.showFrameTip = true;
				
				var u = navigator.userAgent;
				var android = u.indexOf('Android') > -1 || u.indexOf('Linux') > -1;
				if(android){
					var docc = document.getElementById('frameTip')
					docc.getElementsByTagName('div')[0].style.backgroundImage = 'url(/product/detail/img/frame_andTips.jpg)';
					document.getElementsByClassName('closeTip2')[0].style.marginTop = '4.8rem';
				}
				
				Vue.nextTick(function(){
					document.getElementById('frameTip').addEventListener('click', function(e){
						if(e.target.className == 'createTip'){
							vm.showFrameTip = false;
							//雨荨滚动
							ModalHelper.beforeClose();
						}
					},false)
				});
				return;
			}
			if (this.workId == 1003) {
				this.showCardTip = true;
				return;
			}
			if(this.workId == 4000 || this.workId == 4001 || this.workId == 4002){//纪念册5本起购
				this.membentTip = true;
				return ;
			}
			window.location.href = '/product/temp?id=' + this.workId;//非立即购买产品的workId其实是productId
		},
		jumpCenter: function () {
			if(this.workId == 4000 || this.workId == 4001 || this.workId == 4002){//纪念册5本起购
				this.membentTip = true;
				return ;
			}
			window.location.href = '/product/temp?id=' + this.workId;//非立即购买产品的workId其实是productId
		},
		goCreateCommem: function(){//为批量纪念册又多开了一条。。
			window.location.href = '/product/temp?id=' + this.workId;//非立即购买产品的workId其实是productId
		},
		showCode: function (num) {
			if (num == '1') {
				this.iShowCodeImg = true;
			} else {
				this.iShowCodeImg = false;
			}
		},
		closeDetail: function () {
			document.getElementsByTagName('body')[0].style.overflow = 'scroll';
			this.ishowDetail = false;
		},
		changeTap: function (type) {
			this.tap = type;
			if(document.getElementsByClassName('moreDetail').length>0){
				var moreDeee = document.getElementsByClassName('moreDetail')[0].offsetTop;
				var windowH = document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
				if(moreDeee<=windowH){
					window.scrollTo(0, moreDeee);
					if(document.getElementById('detailList')){
						document.getElementById('detailList').style.paddingTop = '0'
					}
				}
			}

		},
		judgeLength: function (type) {
			var length = 0;
			switch (type) {
				case 'bind':
					var arr = [];
					for (var n = 0; n < this.allbindMsg.length; n++) {
						if (this.allbindMsg[n].img != '') {
							arr.push(this.allbindMsg[n]);
						}
					}
					length = arr.length;
					break;
				case 'print':
					var arr = [];
					for (var n = 0; n < this.allprintMsg.length; n++) {
						if (this.allprintMsg[n].img != '') {
							arr.push(this.allprintMsg[n]);
						}
					}
					length = arr.length;
					break;
				case 'frame':
					var arr = [];
					for (var n = 0; n < this.allframeMsg.length; n++) {
						if (this.allframeMsg[n].img != '') {
							arr.push(this.allframeMsg[n]);
						}
					}
					length = arr.length;
					break;
				case 'cover':
					var arr = [];
					for (var n = 0; n < this.allcoverMsg.length; n++) {
						if (this.allcoverMsg[n].img != '') {
							arr.push(this.allcoverMsg[n]);
						}
					}
					length = arr.length;
					break;
				case 'paper':
					var arr = [];
					for (var n = 0; n < this.allpaperMsg.length; n++) {
						if (this.allpaperMsg[n].img != '') {
							arr.push(this.allpaperMsg[n]);
						}
					}
					length = arr.length;
					break;
				case 'gift':
					var arr = [];
					for (var n = 0; n < this.allgiftMsg.length; n++) {
						if (this.allgiftMsg[n].img != '') {
							arr.push(this.allgiftMsg[n]);
						}
					}
					length = arr.length;
					break;
				case 'capacity':
					var arr = [];
					for (var n = 0; n < this.allcapacityMsg.length; n++) {
						if (this.allcapacityMsg[n].img != '') {
							arr.push(this.allcapacityMsg[n]);
						}
					}
					length = arr.length;
					break;
				default:
					break;
			}
			if (length > 0) {
				return true;
			} else {
				return false;
			}
		},
		showDetail: function (type) {
			document.getElementsByTagName('body')[0].style.overflow = 'hidden';
			this.ishowDetail = true;
			this.detailIndex = 1;
			document.getElementsByClassName('slidder')[0].style.transform = 'translateX(0rem)';
			switch (type) {
				case 'bind':
					var arr = [];
					for (var n = 0; n < this.allbindMsg.length; n++) {
						if (this.allbindMsg[n].img != '') {
							arr.push(this.allbindMsg[n]);
						}
					}
					this.sliderMsg = arr;
					this.sliderLength = arr.length;
					break;
				case 'print':
					var arr = [];
					for (var n = 0; n < this.allprintMsg.length; n++) {
						if (this.allprintMsg[n].img != '') {
							arr.push(this.allprintMsg[n]);
						}
					}
					this.sliderMsg = arr;
					this.sliderLength = arr.length;
					break;
				case 'frame':
					var arr = [];
					for (var n = 0; n < this.allframeMsg.length; n++) {
						if (this.allframeMsg[n].img != '') {
							arr.push(this.allframeMsg[n]);
						}
					}
					this.sliderMsg = arr;
					this.sliderLength = arr.length;
					break;
				case 'cover':
					var arr = [];
					for (var n = 0; n < this.allcoverMsg.length; n++) {
						if (this.allcoverMsg[n].img != '') {
							arr.push(this.allcoverMsg[n]);
						}
					}
					this.sliderMsg = arr;
					this.sliderLength = arr.length;
					break;
				case 'paper':
					var arr = [];
					for (var n = 0; n < this.allpaperMsg.length; n++) {
						if (this.allpaperMsg[n].img != '') {
							arr.push(this.allpaperMsg[n]);
						}
					}
					this.sliderMsg = arr;
					this.sliderLength = arr.length;
					break;
				case 'gift':
					var arr = [];
					for (var n = 0; n < this.allgiftMsg.length; n++) {
						if (this.allgiftMsg[n].img != '') {
							arr.push(this.allgiftMsg[n]);
						}
					}
					this.sliderMsg = arr;
					this.sliderLength = arr.length;
					break;
				case 'capacity':
					var arr = [];
					for (var n = 0; n < this.allcapacityMsg.length; n++) {
						if (this.allcapacityMsg[n].img != '') {
							arr.push(this.allcapacityMsg[n]);
						}
					}
					this.sliderMsg = arr;
					this.sliderLength = arr.length;
					break;
				default:
					break;
			}

			document.getElementsByClassName('slidder')[0].style.width = (this.sliderLength * 6.3) + 'rem';
		},
		sliderLeftRight: function (num) {
			if (num == '1') {
				//left
				if (this.detailIndex < this.sliderLength) {
					this.detailIndex += 1;
					document.getElementsByClassName('slidder')[0].style.transform = 'translateX(-' + 6.3 * (this.detailIndex - 1) + 'rem)';
				}

			} else if (num == '0') {
				//right
				if (this.detailIndex > 1) {
					this.detailIndex -= 1;
					document.getElementsByClassName('slidder')[0].style.transform = 'translateX(-' + 6.3 * (this.detailIndex - 1) + 'rem)';
				}
			}
		},
		getRecomment: function () {
			var arr = [];
			var recomment = this.data.guessLike;
			for (var n = 0; n < recomment.length; n++) {
				var reco = {};
				reco.img = recomment[n].imgurl;
				reco.url = recomment[n].url;
				arr.push(reco);
			}
			this.recomment = arr;
		},
		backAll: function (e) {
			var url = location.href.substring(0, location.href.lastIndexOf('/'));
//			if(this.productList == '套餐'){
//				return;
//			}
			window.location.href = url + '/index';
		},
		//专门用来查找价格
		mathPrice: function () {
			var curSizeType = this.curSizeType;
			var curSize = this.curSize;
			var curPrint = this.curPrint;
			var curBind = this.curBind;
			var curPaper = this.curPaper;
			var curFrame = this.curFrame;
			var curCapacity = this.curCapacity;
			var curStyle = this.curStyle;
			var curGift = this.curGift;
			var curCover = this.curCover;
			for (var m = 0; m < this.data.bookCase.length; m++) {
				if (curCover == this.data.bookCase[m].middle) {
					curCover = this.data.bookCase[m].name;
					break;
				}
			}
			var priceList = this.data.priceList;
			for (var n = 0; n < priceList.length; n++) {
				if (curSizeType == '1') {
					if (priceList[n].snum != curSize) {
						continue;
					}
				} else {
					if (priceList[n].inchnum != curSize) {
						continue;
					}
				}
				if (priceList[n].cname != curPrint) {
					continue;
				}
				if (priceList[n].bname != curBind) {
					continue;
				}
				if (priceList[n].pname != curPaper) {
					continue;
				}
				if (priceList[n].fname != curFrame) {
					continue;
				}
				if (priceList[n].pcapaname != curCapacity) {
					continue;
				}
				if (priceList[n].pstyname != curStyle) {
					continue;
				}
				if (priceList[n].box != curGift) {
					continue;
				}
				if (priceList[n].book != curCover) {
					continue;
				}
				
				this.maxPage = vm.data.priceList[n].endPage;
				this.minPage = vm.data.priceList[n].startPaper;
				this.addPage = vm.data.priceList[n].growPage;
				this.pagePrice = vm.data.priceList[n].growPrice;
				
				if(this.data.type == "照片书"){
					var oldPage = this.defPage;
					if (oldPage >= this.maxPage) {
						this.defPage = this.maxPage;
					} else if (oldPage % this.addPage == 0 && oldPage < this.maxPage) {
						this.defPage = oldPage;
					} else if (oldPage % this.addPage != 0 && oldPage < this.maxPage) {
						this.defPage = vm.data.priceList[n].defaultPage + this.addPage * parseInt(((oldPage - this.data.priceList[n].defaultPage)/this.addPage));
					}
					var addedPage = (this.defPage - this.data.priceList[n].defaultPage)/this.addPage;
					this.proPrice = priceList[n].prname + addedPage * this.pagePrice;
				} else {
					this.defPage = vm.data.priceList[n].defaultPage;
					this.mathPagePri = (this.pagePrice / this.addPage * this.defPage + this.coverPrice).toFixed(2);
					this.proPrice = priceList[n].prname;
				}
				
				this.workId = priceList[n].workId;
			}
			
			for(var p = 0; p < this.data.priceList.length; p++){
				if(this.data.priceList[p].bname == this.curBind && (this.data.priceList[p].snum == this.curSize || this.data.priceList[p].inchnum == this.curSize)){
					this.coverPrice = this.data.priceList[p].coverPrice;
					break;
				}
			}
		},
		changeSizeType: function (num) {
			this.curSizeType = num;
			if (this.curSizeType == '1') {//换厘米
				if (!this.hideMoreSize) {
					this.proSize = this.allSize;
				} else {
					if (this.allSize.length < 10) {
						this.proSize = this.allSize;
					} else {
						this.proSize = [];
						for(var n = 0; n < 9; n++){
							this.proSize.push(this.allSize[n]);
						}
					}
				}
			} else if (this.curSizeType == '2') {//换英寸
				if (!this.hideMoreSize) {
					this.proSize = this.inchSize;
				} else {
					if (this.allSize.length < 10) {
						this.proSize = this.inchSize;
					} else {
						this.proSize = [];
						for(var n = 0; n < 9; n++){
							this.proSize.push(this.inchSize[n]);
						}
					}

				}
			}
			this.curSize = this.proSize[0];
			this.mathPrice();
		},
		moreSize: function () {
			//			if(this.hideMoreSize){
			//				if(this.allSize.length < 6){
			//					this.isShowMoreSize = false;
			//				}
			//			}
			if (this.curSizeType == '1') {
				if (this.hideMoreSize) {
					this.proSize = this.allSize;
				} else {
					if (this.allSize.length < 9) {
						this.proSize = this.allSize;
					} else {
						this.proSize = [];
						for (var m = 0; m < 9; m++) {
							this.proSize.push(this.allSize[m])
						}
						//						this.proSize = [
						//							this.allSize[0],
						//							this.allSize[1],
						//							this.allSize[2]
						//						];
					}
				}
			} else {
				if (this.hideMoreSize) {
					this.proSize = this.inchSize;
				} else {
					if (this.inchSize.length < 9) {
						this.proSize = this.inchSize;
					} else {
						this.proSize = [];
						for (var m = 0; m < 9; m++) {
							this.proSize.push(this.inchSize[m])
						}
						//						this.proSize = [
						//							this.inchSize[0],
						//							this.inchSize[1],
						//							this.inchSize[2]
						//						];
					}
				}
			}
			this.hideMoreSize = !this.hideMoreSize;
		},
		judgeVideo: function (num) {
			var curBigimg = this.prodcutBigimg[num];
			if (curBigimg.indexOf('mp4') != -1) {
				return true;
			} else {
				return false;
			}
		},
		changeBigimg: function (num) {
			this.curBigimgIndex = num;
			this.curBigimg = this.prodcutBigimg[this.curBigimgIndex];
			if (this.curBigimg.indexOf('mp4') != -1) {
				this.isVideo = true;
				document.getElementById('showVideo').innerHTML = "<source src=" + this.curBigimg + " type='video/mp4'></source><p>很抱歉，您的浏览器无法查看视频！</p>"
			} else {
				this.isVideo = false;
			}
		},
		showSizemsg: function (size) {
			this.isShowSize = !this.isShowSize;
//			this.cursizeMsg = this.allsizeMsg[num];
			
			var allData = this.data;
			var allSiz = allData.size;
			var allFrame = allData.frame;
			var allBinding = allData.binding;
			var allBookSkin = allData.bookCase;
			var imgUrlList = allData.imgUrlList;
			var switc = true;
			this.isShowSwImg = true;
			if(this.curSizeType == 2){
				switc = false;
			}
			/*
			 * 既要改变小图又要改变大图
			 * 根据尺寸、框、封面、装订有关
			 */
			var sizeCode = ''; 
			var frameCode = '';
			var bookSkinCode = ''; 
			var bindingCode = '';
			if(allSiz.length != 0){
				for(var n = 0; n < allSiz.length; n++){
					if(switc){
						if(allSiz[n].cm == size){
							sizeCode = allSiz[n].id;
							break;
						}
					}else {
						if(allSiz[n].inch == size){
							sizeCode = allSiz[n].id;
							break;
						}
					}
				}
			}
			if(allFrame.length != 0){
				for(var n = 0; n < allFrame.length; n++){
					if(allFrame[n].name == this.curFrame){
						frameCode = allFrame[n].id; 
						break;
					}
				}
			}
			if(allBinding.length != 0){
				for(var n = 0; n < allBinding.length; n++){
					if(allBinding[n].name == this.curBind){
						bindingCode = allBinding[n].id; 
						break;
					}
				}
			}
			if(allBookSkin.length != 0){
				for(var n = 0; n < allBookSkin.length; n++){
					if(allBookSkin[n].name == this.curCover){
						bookSkinCode = allBookSkin[n].id; 
						break;
					}
				}
			}
			for(var n = 0; n < imgUrlList.length; n++){
				if(sizeCode == imgUrlList[n].prodSize && frameCode == imgUrlList[n].prodFrame && bookSkinCode == imgUrlList[n].prodBookSkin && bindingCode == imgUrlList[n].prodBinding){
					this.alertImg = imgUrlList[n].img;
					this.swiperImg = imgUrlList[n].img;
					break;
				}else {
					this.alertImg = '';
					this.swiperImg = '';
				}
			}
			
			//联动修改头图
			//this.posdopasop();
		},
		showCovermsg: function (num) {
			this.isShowCover = !this.isShowCover;
			this.curcoverMsg = this.allcoverMsg[num];
		},
		showPrintmsg: function (num) {
			this.isShowPrint = !this.isShowPrint;
			this.curprintMsg = this.allprintMsg[num];
		},
		showBindmsg: function (num) {
			this.isShowBind = !this.isShowBind;
			this.curbindMsg = this.allbindMsg[num];
		},
		showFramemsg: function (num) {
			this.isShowFrame = !this.isShowFrame;
			this.curframeMsg = this.allframeMsg[num];
		},
		showCapacitymsg: function (num) {
			this.isShowCapacity = !this.isShowCapacity;
			this.curcapacityMsg = this.allcapacityMsg[num];
		},
		showStylemsg: function (num) {
			this.isShowStyle = !this.isShowStyle;
			this.curstyleMsg = this.allstyleMsg[num];
		},
		showGiftmsg: function (num) {
			this.isShowGift = !this.isShowGift;
			this.curgiftMsg = this.allgiftMsg[num];
		},
		showBoxmsg: function (num) {
			this.isShowBox = !this.isShowBox;
			this.curboxMsg = this.allboxMsg[num];
		},
		changeGift: function (e) {
			this.curGift = e.target.getAttribute('data-gift');

			//改变礼包套餐的同时改变礼包包含列表
			this.getProBox();

			this.mathPrice();
		},
		changeStyle: function (e) {
			this.curStyle = e.target.getAttribute('data-style');
			this.mathPrice();
		},
		showPapermsg: function (num) {
			this.isShowPaper = !this.isShowPaper;
			this.curpaperMsg = this.allpaperMsg[num];
		},
		changeCapacity: function (e) {
			this.curCapacity = e.target.getAttribute('data-capacity');
			this.mathPrice();
		},
		changeCover: function (e) {
			this.curCover = e.target.getAttribute('data-cover');
			this.mathPrice();
			//联动修改头图
			this.posdopasop();
			
//			for(var p = 0; p < this.data.priceList.length; p++){
//				if(this.data.priceList[p].bname == this.curBind && (this.data.priceList[p].snum == this.curSize || this.data.priceList[p].inchnum == this.curSize)){
//					this.coverPrice = this.data.priceList[p].coverPrice;
//					break;
//				}
//			}
		},
		changeBind: function (e) {
			this.curBind = e.target.getAttribute("data-bind");
			if(this.curBind == '软皮简装'){
				this.coverName = '软皮';
			}else if(this.curBind == '硬皮精装'){
				this.coverName = '硬皮';
			}
			
			
//			for(var p = 0; p < this.data.priceList.length; p++){
//				if(this.data.priceList[p].bname == this.curBind && (this.data.priceList[p].snum == this.curSize || this.data.priceList[p].inchnum == this.curSize)){
//					this.coverPrice = this.data.priceList[p].coverPrice;
//					break;
//				}
//			}
			
//			for(var n = 0; n < this.proBind.length; n++){
//				if(this.proBind[n] == this.curBind){
//					this.coverPrice = this.data.binding[n].bindingPrice;
//					break;
//				}
//			}
			this.mathPrice();
			//联动修改头图
			this.posdopasop();
		},
		changePrint: function (e) {
			this.curPrint = e.target.getAttribute("data-print");
			this.mathPrice();
		},
		getActivity: function () {
			var arr = [];
//			var activity = vm.data.activitiList;
			var activity = vm.data.ticketList;
			for (var n = 0; n < activity.length; n++) {
				var acti = {};
				acti.name = activity[n].name;
				acti.url = activity[n].url;
				acti.activitiTag = activity[n].ticketTag;
				arr.push(acti)
			}
			this.proActivity = arr;
			for(var m = 0; m < this.proActivity.length; m++){
				var aa = {'draw': '0'};
				this.isGetTicket.push(aa);
			}
		},
		getProBind: function () {
			var arr = [];
			var arr2 = [];
			var binding = vm.data.binding;
			for (var n = 0; n < binding.length; n++) {
				arr.push(binding[n].name);
				var aMsg = {};
				aMsg.img = binding[n].img;
				aMsg.con = binding[n].note;
				aMsg.name = binding[n].name;
				aMsg.id = binding[n].id;
				arr2.push(aMsg);
			}
			this.proBind = arr;
			this.allbindMsg = arr2;
			if(this.data.defaultpriceList.length == 0){
				return;
			}
			this.curBind = this.data.defaultpriceList[0].bname;
		},
		getProCover: function () {
			var arr = [];
			var arr2 = [];
			var bookCase = vm.data.bookCase;
			for (var n = 0; n < bookCase.length; n++) {
				arr.push(bookCase[n].middle);
				var aMsg = {};
				aMsg.img = bookCase[n].large;
				aMsg.img2 = bookCase[n].middle;
				aMsg.con = bookCase[n].note;
				aMsg.name = bookCase[n].name;
				arr2.push(aMsg);
			}
			this.proCover = arr;
			this.allcoverMsg = arr2;
			//			if(this.proCover.length == 0){
			//				this.curCover = '';
			//			}else {
			//				this.curCover = this.proCover[0];
			//			}
			if(this.data.defaultpriceList.length == 0){
				return;
			}
			this.curCover = this.data.defaultpriceList[0].book;
		},
		getStyle: function () {
			var arr = [];
			var arr2 = [];
			var prodStyle = vm.data.prodStyle;
			for (var n = 0; n < prodStyle.length; n++) {
				arr.push(prodStyle[n].name);
				var aMsg = {};
				aMsg.img = prodStyle[n].imgUrl;
				aMsg.con = prodStyle[n].note;
				aMsg.name = prodStyle[n].name;
				arr2.push(aMsg);
			}
			this.proStyle = arr;
			this.allstyleMsg = arr2;
			if(this.data.defaultpriceList.length == 0){
				return;
			}
			this.curStyle = this.data.defaultpriceList[0].pstyname;
		},
		getProCapacity: function () {
			var arr = [];
			var arr2 = [];
			var prodCapacity = vm.data.prodCapacity;
			for (var n = 0; n < prodCapacity.length; n++) {
				arr.push(prodCapacity[n].name);
				var aMsg = {};
				aMsg.img = prodCapacity[n].imgUrl;
				aMsg.con = prodCapacity[n].note;
				aMsg.name = prodCapacity[n].name;
				arr2.push(aMsg);
			}
			this.proCapacity = arr;
			this.allcapacityMsg = arr2;
			if(this.data.defaultpriceList.length == 0){
				return;
			}
			this.curCapacity = this.data.defaultpriceList[0].pcapaname;
		},
		getProBox: function () {
			//获取到礼包中的所有产品
			var giftBox = this.data.giftBox;
			for (var n = 0; n < giftBox.length; n++) {
				if (giftBox[n].name == this.curGift) {
					this.allboxMsg = giftBox[n].detail;
				}
			}
			var arr = [];
			for (var n = 0; n < this.allboxMsg.length; n++) {
				arr.push(this.allboxMsg[n].name);
			}

			this.proBox = arr;
			//this.curGift = this.data.defaultpriceList[0].box;
		},
		getProGift: function () {
			var arr = [];
			var arr2 = [];
			var prodGift = vm.data.giftBox;
			for (var n = 0; n < prodGift.length; n++) {
				arr.push(prodGift[n].name);
				var aMsg = {};
				aMsg.id = prodGift[n].boxId;
				aMsg.img = prodGift[n].imgUrl;
				aMsg.con = prodGift[n].note;
				aMsg.name = prodGift[n].name;
				aMsg.detail = prodGift[n].detail;
				arr2.push(aMsg);
			}
			this.proGift = arr;
			this.allgiftMsg = arr2;
			if(this.data.defaultpriceList.length == 0){
				return;
			}
			this.curGift = this.data.defaultpriceList[0].box;
			this.getProBox();
		},
		getProFrame: function () {
			var arr = [];
			var arr2 = [];
			var frame = vm.data.frame;
			for (var n = 0; n < frame.length; n++) {
				arr.push(frame[n].name);
				var aMsg = {};
				aMsg.img = frame[n].img;
				aMsg.con = frame[n].note;
				aMsg.name = frame[n].name;
				arr2.push(aMsg);
			}
			this.proFrame = arr;
			this.allframeMsg = arr2;
			if(this.data.defaultpriceList.length == 0){
				return;
			}
			this.curFrame = this.data.defaultpriceList[0].fname;
		},
		getProPaper: function () {
			
			var b = this.data.priceList;
			var c = [];
			var e = true;
			for(var a = 0; a< b.length; a++){
				if((this.curSize == b[a].inchnum || this.curSize == b[a].snum) && b[a].pname != ''){
					if(c.length == 0){
						c.push(b[a].pname);
					}else {
						for(var d = 0; d < c.length; d++){
							if(b[a].pname == c[d]){
								e = false;
								break;	
							}
							e = true;
						}
						if(e){
							c.push(b[a].pname);
						}
					}
				}
			}
			
			//var arr = [];
			var arr2 = [];
			var paper = vm.data.paper;
			for (var n = 0; n < paper.length; n++) {
				//arr.push(paper[n].name);
				var aMsg = {};
				aMsg.img = paper[n].img;
				aMsg.con = paper[n].note;
				aMsg.name = paper[n].name;
				arr2.push(aMsg);
			}
			this.proPaper = c;
			this.allpaperMsg = arr2;
			if(this.data.defaultpriceList.length == 0){
				return;
			}
			this.curPaper = this.data.defaultpriceList[0].pname;
		},
		getProPrint: function () {
			var arr = [];
			var arr2 = [];
			var color = vm.data.color;
			for (var n = 0; n < color.length; n++) {
				arr.push(color[n].name);
				var aMsg = {};
				aMsg.img = color[n].img;
				aMsg.con = color[n].note;
				aMsg.name = color[n].name;
				arr2.push(aMsg);
			}
			this.proPrint = arr;
			this.allprintMsg = arr2;
			if(this.data.defaultpriceList.length == 0){
				return;
			}
			this.curPrint = this.data.defaultpriceList[0].cname;
		},
		changeFrame: function (e) {
			this.curFrame = e.target.getAttribute("data-frame");
			this.mathPrice();
			//联动修改头图
			this.posdopasop();
		},
		changePaper: function (e) {
			this.curPaper = e.target.getAttribute("data-paper");
			this.mathPrice();
		},
		changeSize: function (e) {
			this.curSize = e.target.getAttribute("data-size");
			var priceList = this.data.priceList;
			this.proBind = [];
			this.proPrint = [];
			this.proPaper = [];
			this.proFrame = [];
			var sizeType = true;
			for (var n = 0; n < priceList.length; n++) {
				if (this.curSizeType == '1') {
					sizeType = priceList[n].snum == this.curSize;
				} else {
					sizeType = priceList[n].inchnum == this.curSize;
				}
				if (sizeType) {
					if (priceList[n].bname != '') {
						if (this.proBind.indexOf(priceList[n].bname) == -1) {
							this.proBind.push(priceList[n].bname);
						}
						//this.curBind = this.proBind[0];
					}
					if (priceList[n].cname != '') {
						if (this.proPrint.indexOf(priceList[n].cname) == -1) {
							this.proPrint.push(priceList[n].cname);
						}
						//this.curPrint = this.proPrint[0];
					}
					if (priceList[n].pname != '') {
						if (this.proPaper.indexOf(priceList[n].pname) == -1) {
							this.proPaper.push(priceList[n].pname);
						}
						//this.curPaper = this.proPaper[0];
					}
					if (priceList[n].fname != '') {
						if (this.proFrame.indexOf(priceList[n].fname) == -1) {
							this.proFrame.push(priceList[n].fname);
						}
						//this.curFrame = this.proFrame[0];
					}
				}
			}
			
			if(this.proPaper.length > 0){
				for(var n = 0 ; n < this.proPaper.length; n ++){
					if(this.proPaper[n] == this.curPaper) {
						break;
					} else if(n == this.proPaper.length - 1){
						this.curPaper = this.proPaper[0];
					}
				}
			}
			if(this.proBind.length > 0){
				for(var n = 0 ; n < this.proBind.length; n ++){
					if(this.proBind[n] == this.curBind) {
						break;
					} else if(n == this.proBind.length - 1){
						this.curBind = this.proBind[0];
					}
				}
			}
			if(this.proPrint.length > 0){
				for(var n = 0 ; n < this.proPrint.length; n ++){
					if(this.proPrint[n] == this.curPrint) {
						break;
					} else if(n == this.proPrint.length - 1){
						this.curPrint = this.proPrint[0];
					}
				}
			}
			if(this.proFrame.length > 0){
				for(var n = 0 ; n < this.proFrame.length; n ++){
					if(this.proFrame[n] == this.curFrame) {
						break;
					} else if(n == this.proFrame.length - 1){
						this.curFrame = this.proFrame[0];
					}
				}
			}
			
			this.mathPrice();
			
			var allSiz = vm.data.size;
			var switc = true;
			if(this.curSizeType == 2){
				switc = false;
			}
			
//			if(this.data.prodId == 'PROD00010' || this.data.prodId == 'PROD00011' || this.data.prodId == 'PROD00012'){
//				for(var p = 0; p < this.data.priceList.length; p++){
//					if(this.data.priceList[p].bname == this.curBind && (this.data.priceList[p].snum == this.curSize || this.data.priceList[p].inchnum == this.curSize)){
//						this.coverPrice = this.data.priceList[p].coverPrice;
//						break;
//					}
//				}
//			}
			
			//获得立即制作的那个小图
//			for(var n = 0; n < allSiz.length; n++){
//				if(switc){
//					if(allSiz[n].cm == this.curSize){
//						this.alertImg = allSiz[n].img;
//						this.swiperImg = allSiz[n].img;
//						this.isShowSwImg = true;
//					}
//				}else {
//					if(allSiz[n].inch == this.curSize){
//						this.alertImg = allSiz[n].img;
//						this.swiperImg = allSiz[n].img;
//						this.isShowSwImg = true;
//					}
//				}
//			}
			//联动修改头图
			this.posdopasop();
		},
		posdopasop: function(){
			var allData = this.data;
			var allSiz = allData.size;
			var allFrame = allData.frame;
			var allBinding = allData.binding;
			var allBookSkin = allData.bookCase;
			var imgUrlList = allData.imgUrlList;
			var switc = true;
			this.isShowSwImg = true;
			if(this.curSizeType == 2){
				switc = false;
			}
			/*
			 * 既要改变小图又要改变大图
			 * 根据尺寸、框、封面、装订有关
			 */
			var sizeCode = ''; 
			var frameCode = '';
			var bookSkinCode = ''; 
			var bindingCode = '';
			if(allSiz.length != 0){
				for(var n = 0; n < allSiz.length; n++){
					if(switc){
						if(allSiz[n].cm == this.curSize){
							sizeCode = allSiz[n].id;
							break;
						}
					}else {
						if(allSiz[n].inch == this.curSize){
							sizeCode = allSiz[n].id;
							break;
						}
					}
				}
			}
			if(allFrame.length != 0){
				for(var n = 0; n < allFrame.length; n++){
					if(allFrame[n].name == this.curFrame){
						frameCode = allFrame[n].id; 
						break;
					}
				}
			}
			if(allBinding.length != 0){
				for(var n = 0; n < allBinding.length; n++){
					if(allBinding[n].name == this.curBind){
						bindingCode = allBinding[n].id; 
						break;
					}
				}
			}
			if(allBookSkin.length != 0){
				for(var n = 0; n < allBookSkin.length; n++){
					if(allBookSkin[n].name == this.curCover){
						bookSkinCode = allBookSkin[n].id; 
						break;
					}
				}
			}
			for(var n = 0; n < imgUrlList.length; n++){
				if(sizeCode == imgUrlList[n].prodSize && frameCode == imgUrlList[n].prodFrame && bookSkinCode == imgUrlList[n].prodBookSkin && bindingCode == imgUrlList[n].prodBinding){
					this.alertImg = imgUrlList[n].img;
					this.swiperImg = imgUrlList[n].img;
					break;
				}else {
					this.alertImg = '';
					this.swiperImg = '';
				}
			}
		},
		hideSwImg: function(){
			this.isShowSwImg = false;
		},
		getProSize: function () {
			if(productKey == 'prints'){
				this.curSizeType = '2';
			}
			var arr = [];
			var arr2 = [];
			var arr3 = [];
			var size = vm.data.size;
			for (var n = 0; n < size.length; n++) {
				arr.push(size[n].cm);
				//if(size[n].img != ''){
				var obj = {};
				obj.img = size[n].img;
				obj.des = size[n].des;
				arr3.push(obj);
				//}
			}
			if (arr3.length == 0) {
				this.cursizeMsg = {
					img: '',
					des: ''
				}
			} else {
				this.cursizeMsg = arr3[0];
			}
			this.allsizeMsg = arr3;

			for (var n = 0; n < size.length; n++) {
				arr2.push(size[n].inch);
			}
			this.allSize = arr;
			this.inchSize = arr2;
			if (this.allSize.length < 9) {
				if(this.curSizeType == '1'){
					this.proSize = this.allSize;
				}else {
					this.proSize = this.inchSize;
				}
			} else {
				this.proSize = [];
				if(this.curSizeType == '1'){
					for (var m = 0; m < 9; m++) {
						this.proSize.push(this.allSize[m])
					}
				}else {
					for (var m = 0; m < 9; m++) {
						this.proSize.push(this.inchSize[m])
					}
				}
			}
			if (this.allSize.length > 9) {
				this.hideMoreSize = true;
			}
			if(this.data.defaultpriceList.length == 0){
				return;
			}
			if(this.curSizeType == '1'){
				this.curSize = this.data.defaultpriceList[0].snum;
			}else {
				this.curSize = this.data.defaultpriceList[0].inchnum;
			}
			
			var allSiz = vm.data.size;
			var switc = true;
			if(this.curSizeType == 2){
				switc = false;
			}
			//获得立即制作的那个小图
			for(var n = 0; n < allSiz.length; n++){
				if(switc){
					if(allSiz[n].cm == this.curSize){
						this.alertImg = allSiz[n].img;
					}
				}else {
					if(allSiz[n].inch == this.curSize){
						this.alertImg = allSiz[n].img;
					}
				}
			}
		},
		getSelimg: function () {
			var arr = [];
			var picList = vm.data.picList;
			for (var n = 0; n < picList.length; n++) {
				arr.push(picList[n].middle);
			}
			this.productSelimg = arr;
		},
		getBigimg: function () {
			var arr = [];
			var picList = vm.data.picList;
			for (var n = 0; n < picList.length; n++) {
				arr.push(picList[n].large);
			}
			this.prodcutBigimg = arr;
			this.videoPoster = picList[1].large;
		},
		init: function () {
			var that = this;
			superagent
				.get('/api/product/get')
				.set('Content-Type', 'application/json')
				.withCredentials()
				.query('prodKey=' + productKey)
				.end(function (err, res) {
					if (err) {
						console.log(err);
						alert('服务器开小差，请稍后刷新试试');
						return;
					}

					if (res.body.code == 200) {
						vm.data = JSON.parse(res.text).data;

						that.productName = vm.data.name;
						that.productType = vm.data.type;
						that.description = vm.data.description;
						that.proComment = vm.data.comments;
						that.proSale = vm.data.sales;
						that.detailMsg = vm.data.detail;
						that.mdetailMsg = vm.data.mdetail;
						that.getSelimg();
						that.getBigimg();
						that.getProSize();
						that.getProPrint();
						that.getProBind();
						that.getProCover();
						that.getProFrame();
						that.getProCapacity();
						that.getProGift();
						that.getStyle();
						that.getProPaper();
						that.getActivity();
						that.getRecomment();
						that.curBigimg = that.prodcutBigimg[that.curBigimgIndex];
						
						that.unit = vm.data.priceUnity;
						that.qi = vm.data.qi;
						that.curType = vm.data.oldProdType;
						that.productList = vm.data.type;
						that.serviceMsg_pc = vm.data.serverTag;
						that.serviceMsg_h5 = vm.data.mserverTag;
						that.isBuyNow = vm.data.makeType;
						that.serverTag = vm.data.serverTag;
						that.showDetailMsg = vm.data.haveDetail == 1 ? true : false;
						that.isShowMorePriceTip = vm.data.discount == 1 ? true : false;
						
						//新版活动
						that.getNewActivityList();
						
						//台历套餐相关
						that.isPackage = vm.data.isPackage == 1 ? true : false;
						that.packageList = vm.data.packageList;
						that.keyName = vm.data.keyName;
						that.memo = vm.data.memo;
						if(!that.isPackage){
							that.getPackageNum();
						}
						if(that.packageList.length != 0){
							that.package = vm.data.packageList[0];
							that.packageDetail = vm.data.packageList[0].packageDetail;
						}
						
						if(that.data.defaultpriceList.length != 0){
							that.proPrice = vm.data.defaultpriceList[0].prname;
							that.workId = vm.data.defaultpriceList[0].workId;
							that.coverName = vm.data.defaultpriceList[0].bname == '软皮简装' ? '软皮' : '硬皮';
						}
						
						for(var p = 0; p < vm.data.priceList.length; p++){
							if(vm.data.priceList[p].bname == that.curBind && vm.data.priceList[p].snum == that.curSize){
								that.coverPrice = vm.data.priceList[p].coverPrice;
								break;
							}
						}
						
//						for(var p = 0; p < vm.data.binding.length; p++){
//							if(vm.data.binding[p].name == vm.data.defaultpriceList[0].bname){
//								that.coverPrice = vm.data.binding[p].bindingPrice;
//								break;
//							}
//						}
						
						//页数相关
						that.maxPage = vm.data.defaultpriceList[0].endPage;
						that.minPage = vm.data.defaultpriceList[0].startPaper;
						that.addPage = vm.data.defaultpriceList[0].growPage;
						that.pagePrice = vm.data.defaultpriceList[0].growPrice;
						that.defPage = vm.data.defaultpriceList[0].defaultPage;
						that.addPageIsnot = vm.data.defaultpriceList[0].growPrice == '' ? false : true;
						//that.mathPagePri = (that.pagePrice / that.addPage * that.defPage + that.coverPrice).toFixed(2);
						
						//document.getElementsByTagName('title')[0].text = that.productName;
						setTimeout(function () {
							if(that.curBigimg != undefined){
								if (that.curBigimg.indexOf('mp4') != -1) {
									that.isVideo = true;
									if(document.getElementById('showVideo') == undefined){
										return;
									}
									document.getElementById('showVideo').innerHTML = "<source src=" + that.curBigimg + " type='video/mp4'></source><p>很抱歉，您的浏览器无法查看视频！</p>"
								}
							}
							
							var a = document.createElement('a');
							a.href = "javascript:";
							a.className = "createBook2";
							if (that.isBuyNow) {
								a.text = "立即购买";
							} else {
								a.text = "立即制作";
							}
							if (document.getElementsByClassName('proDetail')[0] != undefined) {
								document.getElementsByClassName('proDetail')[0].appendChild(a);
							}
							if (document.getElementsByClassName('createBook2')[0] != undefined) {
								document.getElementsByClassName('createBook2')[0].addEventListener('click', function () {
									if(that.isBuyNow == 3){
										that.showPayWay();
									}else if (that.isBuyNow) {
										that.goShopcar(document.getElementsByClassName('createBook2')[0]);
									} else {
										that.jumpCenter();
									}
								});
							}
							
							if(document.getElementsByClassName('proDetail')[0] != undefined){
								var aa = document.getElementsByClassName('proDetail')[0].getElementsByTagName('img');
								for(var n = 0;  n < aa.length; n++){
									aa[n].title = ''
								}
							}
							
						}, 1000)
						
						var alPicLis = vm.data.picList;
						for(var a = 0; a< alPicLis.length;a++){
							if(alPicLis[a].type !=1){
								that.nothingImg = alPicLis[a].middle;
								that.nothingImg2 = alPicLis[a].large;
								break;
							}
						}
						
					} else {
						alert(res.body.msg);
					}
				});
		},
		runAway: function (ind) {
			this.isShowSwImg = false;
			var moveS = document.getElementsByClassName('swiper-slide')[0].style.width.split('px')[0];
			mySwiper2.setWrapperTransition(500);
			var reS = parseInt(moveS) * parseInt(ind);
			mySwiper2.setWrapperTranslate('-' + reS);
			vm.curBigimgIndex = ind;

			this.curBigimg = this.prodcutBigimg[this.curBigimgIndex];
			if (this.curBigimg.indexOf('mp4') != -1) {
				this.isVideo = true;
				document.getElementById('showVideo').innerHTML = "<source src=" + this.curBigimg + " type='video/mp4'></source><p>很抱歉，您的浏览器无法查看视频！</p>"
			} else {
				this.isVideo = false;
				var vid = document.getElementsByClassName('videoo');
			    for(var k = 0 ;k < vid.length; k++){
			    	vid[k].pause();
			    }
			}
		},
		momo: function(e){
			var ass = setInterval(function(){
				if(vm.nothingImg != undefined && vm.alertImg == ''){
					document.getElementsByClassName('leftSpir')[0].getElementsByTagName('img')[0].src = vm.nothingImg;
					document.getElementById('lalatu').getElementsByTagName('img')[0].src = vm.nothingImg2;
					clearInterval(ass);
				}else if(vm.alertImg != ''){
					clearInterval(ass);
				}
			},1000);
		},
		scalee: function(){
			var moreDe = document.getElementById('swwwi').offsetTop;
   			var scrollTopp = document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
   			var aleImgLen = document.getElementsByClassName('aleImg');

   			var docEl = document.documentElement;
   			var clientWidth = docEl.clientWidth;
   			var fSize = 100 * (clientWidth / 750);

   			if(moreDe < scrollTopp){
   				var sc = scrollTopp / fSize;//移动距离转换成rem
   				var changSize = (6.9 - (sc - 2.6))/6.9 * 100;
   				for(var n = 0; n < aleImgLen.length; n++){
   					if(changSize >= 60 && changSize <= 100){//大图缩小阶段，最小状态在这控制
   						aleImgLen[n].style.width = changSize + '%';
   						if(document.getElementsByClassName('videoo')[n] != undefined && vm.isVideo){
   							document.getElementsByClassName('videoo')[n].style.width = changSize * 0.01 * 6.9 + 'rem';
   							document.getElementsByClassName('videoo')[n].style.height = changSize * 0.01 * 6.9 + 'rem';
   						}
   						if(sc < 8){
   							aleImgLen[n].style.marginTop = (sc - 2.5) + 'rem';
   							if(document.getElementsByClassName('videoo')[n] != undefined && vm.isVideo){
   								document.getElementsByClassName('videoo')[n].style.marginTop = (sc - 2.5) + 'rem';
   							}
   						}
   						document.getElementById('swwwi').className = '';
   						document.getElementsByClassName('otherMsg')[0].style.marginTop = '0';
   					}else {//请开始你的表演
   						if(sc < 9.8){//大小图
   							aleImgLen[n].style.marginTop = '0.1rem';
   							if(document.getElementsByClassName('videoo')[n] != undefined && vm.isVideo){
   								document.getElementsByClassName('videoo')[n].style.marginTop = '0.1rem';
   							}
   							document.getElementById('swwwi').className = 'active';

   							var theNumss = parseInt(sc) - 2.4 + 8.3;
   							if(theNumss <= 9){
   								document.getElementsByClassName('otherMsg')[0].style.marginTop = theNumss + 'rem';
   							}else {
   								document.getElementsByClassName('otherMsg')[0].style.marginTop = '8.7rem';
   							}
   //							document.getElementsByClassName('otherMsg')[0].style.marginTop = '8.3rem';

   							var dik = (sc - 5.3)/(9.8 - sc);
   							document.getElementsByClassName('selectImg')[0].getElementsByTagName('ul')[0].style.opacity = 1 - dik ;
   							if(1 - dik <= 0){
   								document.getElementsByClassName('selectImg')[0].getElementsByTagName('ul')[0].style.display = 'none';
   								//大图缩小
   								var sc = scrollTopp / fSize;
   								var changSize = (6.9 - (sc - 2.6 - 2))/6.9 * 100;
   								aleImgLen[n].style.width = changSize + '%';
   								if(document.getElementsByClassName('videoo')[n] != undefined && vm.isVideo){
   									document.getElementsByClassName('videoo')[n].style.width = changSize * 0.01 * 6.9 + 'rem';
   									document.getElementsByClassName('videoo')[n].style.height = changSize * 0.01 * 6.9 + 'rem';
   								}
   							}else {
   								document.getElementsByClassName('selectImg')[0].getElementsByTagName('ul')[0].style.display = 'block';
   							}
   						}else if(sc > 9.8 && sc < 11.2){//小图往上挪阶段（但是小图在上面被隐形了，所以这块基本没用）
   							var aik = sc - 9.8;
   							document.getElementsByClassName('selectImg')[0].getElementsByTagName('ul')[0].style.transform = 'translateY(-' + aik + 'rem)';
   							document.getElementsByClassName('selectImg')[0].style.height = 1.2 - aik + 'rem';

   							//大图缩小
   							var sc = scrollTopp / fSize;
   								var changSize = (6.9 - (sc - 2.6 - 2))/6.9 * 100;
   								aleImgLen[n].style.width = changSize + '%';
   								if(document.getElementsByClassName('videoo')[n] != undefined && vm.isVideo){
   									document.getElementsByClassName('videoo')[n].style.width = changSize * 0.01 * 6.9 + 'rem';
   									document.getElementsByClassName('videoo')[n].style.height = changSize * 0.01 * 6.9 + 'rem';
   								}
   						}else if(sc > 11.2 && sc < 17){//大图往上挪阶段
   							var sik = sc - 11.2;
   							document.getElementById('swwwi').style.top = '-' + sik + 'rem';
   						}
   					}
   				}
   			}else {//这里设置默认
   				var sc = scrollTopp / fSize;
   				var changSize = (6.9 - (sc - 2.6))/6.9 * 100;
   				for(var n = 0; n < aleImgLen.length; n++){
   					if(changSize > 100){
   						aleImgLen[n].style.width = '100%';
   						document.getElementsByClassName('selectImg')[0].getElementsByTagName('ul')[0].style.transform = 'translateY(0rem)';
   							document.getElementsByClassName('selectImg')[0].style.height = '1.2rem';
   						if(document.getElementsByClassName('videoo')[n] != undefined && vm.isVideo){
   							document.getElementsByClassName('videoo')[n].style.width = '6.9rem';
   							document.getElementsByClassName('videoo')[n].style.height = '6.9rem';
   						}
   						if(sc < 8){
   							aleImgLen[n].style.marginTop = '0.1rem';
   							if(document.getElementsByClassName('videoo')[n] != undefined && vm.isVideo){
   								document.getElementsByClassName('videoo')[n].style.marginTop = '0.1rem';
   							}
   						}
   					}
   				}
   			}
    	},
	    //切换显示说明
	    showingExplain: function (index) {
			if (index == this.openIndex) {
		    	this.openIndex = 'no'
		    } else {
		        this.openIndex = index
		    }
	    },
	},
	mounted: function () {
		this.init();
		var movex = 0;
		if(document.getElementById('lalatu')){
			document.getElementById('lalatu').addEventListener('touchstart', function(){
				vm.isShowSwImg = false;
			});
		}
		
		if (document.getElementsByClassName('slidder')[0] != undefined) {
			document.getElementsByClassName('slidder')[0].addEventListener('touchstart', function (e) {
				movex = e.changedTouches[0].clientX;

			});
			document.getElementsByClassName('slidder')[0].addEventListener('touchend', function (e) {
				if (movex > e.changedTouches[0].clientX) {
					//left
					vm.sliderLeftRight('1');
				} else if (movex < e.changedTouches[0].clientX) {
					//start
					vm.sliderLeftRight('0');
				}
			});
		}
		
		if (document.getElementsByClassName('swiper2').length != 0) {
			mySwiper2 = new Swiper('.swiper2', {
				direction: 'horizontal',
				pagination: '.swiper-pagination',
				observeParents: false,
				observer:true,//修改swiper自己或子元素时，自动初始化swiper 
				onSlideChangeStart: function (swiper) {
					vm.curBigimgIndex = swiper.activeIndex;
					vm.curBigimg = vm.prodcutBigimg[vm.curBigimgIndex];
					if (vm.curBigimg.indexOf('mp4') != -1) {
						vm.isVideo = true;
					} else {
						vm.isVideo = false;
					}
					//alert(swiper.activeIndex);
					//轮播时暂停所有视频
				    var vid = document.getElementsByClassName('videoo');
				    for(var k = 0 ;k < vid.length; k++){
				      vid[k].pause();
				    }
				},
			})
		}
		
		if (document.getElementsByClassName('swiper3').length != 0) {
			var mySwiper3 = new Swiper('.swiper3', {
				direction: 'horizontal',
				pagination: '.swiper-pagination',
				observeParents: true,
				observer:true,//修改swiper自己或子元素时，自动初始化swiper 
				onSlideChangeStart: function (swiper) {
					
				},
			})
		}
		
		if(document.getElementsByClassName('blackBg')[0] != undefined){
			document.getElementsByClassName('blackBg')[0].addEventListener('click', function(e){
				if(e.target == e.currentTarget){
					vm.isShowMoreBookPriceImg = false;
				}
			})
		}
		if(document.getElementsByClassName('priceList')[0] != undefined){
			document.getElementsByClassName('priceList')[0].addEventListener('click', function(e){
				if(e.target == e.currentTarget){
					vm.showTimePrice = false;
					vm.showPicPrice = false;
					vm.membentTip = false;
				}
			})
		}
		
		var u = navigator.userAgent;
		var mobile = !!u.match(/AppleWebKit.*Mobile.*/);
		
		var setInter = setInterval(function(){
			if(mobile){
				//评价晒单详情浮动
				if(document.getElementsByClassName('moreDetail').length != 0){
					var moreDeee = document.getElementsByClassName('moreDetail')[0].offsetTop;
					var windowH = document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
					if(moreDeee - windowH < 0){
						document.getElementsByClassName('moreDetail')[0].getElementsByTagName('ul')[0].className = 'active';
					}else {
						document.getElementsByClassName('moreDetail')[0].getElementsByTagName('ul')[0].className = '';
					}
				}
			}
			if(!mobile){
				clearInterval(setInter);
				return;
			}
			//滑动缩放在这
// 			vm.scalee();
		})
	}
});