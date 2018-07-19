var data = {
	'requestUrl': window.location.href
}

superagent
	.post('/api/wx/getJsAPISignature')
	.set('Content-Type', 'application/json')
	.send(data)
	.end(function(err, res){
	    if(res.body.code == 200){
	    	var data = res.body.data.jsAPISignature;
	    	wxCon(data.appId, data.timestamp, data.nonce, data.signature);
	    }
	});
function wxCon (_appId, _timestamp, _nonceStr, _jsSignature){
	var _jsApiList = [
                'onMenuShareTimeline',
                'onMenuShareAppMessage',
                'onMenuShareQQ',
                'onMenuShareWeibo'
        ];
   
   wx.config({
        debug: false,
        appId: _appId,
        timestamp: _timestamp,
        nonceStr: _nonceStr,
        signature: _jsSignature,
        jsApiList: _jsApiList
    });
   
   wx.error(function (res) {
        
    });
   
   wx.ready(function () {
    	wx.onMenuShareAppMessage({
            title: _title, 
            desc: _desc, 
            link: _link, 
            imgUrl: _imgUrl, 
            type: '', 
            dataUrl: '', 
            success: function () {
                
            },
            cancel: function () {
                
            }
        });

        wx.onMenuShareTimeline({
            title: _title, 
            link: _link, 
            imgUrl: _imgUrl,
            success: function () {
                
            },
            cancel: function () {
                
            }
        });
        
        wx.onMenuShareQQ({
      		title: _title, 
		    desc: _desc,
		    link: _link,
		    imgUrl: _imgUrl,
            success: function () {
                
            },
            cancel: function () {
                
            }
      	});
    });
}