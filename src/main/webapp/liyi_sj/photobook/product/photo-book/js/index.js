if (!Array.prototype.findIndex) {
  Object.defineProperty(Array.prototype, 'findIndex', {
    value: function(predicate) {
      'use strict';
      if (this == null) {
        throw new TypeError('Array.prototype.findIndex called on null or undefined');
      }
      if (typeof predicate !== 'function') {
        throw new TypeError('predicate must be a function');
      }
      var list = Object(this);
      var length = list.length >>> 0;
      var thisArg = arguments[1];
      var value;

      for (var i = 0; i < length; i++) {
        value = list[i];
        if (predicate.call(thisArg, value, i, list)) {
          return i;
        }
      }
      return -1;
    },
    enumerable: false,
    configurable: false,
    writable: false
  });
}

var productPhotobookIndexVm = new Vue({
	el: '#main',
	data: {
		m: '',
		banners: [],
		whymimo: {
			src: '',
			msrc: ''
		},
		showcase: [],
		prodList: [],
		productList: [],
		filterKeys: [],
		themesList: [],
		swiper: null,
		workId: -1,
	},
	computed: {
	},
	methods: {
		unifySrc: function(src) {
		  if (!/^http/g.test(src)) {
	      	if (/^\//g.test(src)) {
	      		src = 'http://design.mimoprint.com' + src;
	      	} else {
	      		src = 'http://design.mimoprint.com/' + src;
	      	}
	      }
	      return src;
		},
		filter: function(key, index, value) {
			console.log(key);
			console.log(index);
			console.log(value);
			key.curIndex = index;
			key.curValue = value;
			this.productList = this.calProductList();
		},
		calProductList: function () {
			var resList = JSON.parse(JSON.stringify(this.prodList));
			for (var i = 0; i < this.filterKeys.length; i++) {
				var item = this.filterKeys[i];
				if (item.key == 'sort') {
					if(item.curValue && item.curValue != 'all'){
						resList.sort(function (prev, next) {
							return next[item.curValue] - prev[item.curValue];
						});	
						console.log(resList)
					}
				} else {
					if(item.curValue && item.curValue != 'all') {
						resList = resList.filter(function (v) {
							if (v[item.key] == null) {
								return false;
							}
							var vs = v[item.key].split(';');
							if (vs.indexOf(item.curValue) >= 0) {
								return true;
							} else {
								return false;
							}
							
						})
					}
				}
			}
			return resList;
		},
	 	showTemplate: function (id){
	 	  var that = this;
	      if (that.m == 'm') {
	      	window.location = '/stage/show/' + id + '?from=theme';
	      	return;
	      }
	      
	      if(id == this.workId){
	        pageFlip.show('old');
	      }
	      else{
	        $.ajax({
	          url: '/api/styles/preview',
	          data: {
	            workId: id
	          },
	          success: function (data){
	            var Jsoninfo = JSON.parse(data.data.bigXml)
	            pageFlip.show(Jsoninfo)
	            that.workId = id;
	          }
	        })
	      }
	    },
		init: function () {
			console.log(this.mySwiper)
			var url = '/api/product/getPhotobooksSummary';
			var vm = this;
			superagent
				.post(url)
				.set('Content-Type', 'application/json')
				.end(function (err, res) {
					if (res.statusCode == 200) {
						var data = res.body.data;
						console.log(data);
						vm.banners = data.banner;
						if (vm.banners.length > 1) {
							vm.$nextTick(function() {
							console.log('banners load')
							vm.swiper = new Swiper('.summary-banner', {
								autoplay: 4000,
								loop: true,
								autoplayDisableOnInteraction: false,
								pagination: '.swiper-pagination',
								paginationClickable: true,
							})
						})	
						}
						
						
						for (var i = 0; i < data.stageWorkItems.length; i++) {
							 data.stageWorkItems[i].src = vm.unifySrc(data.stageWorkItems[i].src);
							 data.stageWorkItems[i].src=data.stageWorkItems[i].src.replace(/[\\]/g, '/');
						}
						var showcaseItems = data.stageWorkItems;

						var showcase = [];
						var tmp;
						for (var i = 0; i < showcaseItems.length; i++) {
							if (i % 4 == 0) {
								tmp = [];
								showcase.push(tmp);
							}
							tmp.push(showcaseItems[i]);
						}
						vm.showcase = showcase;
						vm.themesList = data.themeList;
						for (var ti = 0; ti < vm.themesList.length; ti++) {
							vm.themesList[ti].src =  'http://cdn-mimocampaign.mimoprint.com' + vm.themesList[ti].src;
						}
						vm.showcase = showcase;
						vm.prodList = data.prod_list;
						vm.prodList.sort(function(prev, next) {
							return prev.id - next.id;
						})
						vm.productList = vm.prodList;

						var filterKeysList = []
						var si = data.filterKeys.sort.value.findIndex(function(v) {
							return v.value == 'all' || v.name == '默认' || v.name == "全部";
						})
						if (si > 0) {
							data.filterKeys.sort.value.unshift(data.filterKeys.sort.value.splice(si,1)[0]);
						}

						filterKeysList.push({
							name: data.filterKeys.sort.name,
							key: 'sort',
							curIndex: 0,
							values: data.filterKeys.sort.value,
						});

						for(var i = 0; i < data.filterKeys.filter.length; i++) {
							data.filterKeys.filter[i].curIndex = 0;
							var vi = data.filterKeys.filter[i].values.findIndex(function(v) {
								return v.value == 'all' || v.name == '默认' || v.name == "全部";
							})
							if (vi > 0) {
								data.filterKeys.filter[i].values.unshift(data.filterKeys.filter[i].values.splice(vi,1)[0]);
							}
							filterKeysList.push(data.filterKeys.filter[i]);
						}
						vm.filterKeys = filterKeysList;
					} else {
						console.log("/api/product/getPhotobooksSummary 请求失败");
					}
				});
		}
	},
	mounted: function () {
		var vm = this;
		;(function(doc, win) {
			var docEl = doc.documentElement,
				resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
				recalc = function() {
					var clientWidth = win.innerWidth || docEl.clientWidth;
					if(!clientWidth) return;

					if (clientWidth <= 750) {
						vm.m = 'm';
					} else {
						vm.m = '';
					}
				};
			if(!doc.addEventListener) return;
			win.addEventListener(resizeEvt, recalc, false);
			doc.addEventListener('DOMContentLoaded', recalc, false);
			recalc();
		})(document, window);

		this.init();

		var whymimo = {
			src: '/product/timebooks/img/whymimo.jpg', msrc: '/product/timebooks/img/mwhymimo.jpg'
		}

		this.whymimo = whymimo;
	}

})