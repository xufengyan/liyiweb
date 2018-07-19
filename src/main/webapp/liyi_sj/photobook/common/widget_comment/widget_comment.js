/*
 **Description: 产品评价,晒单展示
 **Author: biu,rachel
 */
Vue.component('widget-comment', {
	template: '<div class="Eva" id="Eva" v-if="sender == \'evaluate\' || sender == \'bask\'">\
        <div class="eva_tab" v-if="sender == \'evaluate\'">\
            <div class="eva_all" :class="{active: hasImgtype == 0}" @click="selectedEva(0)">\
                <span class="icon"></span>\
                <span id="evall" v-if="device == \'pc\'">全部({{allNum || 0}}条)</span>\
                <a id="evall" v-if="device == \'h5\'">全部评价({{allNum || 0}})</span>\
            </div>\
            <div class="eva_img" :class="{active: hasImgtype == 1}" @click="selectedEva(1)">\
                <span class="icon"></span>\
                <span id="imgall" v-if="device == \'pc\'">有图({{hadPhotoNum || 0}}条)</span>\
                <a id="imgall" v-if="device == \'h5\'">只看有图({{hadPhotoNum || 0}})</span>\
            </div>\
        </div>\
        <div class="post_tab" :data-Source="source"  v-if="sender == \'bask\'">\
            <div class="post_all" :class="{active: source == 0}" @click="selectedPost(0)">\
                <span class="icon"></span>\
                <span>全部</span>\
                <span id="postAll" v-if="source == 0">({{allNum}}条)</span>\
            </div>\
            <div class="post_wx" :class="{active: source == 1}" @click="selectedPost(1)">\
                <span class="icon"></span>\
                <span>微信朋友圈</span>\
                <span id="postWx" v-if="source == 1">({{allNum}}条)</span>\
            </div>\
            <div class="post_wb" :class="{active: source == 2}" @click="selectedPost(2)">\
                <span class="icon"></span>\
                <span>新浪微博</span>\
                <span id="postWb" v-if="source == 2">({{allNum}}条)</span>\
            </div>\
        </div>\
        <a class="back-to-top" id="back-to-top" title="返回顶部" v-if="pageIndex>3" v-on:click="backToTop()"><i class="twr twr-chevron-up"></i></a>\
        <div id="detailList" v-if="sender == \'evaluate\' || sender == \'bask\'">\
            <div class="eva_List" v-for="(item,oindex) in dataList" v-if="sender == \'evaluate\'">\
                <div class="userinfo">\
                    <img class="headimg" :src="checkHeadImg(item.headImgUrl,oindex)"/>\
                    <p>\
                        <img class="levelimg" :src="levalIcon[item.level]"/>\
                        <span class="levelText">{{nickName(item.nickName)}}</span>\
                        <span v-if="device == \'h5\'" class="updateTime">{{updateTime(item.updateTime)}}</span>\
                    </p>\
                </div>\
                <div class="detail_list">\
                    <p class="eva_Content">{{item.content}}</p>\
                    <div class="photolist" :class="{rem4: checkLength(item.photoList)}">\
                        <div v-for="(photo, index) in item.photoList" v-if="index < 9" @click="device == \'pc\' ? showImg(photo.imgUrl, oindex, index) : showH5Img(photo, item, index)" v-bind:class="{\'active\':dataList[oindex].bigImg == photo.imgUrl}">\
                            <figure :style="{backgroundImage: \'url(\' + photo.imgUrl + \'?x-oss-process=image/resize,w_140)\'}"></figure>\
                        </div>\
                    </div>\
                    <div class="showEvaimg" v-show="item.show_img" ref="imgBox"\
                        v-bind:style="{ width: item.activeWidth, height: item.activeHeight }" >\
                        <img v-bind:src="item.bigImg+\'?x-oss-process=image/resize,w_600\'" ref="bigPic"\
                             v-bind:style="{ transform: \'rotate(\'+ item.deg +\'deg)\',top: item.imgtop+\'px\', left:-item.imgtop+\'px\' }" />\
                        <div class="lefturn" v-on:click="turnDeg(0,oindex,item.deg)">左转</div>\
                        <div class="righturn" v-on:click="turnDeg(1,oindex,item.deg)">右转</div>\
                        <div class="closeimg" v-on:click="showImg(0,oindex,item.deg)">收起</div>\
                        <s class="prev" v-on:click="prev(item.photoList,oindex,item.bigImgIndex,item.bigImg)"></s>\
                        <s class="next" v-on:click="next(item.photoList,oindex,item.bigImgIndex,item.bigImg)"></s>\
                        <s class="center" v-on:click="showImg(0,oindex,item.deg)"></s>\
                    </div>\
                    <p class="productList">\
                        <span v-if="item.productName">规格尺寸：{{item.productName}}</span>\
                        <span v-if="item.page">页数：{{item.page}}</span>\
                        <span v-if="item.color">印刷：{{color[item.color]}}</span>\
                        <template v-if="item.paper">\
                        	<span v-if="item.paper == 29 && (item.productId == 7000 || item.productId == 7001 || item.productId == 7002 || item.productId == 7003 || item.productId == 7004 || item.productId == 7005 || item.productId == 7006 || item.productId == 7007 || item.productId == 7008 || item.productId == 7009 || item.productId == 7010 || item.productId == 7011 || item.productId == 7012 || item.productId == 8000 || item.productId == 8001 || item.productId == 7999)">纸张：三菱绒面相纸</span>\
                        	<span v-else>纸张：{{paper[item.paper]}}</span>\
                        </template>\
                        <span v-if="device == \'pc\'">{{updateTime(item.updateTime)}}</span>\
                    </p>\
                    <template v-for="reply in item.replyList">\
	                    <div class="reply" v-if="reply.content">\
	                        <div class="reply_name">米莫印品客服：</div>\
	                        <div class="reply_content">{{reply.content}}</div>\
	                    </div>\
                    </template>\
                </div>\
            </div>\
            <div class="eva_List2" v-for="(item, oindex) in dataList" v-if="sender == \'bask\'">\
                <div class="userinfo">\
                    <img class="headimg" :src="checkHeadImg(item.headImgUrl,oindex)"/>\
                    <p v-if="device == \'h5\'">\
                        <span>{{item.nickName}}</span>\
                        <span class="updateTime">{{updateTime(item.updateTime)}}</span>\
                    </p>\
                </div>\
                <div class="detail_list">\
                    <p class="levelText" v-if="device == \'pc\'">{{item.nickName}}</p>\
                    <p class="eva_Content">{{item.content}}</p>\
                    <div class="expand_media_box " v-show="item.showBigimgGroup">\
                        <div class="tab_feed_a">\
                            <div class="tab">\
                                <ul class="clearfix">\
                                    <li><span class="line S_line1" v-on:click="changeImg(2,oindex,item.Bigimg)">收起</span></li>\
                                    <li><span class="line S_line2" v-on:click="turnDeg2(0,oindex,item.Bigimg+\'?x-oss-process=image/resize,w_570\')">向左旋转</span></li>\
                                    <li><span class="line S_line3" v-on:click="turnDeg2(1,oindex,item.Bigimg+\'?x-oss-process=image/resize,w_570\')">向右旋转</span></li>\
                                </ul>\
                            </div>\
                            <div class="stage_box">\
                                <div class="imgBox">\
                                    <div class="box" v-bind:style="{height:item.boxHeight}">\
                                        <s class="prev" title="" v-on:click="changeImg(0,oindex,item.Bigimg)"></s>\
                                        <s class="next" title="" v-on:click="changeImg(1,oindex,item.Bigimg)"></s>\
                                        <s class="center" title="" v-on:click="changeImg(2,oindex,item.Bigimg)"></s>\
                                        <img v-bind:src="item.Bigimg+\'?x-oss-process=image/resize,w_570\'"ref="bigPic"\
                                             v-bind:style="{ transform: \'rotate(\'+ item.deg +\'deg)\',top: item.imgtop+\'px\', left:-item.imgtop+\'px\',height:item.BigimgHeight }">\
                                    </div>\
                                    <ul class="choose_box clearfix">\
                                        <li v-for="(img,evaimgindex) in item.photoList"\
                                            v-on:click="selectImg(oindex,img.imgUrl)" v-bind:class="{\'active\':item.Bigimg==img.imgUrl}">\
                                            <figure v-bind:style="{backgroundImage:\'url(\'+img.imgUrl+\'?x-oss-process=image/resize,w_100)\'}"></figure>\
                                        </li>\
                                    </ul>\
                                </div>\
                            </div>\
                        </div>\
                    </div>\
                    <div class="photolist2" :class="{rem4: checkLength(item.photoList)}"  v-show="!item.showBigimgGroup">\
                        <div v-for="(photo, index) in item.photoList" v-bind:class="{\'oneimg\': item.photoList.length == 1}">\
                            <figure :style="{backgroundImage: \'url(\' + photo.imgUrl + \'?x-oss-process=image/resize,w_220)\'}" @click="device == \'pc\' ? bigImg(oindex, index) : showH5Img(photo, item, index)" v-if="index < 9"></figure>\
                        </div>\
                    </div>\
                    <div class="show_img" v-if="bigImage.state">\
                        <img :src="bigImage.src + \'?x-oss-process=image/resize,w_600\'" :style="setDeg">\
                        <div class="turn_btn">\
                            <div class="lefturn" @click="turnback()">上一张</div>\
                            <div class="lefturn" @click="turnnext()">下一张</div>\
                            <div class="lefturn" @click="turnDeg(0)">左转</div>\
                            <div class="righturn" @click="turnDeg(1)">右转</div>\
                            <div class="closeimg" @click="bigImage.state = false">收起</div>\
                        </div>\
                    </div>\
                    <p class="productList spe_s9s">\
                        <span>来源：{{item.source == 1 ? \'微信朋友圈\' : \'新浪微博\'}}</span>\
                        <span class="sp_s9s" v-show="device == \'pc\'">{{updateTime(item.createTime)}}</span>\
                    </p>\
                </div>\
            </div>\
        </div>\
        <div class="paging" v-if="allPage != 1 && (sender == \'evaluate\' || sender == \'bask\') && device == \'pc\'">\
            <ul>\
                <li class="long" v-if="pageIndex != 1">\
                    <a href="#Eva" @click="turnPage(1)"">首页</a>\
                </li>\
                <li v-if="pageIndex != 1">\
                    <a  href="#Eva" @click="turnPage(pageIndex - 1)">&lt;</a>\
                </li>\
                <li v-for="num in pageArr">\
                    <a href="#Eva" :class="{active: pageIndex == num}" @click="turnPage(num)">{{num}}</a>\
                </li>\
                <li v-if="allPage != 0 && pageIndex != allPage">\
                    <a href="#Eva" @click="turnPage(pageIndex + 1)">&gt;</a>\
                </li>\
                <li class="long" v-if="allPage != 0 && pageIndex != allPage">\
                    <a href="#Eva" @click="turnPage(allPage)">末页</a>\
                </li>\
            </ul>\
        </div>\
        <div class="look_more" v-if="device == \'h5\'">\
            <a @click="lookMore()">{{lookMoreText}}</a>\
        </div>\
        <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true" v-if="device == \'h5\'">\
            <div class="pswp__bg"></div>\
            <div class="pswp__scroll-wrap">\
                <div class="pswp__container">\
                    <div class="pswp__item"></div>\
                    <div class="pswp__item"></div>\
                    <div class="pswp__item"></div>\
                </div>\
                <div class="pswp__ui pswp__ui--hidden">\
                    <div class="pswp__top-bar">\
                        <div class="pswp__counter"></div>\
                        <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>\
                        <div class="pswp__preloader">\
                            <div class="pswp__preloader__icn">\
                                <div class="pswp__preloader__cut">\
                                    <div class="pswp__preloader__donut"></div>\
                                </div>\
                            </div>\
                        </div>\
                    </div>\
                    <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">\
                        <div class="pswp__share-tooltip"></div>\
                    </div>\
                    <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button>\
                    <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button>\
                    <div class="pswp__caption">\
                        <div class="pswp__caption__center"></div>\
                    </div>\
                </div>\
            </div>\
        </div>\
        <div class="show_img_shade" v-if="bigImage.state" @click="bigImage.state = false"></div>\
        <div class="show_img" v-if="bigImage.state">\
            <img :src="bigImage.src + \'?x-oss-process=image/resize,w_600\'" :style="setDeg">\
            <div class="turn_btn">\
                <div class="lefturn" @click="turnback()">上一张</div>\
                <div class="lefturn" @click="turnnext()">下一张</div>\
                <div class="lefturn" @click="turnDeg(0)">左转</div>\
                <div class="righturn" @click="turnDeg(1)">右转</div>\
                <div class="closeimg" @click="bigImage.state = false">收起</div>\
            </div>\
        </div>\
    </div>',
	data: function() {
		return {
			dataList: [],
			allNum: 0, //总条数
			hadPhotoNum: 0, //有照片数量
			allPage: 0, //总页数
			pageSize: 4, //拉取个数
			pageIndex: 1, //第几页
			hasImgtype: 0,
			source: 0, //all & wx & wb
			nowNum: 0, //晒单当前条数
			device: 'pc',
			bigImage: {
				state: false,
				src: null,
				photoList: [],
				index: 0,
				deg: 0,
			},
			product_List_tab: {
				'软皮映画本': {
					id: 2,
					postNum: 0
				},
				'精装摄影集': {
					id: 3,
					postNum: 0
				},
				'对裱写真本': {
					id: 4,
					postNum: 0
				},
				'巧匠相册': {
					id: 5,
					postNum: 0
				},
				'时光书': {
					id: 6,
					postNum: 0
				},
				'炫彩冲印': {
					id: 7,
					postNum: 0
				},
				'章鱼贴': {
					id: 8,
					postNum: 0
				},
				'台历': {
					id: 9,
					postNum: 0
				},
				'挂历': {
					id: 10,
					postNum: 0
				},
				'框画': {
					id: 11,
					postNum: 0
				},
				'卡片': {
					id: 12,
					postNum: 0
				}
			},
			levalIcon: {
				'普通会员': '/common/widget_comment/img/copper.png',
				'银卡会员': '/common/widget_comment/img/silver.png',
				'金卡会员': '/common/widget_comment/img/gold.png',
				'钻石会员': '/common/widget_comment/img/diamond.png',
			},
			color: {
				6: '六色高清印刷',
				4: '四色标清印刷',
				11: '十一色艺术微喷',
				20: '数码印刷'
			},
			paper: {
				1: '铜版纸',
				2: '温暖手感特种纸',
				3: '德国古楼纸',
				4: '美国全景纸',
				5: '柔软书籍纸',
				6: '进口艺术卡纸',
				7: '爱普生相纸',
				8: '三菱RC相纸',
				9: '德国顶级纯棉艺术纸',
				10: '出口陶瓷',
				11: '滑面艺术纸',
				12: '全棉防水油画布',
				13: '厚磅滑面艺术纸',
				14: '米色环保纸',
				15: '绒面RC相纸',
				16: '粗面艺术纸',
				17: '进口金属相纸',
				18: '光面冲印相纸',
				19: '绒面冲印相纸',
				20: '高级哑粉纸',
				21: '日本防撕纸',
				22: '章鱼贴',
				23: '细纹艺术纸',
				24: '冰炫珠光纸',
				25: '厚磅艺术卡纸',
				26: '日本防撕防水相纸',
				27: '哈内姆勒-哑光艺术纸',
				28: '暖调艺术纸',
				29: '日本三菱纸',
				30: '300g哑粉',
				31: '300g白卡',
				32: '铜版纸覆哑膜',
				33: '铜版纸覆亮膜',
				34: '意大利100%原浆纸',
				35: '意大利艺术纸'
			},
			lookMoreText: '查看更多'
		}
	},
	props: {
		sender: {
			type: String,
			default: function() {
				return 'evaluate'; //评价evaluate、晒单bask
			}
		},
		proKey: {
			type: String,
			default: function() {
				return null;
			}
		}
	},
	created: function() {
		if(/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
			this.bindingCss("/common/widget_comment/widget_comment_m.css?v=1227");
			this.device = 'h5';
		} else {
			this.bindingCss("/common/widget_comment/widget_comment.css?v=0518xj");
			this.device = 'pc';
		}
	},
	watch: {
		sender: function(value) {
			this.pageIndex = 1;
			this.dataList = [];
			this.allNum = 0;
			this.allPage = 0;
			value == 'evaluate' && this.getEvaOrder();
			value == 'bask' && this.getPostOrder();
		}
	},
	computed: {
		allPage: function() { //总个数
			if(this.dataList == '') {
				return 0;
			}

			if(this.sender == 'evaluate') {
				if(this.hasImgtype == 0) {
					return Math.ceil(this.dataList.allCount / this.pageSize);
				} else if(this.hasImgtype == 1) {
					return Math.ceil(this.dataList.hadPhotoCount / this.pageSize);
				}
				return 0;
			}

			if(this.sender == 'bask') {
				this.nowNum = this.product_List_tab[this.proKey].postNum;
				return Math.ceil(this.nowNum / this.pageSize);
			}

			return 0;
		},
		pageArr: function() { //分页
			var list = [];
			var left = 1,
				right = this.allPage;
			if(this.allPage >= 11) {
				if(this.pageIndex > 5 && this.pageIndex < this.allPage - 4) {
					left = parseInt(this.pageIndex) - 5;
					right = parseInt(this.pageIndex) + 4;
				} else {
					if(this.pageIndex <= 5) {
						left = 1;
						right = 10;
					} else {
						right = this.allPage;
						left = this.allPage - 9;
					}
				}
			}
			while(left <= right) {
				list.push(left);
				left++;
			}
			return list;
		},
		setDeg: function() {
			return {
				transform: 'rotate(' + this.bigImage.deg + 'deg)'
			};
		},
	},
	methods: {
		backToTop: function() {
			var gotoTop = function() {
				var currentPosition = document.documentElement.scrollTop || document.body.scrollTop;
				currentPosition -= 50;
				if(currentPosition > 0) {
					window.scrollTo(0, currentPosition);
				} else {
					window.scrollTo(0, 0);
					clearInterval(timer);
					timer = null;
				}
			}
			var timer = setInterval(gotoTop, 1);
		},
		checkLength: function(photoList) {
			if(photoList && photoList.length == 4) {
				return true
			} else {
				return false
			}
		},
		bindingCss: function(src) {
			var oCss = document.createElement('link')
			oCss.setAttribute('rel', 'stylesheet')
			oCss.setAttribute('type', 'text/css')
			oCss.setAttribute('href', src)
			document.querySelector('head').appendChild(oCss)
		},
		checkHeadImg: function(src, index) {
			if(!src) {
				var num = this.dataList[index].num;
				return 'http://cdn1.mimoprint.com/static/images/mydefault/default_' + num + '.jpg';
			}
			if(src.indexOf('wx.qlogo.cn') != -1) {
				return 'http://get.mimoprint.com:3000/images?src=' + src.replace(/https/g, 'http') + '&sizeLimit=200';
			}
			if(src.indexOf('head/') != -1) {
				return 'http://cdn-mimoprint.mimoprint.com/' + src;
			}
			return src;
		},
		updateTime: function(time) {
			if(!time) {
				return null;
			}
			return this.convertData(new Date(time));
		},
		convertData: function(d) {
			return d.getFullYear() + '/' + (d.getMonth() + 1) + '/' + d.getDate() + ' ' + d.getHours() + ':' + d.getMinutes() + ':' + d.getSeconds();
		},
		nickName: function(nickname) {
			let nicN, firs, las;
			if(nickname == null) {
				return '';
			}
			firs = nickname.substr(0, 1);
			las = nickname.substr(-1);
			nicN = firs + '**' + las;
			return nicN;
		},
		// showImg: function (photo, item, index) {
		//     this.bigImage.state = true;
		//     this.bigImage.src = photo.imgUrl;
		//     this.bigImage.photoList = item.photoList;
		//     this.bigImage.index = index;
		// },
		//评价的展示图片
		showImg: function(status, i, imgIndex) {
			if(status == 0) {
				this.dataList[i].show_img = false;
				this.dataList[i].bigImgIndex = "";
				this.dataList[i].bigImg = '';
				this.dataList[i].deg = 0;
				this.dataList[i].imgtop = 0;
				//this.dataList[i].activeWidth = 'auto';
				this.dataList[i].activeHeight = 'auto';
				Vue.set(this.dataList, i, this.dataList[i])
			}
			if(status != 0) {
				if(this.dataList[i].show_img == false) {
					this.dataList[i].show_img = true;
					this.dataList[i].bigImg = status;
					this.dataList[i].bigImgIndex = imgIndex;
					var image = new Image();
					image.src = status;
					if((image.width > image.height && image.width < 600) || (image.width < image.height && image.height < 600)) {
						this.dataList[i].activeWidth = image.width + 'px';
					} else if(image.width > image.height && image.width >= 600) {
						this.dataList[i].activeWidth = 600 + 'px';
					} else if(image.width < image.height && image.height >= 600) {
						this.dataList[i].activeWidth = image.width / (image.height / 600) + 'px';
					} else if(image.width = image.height && image.width >= 600) {
						this.dataList[i].activeWidth = 600 + 'px';
					} else if(image.width = image.height && image.width < 600) {
						this.dataList[i].activeWidth = image.width + 'px';
					}

					Vue.set(this.dataList, i, this.dataList[i])
				} else if(this.dataList[i].show_img == true && this.dataList[i].bigImg == status) {
					this.dataList[i].show_img = false;
					this.dataList[i].deg = 0;
					this.dataList[i].imgtop = 0;
					this.dataList[i].activeWidth = 'auto';
					this.dataList[i].activeHeight = 'auto';
					this.dataList[i].bigImg = '';
					this.dataList[i].bigImgIndex = '';
					Vue.set(this.dataList, i, this.dataList[i])
				} else if(this.dataList[i].show_img == true && this.dataList[i].bigImg != status) {
					this.dataList[i].bigImg = status;
					this.dataList[i].bigImgIndex = imgIndex;
					var image = new Image();
					image.src = status;
					if((image.width > image.height && image.width < 600) || (image.width < image.height && image.height < 600)) {
						this.dataList[i].activeWidth = image.width + 'px';
					} else if(image.width > image.height && image.width >= 600) {
						this.dataList[i].activeWidth = 600 + 'px';
					} else if(image.width < image.height && image.height >= 600) {
						this.dataList[i].activeWidth = image.width / (image.height / 600) + 'px';
					} else if(image.width = image.height && image.width >= 600) {
						this.dataList[i].activeWidth = 600 + 'px';
					} else if(image.width = image.height && image.width < 600) {
						this.dataList[i].activeWidth = image.width + 'px';
					}

					this.dataList[i].deg = 0;
					this.dataList[i].imgtop = 0;
					//this.dataList[i].activeWidth = 'auto';
					this.dataList[i].activeHeight = 'auto';
					Vue.set(this.dataList, i, this.dataList[i])
				}
				console.log(this.dataList)
			}
		},
		turnDeg: function(status, i, deg) {
			if(Math.abs(deg) == 360) {
				deg = 0;
				this.dataList[i].deg = 0;
				Vue.set(this.dataList, i, this.dataList[i]);
			}
			var bigPic = this.$refs.bigPic;
			var imgBox = this.$refs.imgBox;
			var wid = bigPic[i].width;
			var hei = bigPic[i].height;
			switch(status) {
				case 0:
					this.dataList[i].deg = this.dataList[i].deg + 90;
					break;
				case 1:
					this.dataList[i].deg = this.dataList[i].deg - 90;
			}

			if(deg == 0) {
				if(wid > hei) {
					this.dataList[i].imgtop = Math.abs(wid - hei) * 1 / 2;
				} else if(wid < hei) {
					this.dataList[i].imgtop = -Math.abs(wid - hei) * 1 / 2;
				}

				this.dataList[i].activeWidth = hei * 1 + 'px';
				this.dataList[i].activeHeight = wid * 1 + 'px';
			} else if(Math.abs(deg) == 180) {
				if(wid > hei) {
					this.dataList[i].imgtop = Math.abs(wid - hei) / 2;
				} else if(wid < hei) {
					this.dataList[i].imgtop = -Math.abs(wid - hei) / 2;
				}
				this.dataList[i].activeWidth = hei * 1 + 'px';
				this.dataList[i].activeHeight = wid * 1 + 'px';
			} else if(Math.abs(deg) == 90 || Math.abs(deg) == 270) {
				this.dataList[i].imgtop = 0;
				this.dataList[i].activeWidth = wid * 1 + 'px';
				this.dataList[i].activeHeight = hei * 1 + 'px';
			};
			Vue.set(this.dataList, i, this.dataList[i]);
		},
		next: function(PhotoList, oindex, imgIndex, bigImg) {
			var image = new Image();
			if(imgIndex == PhotoList.length - 1) {
				this.dataList[oindex].bigImg = PhotoList[0].imgUrl;
				this.dataList[oindex].deg = 0;
				this.dataList[oindex].bigImgIndex = 0
				image.src = PhotoList[0].imgUrl;
			} else {
				this.dataList[oindex].bigImg = PhotoList[imgIndex + 1].imgUrl;
				this.dataList[oindex].deg = 0;
				this.dataList[oindex].bigImgIndex = imgIndex + 1;
				image.src = PhotoList[imgIndex + 1].imgUrl;
			}
			this.dataList[oindex].deg = 0;
			this.dataList[oindex].imgtop = 0;
			if((image.width > image.height && image.width < 600) || (image.width < image.height && image.height < 600)) {
				this.dataList[oindex].activeWidth = image.width + 'px';
			} else if(image.width > image.height && image.width >= 600) {
				this.dataList[oindex].activeWidth = 600 + 'px';
			} else if(image.width < image.height && image.height >= 600) {
				this.dataList[oindex].activeWidth = image.width / (image.height / 600) + 'px';
			} else if(image.width = image.height && image.width >= 600) {
				this.dataList[oindex].activeWidth = 600 + 'px';
			} else if(image.width = image.height && image.width < 600) {
				this.dataList[oindex].activeWidth = image.width + 'px';
			}

			this.dataList[oindex].activeHeight = 'auto';
			Vue.set(this.dataList, oindex, this.dataList[oindex])
		},
		prev: function(PhotoList, oindex, imgIndex, bigImg) {
			var image = new Image();
			if(imgIndex == 0) {
				var c = PhotoList.length - 1;
				this.dataList[oindex].bigImg = PhotoList[c].imgUrl;
				this.dataList[oindex].bigImgIndex = c;
				image.src = PhotoList[c].imgUrl;
			} else {
				this.dataList[oindex].deg = 0;
				this.dataList[oindex].bigImg = PhotoList[imgIndex - 1].imgUrl;
				this.dataList[oindex].bigImgIndex = imgIndex - 1
				image.src = PhotoList[imgIndex - 1].imgUrl;
			}
			this.dataList[oindex].deg = 0;
			this.dataList[oindex].imgtop = 0;
			if((image.width > image.height && image.width < 600) || (image.width < image.height && image.height < 600)) {
				this.dataList[oindex].activeWidth = image.width + 'px';
			} else if(image.width > image.height && image.width >= 600) {
				this.dataList[oindex].activeWidth = 600 + 'px';
			} else if(image.width < image.height && image.height >= 600) {
				this.dataList[oindex].activeWidth = image.width / (image.height / 600) + 'px';
			} else if(image.width = image.height && image.width >= 600) {
				this.dataList[oindex].activeWidth = 600 + 'px';
			} else if(image.width = image.height && image.width < 600) {
				this.dataList[oindex].activeWidth = image.width + 'px';
			}

			this.dataList[oindex].activeHeight = 'auto';
			Vue.set(this.dataList, oindex, this.dataList[oindex])

		},
		//晒单的展示图片
		bigImg: function(oindex, imgindex) {
			this.dataList[oindex].showBigimgGroup = true;
			this.dataList[oindex].Bigimg = this.dataList[oindex].photoList[imgindex].imgUrl;
			Vue.set(this.dataList, oindex, this.dataList[oindex])
			document.getElementsByClassName('spe_s9s')[oindex].style.width = '100%';
			document.getElementsByClassName('sp_s9s')[oindex].style.marginRight = '10px';
		},
		//晒单切换图片
		changeImg: function(status, oindex, Bigimg) { //status0上一张 1下一张 2收起
			if(this.dataList[oindex].photoList.length == 1) {
				return;
			}
			if(status == 2) {
				document.getElementsByClassName('spe_s9s')[oindex].style.width = '405px';
				document.getElementsByClassName('sp_s9s')[oindex].style.marginRight = '25px';
			}
			for(var i = 0; i < this.dataList[oindex].photoList.length; i++) {
				if(this.dataList[oindex].photoList[i].imgUrl == Bigimg) {
					var b
					if(status == 2) {
						this.dataList[oindex].showBigimgGroup = false;
						Vue.set(this.dataList, oindex, this.dataList[oindex])
						return;
					} else if(status == 0) {
						b = i == 0 ? this.dataList[oindex].photoList.length - 1 : i * 1 - 1
					} else if(status == 1) {
						b = i == (this.dataList[oindex].photoList.length - 1) ? 0 : i * 1 + 1
					}
					this.dataList[oindex].Bigimg = this.dataList[oindex].photoList[b].imgUrl;
					this.dataList[oindex].deg = 0; //这几句是恢复默认状态
					this.dataList[oindex].boxHeight = 'auto';
					this.dataList[oindex].imgtop = 0;
					this.dataList[oindex].BigimgHeight = 'auto';
					Vue.set(this.dataList, oindex, this.dataList[oindex])
					return;
				}
			}
		},
		//晒单旋转
		turnDeg2: function(status, oindex, Bigimg) { //status0左转 1右转
			var image = new Image();
			image.src = Bigimg;
			if(!image || image.width == 0) {
				return;
			}
			switch(status) {
				case 0:
					this.dataList[oindex].deg = this.dataList[oindex].deg + 90;
					break;
				case 1:
					this.dataList[oindex].deg = this.dataList[oindex].deg - 90;
			}
			if(Math.abs(this.dataList[oindex].deg) == 360) {
				this.dataList[oindex].deg = 0;
			}
			if(Math.abs(this.dataList[oindex].deg) == 90 || Math.abs(this.dataList[oindex].deg) == 270) {
				if(image.width < image.height) {
					this.dataList[oindex].BigimgHeight = image.width + 'px';
					let newImgWid = image.width * image.width / image.height;
					this.dataList[oindex].imgtop = -Math.abs(image.width - newImgWid) / 2;
					this.dataList[oindex].boxHeight = newImgWid + 'px';
				} else {
					this.dataList[oindex].imgtop = Math.abs(image.width - image.height) / 2;
					this.dataList[oindex].boxHeight = image.width + 'px';
				}
			} else {
				this.dataList[oindex].boxHeight = 'auto';
				this.dataList[oindex].imgtop = 0;
				this.dataList[oindex].BigimgHeight = 'auto'
			}
			Vue.set(this.dataList, oindex, this.dataList[oindex])
		},
		selectImg: function(oindex, imgUrl) {
			this.dataList[oindex].deg = 0;
			this.dataList[oindex].boxHeight = 'auto';
			this.dataList[oindex].imgtop = 0;
			this.dataList[oindex].BigimgHeight = 'auto'
			this.dataList[oindex].Bigimg = imgUrl;
			Vue.set(this.dataList, oindex, this.dataList[oindex])
		},
		turnback: function() {
			if(this.bigImage.index == 0) {
				this.bigImage.index = this.bigImage.photoList.length - 1;
			} else {
				this.bigImage.index--;
			}
			this.bigImage.src = this.bigImage.photoList[this.bigImage.index].imgUrl;
		},
		turnnext: function() {
			if(this.bigImage.index == this.bigImage.photoList.length - 1) {
				this.bigImage.index = 0;
			} else {
				this.bigImage.index++;
			}
			this.bigImage.src = this.bigImage.photoList[this.bigImage.index].imgUrl;
		},
		// turnDeg: function (type) {
		//     if (type == 0) {
		//         this.bigImage.deg -= 90;
		//     } else {
		//         this.bigImage.deg += 90;
		//     }
		//     if (this.bigImage.deg > 180) {
		//         this.bigImage.deg -= 360;
		//     }
		//     if (this.bigImage.deg < -180) {
		//         this.bigImage.deg += 360;
		//     }
		// },
		showH5Img: function(photo, item, index) {
			var that = this;
			var list = item.photoList;
			var content = item.content;
			var limitwidth = '?x-oss-process=image/resize,w_30';
			var list1 = [];

			var count = 0;
			for(var i = 0; i < list.length; i++) {
				(function(n) {
					var img = new Image();
					img.onload = function() {
						list1.push(img.height)
						count++;
						if(count == list.length) {
							that.openPhotoSwipe(list, content, index, list1);
						}
					}
					img.src = list[n].imgUrl + limitwidth;
				})(i)
			}
		},
		openPhotoSwipe: function(list, content, index, list1) {
			var pswpElement = document.querySelectorAll('.pswp')[0];
			var items = [];
			for(var i = 0; i < list.length; i++) {
				var naturalWidth = 30 * 50;
				var naturalHeight = list1[i] * 50;
				var item = {
					src: list[i].imgUrl + '?x-oss-process=image/resize,w_1024',
					w: naturalWidth,
					h: naturalHeight,
					title: content
				}
				items.push(item)
			}
			var options = {
				history: false,
				focus: false,
				showAnimationDuration: 0,
				hideAnimationDuration: 0,
				index: index
			};
			var gallery = new PhotoSwipe(pswpElement, PhotoSwipeUI_Default, items, options);
			gallery.init();
		},
		turnPage: function(index) {
			console.log(index)
			this.pageIndex = index;
			this.sender == 'evaluate' && this.getEvaOrder();
			this.sender == 'bask' && this.getPostOrder();
		},
		selectedEva: function(status) {
			if(status == 1 && this.hadPhotoNum == 0) {
				return;
			}
			this.hasImgtype = status;
			this.pageIndex = 1;
			this.getEvaOrder();
			if(this.device == 'h5') {
				var moreDeee = document.getElementsByClassName('moreDetail')[0].offsetTop;
				var windowH = document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
				if(moreDeee < windowH) {
					window.scrollTo(0, moreDeee);
					document.getElementById('detailList').style.paddingTop = '.9rem'
				}
			}
		},
		selectedPost: function(status) {
			this.source = status;
			this.pageIndex = 1;
			this.getPostOrder();
		},
		lookMore: function() {
			if(this.allPage == 0 || this.allPage == 1 || this.allPage == this.pageIndex) {
				this.lookMoreText = '没有更多了';
				return;
			} else {
				this.lookMoreText = '查看更多';
			}
			this.pageIndex++;
			this.sender == 'evaluate' && this.getEvaOrder(this.evaOrderH5Callback);
			this.sender == 'bask' && this.getPostOrder(this.postOrderH5Callback);
		},
		evaOrderH5Callback: function(data) {
			this.dataList = this.dataList.concat(data.data.commentList);
			this.allNum = data.data.allNum;
			this.allPage = data.data.allPage;
			this.hadPhotoNum = data.data.hadPhotoNum;
		},
		postOrderH5Callback: function(data) {
			this.dataList = this.dataList.concat(data.data.shoppingList);
			this.allPage = data.data.allPage;
			this.allNum = data.data.allNum;
		},
		getEvaOrder: function(callback) {
			var that = this;
			if(!this.proKey) return;

			this.lookMoreText = '查看更多';
			superagent
				.post('/api/comment/getComments')
				.set('Content-Type', 'application/json')
				.withCredentials()
				.send({
					'key': this.proKey,
					'hasImg': this.hasImgtype,
					'currentPage': this.pageIndex,
					'pageNum': this.pageSize
				})
				.end(function(err, res) {
					if(err) {
						alert(err);
						return;
					}

					if(res.statusCode == 200) {
						var data = res.body;
						//如果有回调就不执行默认的操作
						if(typeof callback === 'function') {
							callback(data);
							return;
						}
						that.dataList = data.data.commentList;
						that.allNum = data.data.allNum;
						that.allPage = data.data.allPage;
						that.hadPhotoNum = data.data.hadPhotoNum;
						for(var i = 0; i < that.dataList.length; i++) {
							that.dataList[i].bigImg = '';
							that.dataList[i].bigImgIndex = '';
							that.dataList[i].show_img = false;
							that.dataList[i].deg = 0;
							that.dataList[i].imgtop = 0;
							that.dataList[i].activeWidth = 'auto';
							that.dataList[i].activeHeight = 'auto';
							that.dataList[i].num = Math.ceil(Math.random() * 12); //随机头像
						}
					} else {
						console.log("请求失败");
					}
				});
		},
		getPostOrder: function(callback) {
			var that = this;
			if(!this.proKey) return;

			this.lookMoreText = '查看更多';
			superagent
				.post('/api/comment/getShoppingExperienceInfo')
				.set('Content-Type', 'application/json')
				.withCredentials()
				.send({
					'key': this.proKey,
					'source': this.source,
					'currentPage': this.pageIndex,
					'pageNum': this.pageSize
				})
				.end(function(err, res) {
					if(err) {
						alert(err);
						return;
					}

					if(res.statusCode == 200) {
						var data = res.body;
						//如果有回调就不执行默认的操作
						if(typeof callback === 'function') {
							callback(data);
							return;
						}
						that.dataList = data.data.shoppingList;
						that.allPage = data.data.allPage;
						that.allNum = data.data.allNum;
						for(var i = 0; i < that.dataList.length; i++) {
							that.dataList[i].showBigimgGroup = false;
							that.dataList[i].Bigimg = '';
							that.dataList[i].bigImgIndex = '';
							that.dataList[i].show_img = false;
							that.dataList[i].deg = 0;
							that.dataList[i].imgtop = 0;
							that.dataList[i].activeWidth = 'auto';
							that.dataList[i].activeHeight = 'auto';
							that.dataList[i].num = Math.ceil(Math.random() * 12); //随机头像
						}
					} else {
						console.log("请求失败");
					}
				});
		},
	},
	mounted: function() {
		var setInter = setInterval(function() {
			if(!(/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent))) {
				clearInterval(setInter);
				return;
			}
			//评价晒单详情浮动
			var moreDeee = document.getElementsByClassName('moreDetail')[0].offsetTop;
			var windowH = document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
			if(document.getElementsByClassName('eva_tab').length > 0 && (moreDeee - windowH < 0)) {
				document.getElementsByClassName('eva_tab')[0].className = 'eva_tab active';
				document.getElementById('detailList').style.paddingTop = '1.8rem';
				document.getElementById('back-to-top') ? document.getElementById('back-to-top').style.display = 'block' : ''

			} else if(document.getElementsByClassName('eva_tab').length > 0 && (moreDeee - windowH > 0)) {
				document.getElementsByClassName('eva_tab')[0].className = 'eva_tab';
				document.getElementById('detailList').style.paddingTop = '0';
				document.getElementById('back-to-top') ? document.getElementById('back-to-top').style.display = 'none' : ''
			} else if(document.getElementById('detailList') && document.getElementsByClassName('eva_tab').length == 0 && (moreDeee - windowH < 0)) {
				document.getElementById('detailList').style.paddingTop = '.9rem';
				document.getElementById('back-to-top') ? document.getElementById('back-to-top').style.display = 'block' : ''
			} else if(document.getElementById('detailList') && document.getElementsByClassName('eva_tab').length == 0 && (moreDeee - windowH > 0)) {
				document.getElementById('detailList').style.paddingTop = '0';
				document.getElementById('back-to-top') ? document.getElementById('back-to-top').style.display = 'none' : ''
			}
		})
	}
});