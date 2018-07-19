;(function () {
    window.onload = function(){
    	var browser = {
	        versions: function () {
	            var u = navigator.userAgent, app = navigator.appVersion;
	            return {         //移动终端浏览器版本信息
	                trident: u.indexOf('Trident') > -1, //IE内核
	                presto: u.indexOf('Presto') > -1, //opera内核
	                webKit: u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核
	                gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1, //火狐内核
	                mobile: !!u.match(/AppleWebKit.*Mobile.*/), //是否为移动终端
	                ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
	                android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, //android终端或uc浏览器
	                iPhone: u.indexOf('iPhone') > -1, //是否为iPhone或者QQHD浏览器
	                iPad: u.indexOf('iPad') > -1, //是否iPad
	                webApp: u.indexOf('Safari') == -1 //是否web应该程序，没有头部与底部
	            };
	        }(),
	        language: (navigator.browserLanguage || navigator.language).toLowerCase()
	    }
	
	    var checkIsWechat = function () {
	        var ua = navigator.userAgent.toLowerCase();//获取判断用的对象
	        return (ua.match(/MicroMessenger/i) == "micromessenger");
	    }
	
	    var isWechat = checkIsWechat();
	    var isMobile = browser.versions.mobile;
	    var gaCode = "UA-9580877-1";//全局统计
	    var gaCodeMobile = "UA-9580877-6";//移动端统计
	
	    (function (i, s, o, g, r, a, m) {
	        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
	            (i[r].q = i[r].q || []).push(arguments)
	        }, i[r].l = 1 * new Date(); a = s.createElement(o),
	        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
	    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
	
	    console.log("gaCode:" + gaCode);
	    ga('create', gaCode, 'auto');
	   	ga('send', 'pageview');
	    //移动端单独统计多一份
	    if(isMobile){
	    	ga('create', gaCodeMobile, 'auto', 'mobileTracker');
	    	ga('mobileTracker.send', 'pageview');
		}


	
	    (function () {
	        var oJs = document.createElement("script");
	        oJs.type = "text/javascript";
	        oJs.src = "http://cdn1.mimoprint.com/static/script/mmping.js?v=0815";
	        document.getElementsByTagName("head")[0].appendChild(oJs);
	
	        window.mmping = window.mmping || [];
	        window.mmping.methods = "create sendPV sendEV setUid".split(" ");
	        window.mmping.temp = window.mmping.temp || [];
	        window.mmping.factory = function (b) {
	            return function () {
	                var a = Array.prototype.slice.call(arguments);
	                a.unshift(b);
	                window.mmping.temp.push(a);
	                return window.mmping;
	            }
	        }
	        for (var i = 0; i < window.mmping.methods.length; i++) {
	            var key = window.mmping.methods[i];
	            window.mmping[key] = window.mmping.factory(key);
	        }
	
	        if (oJs.readyState) {  //IE  
	            oJs.onreadystatechange = function () {
	                if (oJs.readyState == "loaded" || oJs.readyState == "complete") {
	                    oJs.onreadystatechange = null;
	                    window.mmping = new mmping();
	                }
	            };
	        } else {  //Others  
	            oJs.onload = function () {
	                window.mmping = new mmping();
	            };
	        }
	    })(window)
	    window.mmping.create('MM-001');
	    window.mmping.sendPV();
    }
})(window, document);