var mmping = (function(mm) {

    Date.prototype.Format = function(fmt) {
        var o = {
            "M+": this.getMonth() + 1, //月份 
            "d+": this.getDate(), //日 
            "h+": this.getHours(), //小时 
            "m+": this.getMinutes(), //分 
            "s+": this.getSeconds(), //秒 
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
            "S": this.getMilliseconds() //毫秒 
        };
        if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)
            if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        return fmt;
    }

    var _gloField = {
        apiVer: 0.1,
        baseField: {},
        isInit: false,
        logger: '',
    };

    function createHttpRequest() {
        if (window.ActiveXObject) {
            return new ActiveXObject("Microsoft.XMLHTTP");
        } else if (window.XMLHttpRequest) {
            return new XMLHttpRequest();
        }
    }

    function AliLogTracker(host, project, logstore) {
        this.uri_ = 'http://' + project + '.' + host + '/logstores/' + logstore + '/track?APIVersion=0.6.0';
        this.params_ = new Array();
        this.httpRequest_ = createHttpRequest();
    }

    AliLogTracker.prototype = {
        push: function(key, value) {
            if (!key || !value) {
                return;
            }
            this.params_.push(key);
            this.params_.push(value);
        },
        logger: function() {
            var url = this.uri_;
            var k = 0;
            while (this.params_.length > 0) {
                if (k % 2 == 0) {
                    url += '&' + encodeURIComponent(this.params_.shift());
                } else {
                    url += '=' + encodeURIComponent(this.params_.shift());
                }
                ++k;
            }
            try {
                this.httpRequest_.open("GET", url, false);
                this.httpRequest_.send(null);
            } catch (ex) {
                if (window && window.console && typeof window.console.log === 'function') {
                    console.log("Failed to log to ali log service because of this exception:\n" + ex);
                    console.log("Failed log data:", url);
                }
            }

        }
    };


    function _mmping() {};

    function loadJsFile(args) {
        var element = args.element,
            src = args.src,
            loaded = args.loaded;
        var oJs = document.createElement("script");
        oJs.type = "text/javascript";
        oJs.src = src;
        document.getElementsByTagName(element)[0].appendChild(oJs);

        if (oJs.readyState) { //IE
            oJs.onreadystatechange = function() {
                if (oJs.readyState == "loaded" || oJs.readyState == "complete") {
                    oJs.onreadystatechange = null;
                    typeof loaded == 'function' && loaded();
                }
            };
        } else { //Others
            oJs.onload = function() {
                typeof loaded == 'function' && loaded();
            };
        }
    }

    function sendAjax(url, data, callback) {
        var formData = new FormData;
        for (var item in data) {
            formData.append(item, data[item])
        }

        var xhr = new XMLHttpRequest();
        xhr.open("POST", url, true);
        xhr.withCredentials = true;
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                callback && callback(xhr.responseText);
            }
        }
        xhr.send(formData);
    }

    function setCookie(name, value, expTime) {
        var exp = new Date(),
            expTime = expTime ? expTime : 365;
        exp.setTime(exp.getTime() + expTime * 24 * 60 * 60 * 1000);
        document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString() + ";path=/;domain=.mimoprint.com";
    }

    function getCookie(name) {
        var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
        if (arr != null) return unescape(arr[2]);
        return null;
    }

    function getVersion() {
        return _gloField.apiVer;
    }

    function guid() {
        function S4() {
            return (((1 + Math.random()) * 0x10000) | 0).toString(16).substring(1);
        }
        return (S4() + S4() + "-" + S4() + "-" + S4() + "-" + S4() + "-" + S4() + S4() + S4());
    }

    function getViewPort() {
        var w = document.documentElement.clientWidth || document.body.clientWidth,
            h = document.documentElement.clientHeight || document.body.clientHeight;
        return w + 'x' + h;
    }

    function getBase() {
        _gloField.baseField.apiVer = getVersion();
        _gloField.baseField.location = window.location.href;
        _gloField.baseField.screenColor = window.screen.colorDepth + '-bit';
        _gloField.baseField.screenResolution = window.screen.width + 'x' + window.screen.height;
        _gloField.baseField.viewportSize = getViewPort();
        _gloField.baseField.language = window.navigator.language || window.navigator.browserLanguage;
        _gloField.baseField.title = document.title;
        _gloField.baseField.userAgent = window.navigator.userAgent;
        _gloField.baseField.hitType = 'pageview';
        _gloField.baseField.os = getOs();
        _gloField.baseField.browser = getBrowser();
        _gloField.baseField.referrer = document.referrer;

        var utmSource = getParameterByName('utm_source'),
            utmCampaign = getParameterByName('utm_campaign');
        utmSource && (_gloField.baseField.utmSource = utmSource);
        utmCampaign && (_gloField.baseField.utmCampaign = utmCampaign);
    }

    function create(trackingId) {
        _gloField.baseField.trackingId = trackingId;
        init();
    }

    function setUid(uid) {
        if (uid) {
            _gloField.baseField.uid = uid;
        }
        setCookie('mmUid', uid);
    }

    function sendPV(url) {
        _gloField.baseField.hitTime = new Date().Format("yyyy-MM-dd hh:mm:ss");

        if (!_gloField.baseField.uid) {
            var cookieUid = getCookie('mmUid');
            _gloField.baseField.uid = cookieUid ? cookieUid : 0;
        }

        if (!_gloField.baseField.trackingId) {
            throw new Error('请先设置trackingId');
        }

        if (url) {
            _gloField.baseField.location = url;
        }

        //console.log(_gloField.baseField);
        sendLogger(_gloField.baseField);
    }

    function sendEV(evModule, evCategory, evName, evProps, evTime) {
        var hitTime = evTime || new Date().Format("yyyy-MM-dd hh:mm:ss"),
            copyBaseField = JSON.parse(JSON.stringify(_gloField.baseField)),
            evField = extend(copyBaseField, {
                evModule: evModule,
                evCategory: evCategory,
                evName: evName,
                evProps: evProps,
                hitTime: hitTime,
                hitType: 'event'
            })

        sendLogger(evField);
    }

    function sendLogger(data) {
        for (var item in data) {
            typeof data[item] == 'object' && (data[item] = JSON.stringify(data[item]))
            _gloField.logger.push(item, data[item]);
        }
        _gloField.logger.logger();
    }

    function extend(o1, o2) {
        if (typeof o1 == 'object' && typeof o2 == 'object') {
            for (var i in o2) {
                o1[i] = o2[i];
            }
        }
        return o1;
    }

    function getParameterByName(name) {
        var match = RegExp('[?&]' + name + '=([^&]*)')
            .exec(window.location.search);
        return match && decodeURIComponent(match[1].replace(/\+/g, ' '));
    };

    function browser() {
        var u = navigator.userAgent.toLowerCase(),
            p = navigator.platform.toLowerCase();

        var win = p.match(/win32/) || p.match(/windows/),
            mac = p.match(/mac68k/) || p.match(/macppc/) || p.match(/macintosh/) || p.match(/macintel/);

        return {
            //内核
            trident: u.match(/trident/), //IE内核
            presto: u.match(/presto/), //opera内核
            webKit: u.match(/applewebkit/), //苹果、谷歌内核
            gecko: u.match(/gecko/) && !u.match(/khtml/), //火狐内核

            //浏览器
            ie: u.match(/msie/) && !u.match(/opera/), //ie浏览器
            firefox: u.match(/firefox/), //火狐浏览器
            chrome: u.match(/chrome/) && u.match(/webkit/) && u.match(/mozilla/) && !u.match(/micromessenger/), //谷歌浏览器
            opera: u.match(/opera/), //opera 浏览器
            safari: u.match(/webkit/) && !(u.match(/chrome/) && u.match(/webkit/) && u.match(/mozilla/)) && !u.match(/micromessenger/), //safari 浏览器

            //设备
            mobile: !!u.match(/applewebkit.*mobile.*/), //是否为移动终端，不然就是PC咯

            //操作系统
            ios: !!u.match(/\(i[^;]+;( u;)? cpu.+mac os x/), //ios终端
            android: u.match(/android/) || u.match(/adr/), //android终端
            iPad: u.match(/ipad/), //是否iPad
            win: win, //是否win
            mac: mac, //是否mac
            unix: p.match(/x11/) && !win && !mac, //是否unix
            linux: p.match(/linux/), //是否linux

            //其他
            iPhone: u.match(/iphone/), //是否为iPhone或者QQHD浏览器
            webApp: !u.match(/safari/), //是否web应该程序，没有头部与底部
            wechat: u.match(/micromessenger/), //是否微信
            qq: u.match(/\sqq/) == 'qq', //是否QQ
        };
    }

    function getOs() {
        var config = browser();
        if (config.ios) {
            return 'ios';
        } else if (config.android) {
            return 'android';
        } else if (config.iPad) {
            return 'iPad';
        } else if (config.win) {
            return 'win';
        } else if (config.mac) {
            return 'mac';
        } else if (config.unix) {
            return 'unix';
        } else if (config.linux) {
            return 'linux';
        } else {
            return 'unknown';
        }
    }

    function getBrowser() {
        var config = browser();
        if (config.ie) {
            return 'ie';
        } else if (config.firefox) {
            return 'firefox';
        } else if (config.chrome) {
            return 'chrome';
        } else if (config.opera) {
            return 'opera';
        } else if (config.safari) {
            return 'safari';
        } else if (config.wechat) {
            return 'wechat'
        } else {
            return 'other';
        }
    }

    function init() {
        if (_gloField.isInit) { return };

        var clientId = getCookie('clientUin');
        if (!clientId) {
            clientId = guid();
            setCookie('clientUin', clientId);
        }
        _gloField.baseField.clientId = clientId;

        getBase();

        _gloField.logger = new AliLogTracker('cn-qingdao.log.aliyuncs.com', 'mimoprint', 'mmping');

        _gloField.isInit = true;
    }

    (function() {
        if (mm.temp) {
            init();
            for (var i = 0; i < mm.temp.length; i++) {
                var l = mm.temp[i],
                    en = l.shift();
                eval(en).apply(this, l)
            }
        }
    })()

    _mmping.prototype.init = init;
    _mmping.prototype.getVersion = getVersion;
    _mmping.prototype.create = create;
    _mmping.prototype.setUid = setUid;
    _mmping.prototype.sendPV = sendPV;
    _mmping.prototype.sendEV = sendEV;

    return _mmping;
})(window.mmping)