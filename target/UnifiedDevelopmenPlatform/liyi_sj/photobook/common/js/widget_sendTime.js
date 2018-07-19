/*
    发货日期组件
    son9shu
*/

var widget_sendTime = {

    doc: '',

    doc2: '',

    doc3: '',

    noAg: false,

    noGa: false,

    init: function (doc, doc2) {
        this.noAg = doc == this.doc ? true : false;
        this.doc = doc;
        this.doc2 = doc2 == undefined ? '' : doc2;
        this.get_send_time();
    },

    init_no: function (doc) {
        this.noAg = false;
        this.noGa = true;
        this.doc3 = doc;
        this.get_send_time();
    },

    substring_msg_no: function (msg) {
        var sendTime_text = '',
            getMsg = msg,
            msgArr = getMsg.split(''),
            exc = new RegExp(/^[0-9]$/),
            index1 = 0,
            index2 = 0,
            rund1 = false,
            rund2 = false;

        for (var n = 0; n < msgArr.length; n++) {
            if (exc.test(msgArr[n])) {
                if (msgArr[n + 1] == '月' || msgArr[n + 2] == '月') {
                    if (rund1) {
                        continue;
                    }
                    index1 = n;
                    rund1 = true;
                } else if (msgArr[n + 1] == '日') {
                    if (rund2) {
                        continue;
                    }
                    index2 = n + 1;
                    rund2 = true;
                } else if (msgArr[n + 2] == '日') {
                    if (rund2) {
                        continue;
                    }
                    index2 = n + 2;
                    rund2 = true;
                }
            }
        }

        var span1 = document.createElement('span'),
            span2 = document.createElement('span'),
            span3 = document.createElement('span');

        span1.textContent = getMsg.substring(0, index1);
        span2.textContent = getMsg.substring(index1, index2 + 1);
        span3.textContent = getMsg.substring(index2 + 1);

        span1.className = 'widget_getTime_span1';
        span2.className = 'widget_getTime_span2';
        span3.className = 'widget_getTime_span3';


        this.doc3.appendChild(span1);
        this.doc3.appendChild(span2);
        this.doc3.appendChild(span3);
    },

    substring_msg: function (msg) {
        var sendTime_text = '',
            getMsg = msg,
            msgArr = getMsg.split(''),
            exc = new RegExp(/^[0-9]$/),
            index1 = 0,
            index2 = 0,
            rund1 = false,
            rund2 = false;

        for (var n = 0; n < msgArr.length; n++) {
            if (exc.test(msgArr[n])) {
                if (msgArr[n + 1] == '月' || msgArr[n + 2] == '月') {
                    if (rund1) {
                        continue;
                    }
                    index1 = n;
                    rund1 = true;
                } else if (msgArr[n + 1] == '日') {
                    if (rund2) {
                        continue;
                    }
                    index2 = n + 1;
                    rund2 = true;
                } else if (msgArr[n + 2] == '日') {
                    if (rund2) {
                        continue;
                    }
                    index2 = n + 2;
                    rund2 = true;
                }
            }
        }

        var span1 = document.createElement('span'),
            span2 = document.createElement('span'),
            span3 = document.createElement('span'),
            span4 = document.createElement('span'),
            span5 = document.createElement('span'),
            span6 = document.createElement('span');

        span1.textContent = getMsg.substring(0, index1);
        span2.textContent = getMsg.substring(index1, index2 + 1);
        span3.textContent = getMsg.substring(index2 + 1);
        span4.textContent = getMsg.substring(0, index1);
        span5.textContent = getMsg.substring(index1, index2 + 1);
        span6.textContent = getMsg.substring(index2 + 1);

        span1.className = 'widget_getTime_span1';
        span2.className = 'widget_getTime_span2';
        span3.className = 'widget_getTime_span3';
        span4.className = 'widget_getTime_span1';
        span5.className = 'widget_getTime_span2';
        span6.className = 'widget_getTime_span3';


        this.doc.appendChild(span1);
        this.doc.appendChild(span2);
        this.doc.appendChild(span3);

        if (this.doc2 != '') {
            this.doc2.appendChild(span4);
            this.doc2.appendChild(span5);
            this.doc2.appendChild(span6);
        }
    },

    get_send_time: function () {
        if (this.noAg) {
            return;
        }
        var formData = new FormData,
            url = 'http://design.mimoprint.com/activity/GetConsignmentTime',
            xhr = new XMLHttpRequest();

        formData.append("hostName", window.location.origin);

        xhr.open("POST", url, true);
        xhr.withCredentials = true;
        xhr.onload = function () {
            if ((xhr.status >= 200 && xhr.status < 300) || xhr.status == 304) {
                var msg = JSON.parse(xhr.responseText).msg;
                if (widget_sendTime.noGa) {
                    widget_sendTime.noGa = false;
                    widget_sendTime.substring_msg_no(msg);
                } else {
                    widget_sendTime.substring_msg(msg);
                }
            } else {
                widget_sendTime.get_send_time_bak();
            }
        }
        xhr.send(formData);
        this.noAg = true;
    },

    get_send_time_bak: function () {
        var now = new Date(),
        //因为周一到周五下单，五日后发货总会遇到周末
            // stint = 7 * 24 * 60 * 60 * 1000,
        //周六下单就只调过周日，一共六天后发货	
            // astint = 6 * 24 * 60 * 60 * 1000,
        //周日下单正常五天后发货
            // ustint = 5 * 24 * 60 * 60 * 1000;
        // 修改需求，到时候还会改回来的

        // 周四周五11天之后发货
        fstint = 11 * 24 * 60 * 60 * 1000;
        var fdeliveryTime = new Date(now.getTime() + fstint);
        //周一到周三,周日九日后发货
        stint = 9 * 24 * 60 * 60 * 1000;
        var deliveryTime = new Date(now.getTime() + stint);
        //周六10日后发货
        astint = 10 * 24 * 60 * 60 * 1000;
        var adeliveryTime = new Date(now.getTime() + astint);

        //周一到周五七日后发货
        // var deliveryTime = new Date(now.getTime() + stint);
        //周六六日后发货
        // var adeliveryTime = new Date(now.getTime() + astint);
        //周日正常发货
        // var udeliveryTime = new Date(now.getTime() + ustint);

        //获取当天星期几
        var weekday = now.getDay();

        // if (weekday === 0) {
        // 	var ummonth = udeliveryTime.getMonth() + 1;
        // 	var udday = udeliveryTime.getDate();
        // 	var sendTime = ummonth + '月' + udday + '日';
        // }
        // else if (weekday === 6) {
        // 	var ammonth = adeliveryTime.getMonth() + 1;
        // 	var adday = adeliveryTime.getDate();
        // 	var sendTime = ammonth + '月' + adday + '日';
        // } else {
        // 	var mmonth = deliveryTime.getMonth() + 1;
        // 	var dday = deliveryTime.getDate();
        // 	var sendTime = mmonth + '月' + dday + '日';
        // }

        // 临时的需求
        if (weekday === 4 || weekday === 5) {
            var fmmonth = fdeliveryTime.getMonth() + 1;
            var fdday = fdeliveryTime.getDate();
            var sendTime = fmmonth + '月' + fdday + '日';
        }
        else if (weekday === 6) {
            var ammonth = adeliveryTime.getMonth() + 1;
            var adday = adeliveryTime.getDate();
            var sendTime = ammonth + '月' + adday + '日';
        } else {
            var mmonth = deliveryTime.getMonth() + 1;
            var dday = deliveryTime.getDate();
            var sendTime = mmonth + '月' + dday + '日';
        }
        return sendTime;
    }
}