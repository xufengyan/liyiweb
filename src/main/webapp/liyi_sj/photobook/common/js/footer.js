var ishowHelp = false;
var ishowAbout = false;
	
function showHelp(){
	if(!ishowHelp){
		document.getElementsByClassName('helpCenter')[0].style.display = 'block';
		ishowHelp = true;
	}else {
		document.getElementsByClassName('helpCenter')[0].style.display = 'none';
		ishowHelp = false;
	}
}

function showAbout(){
	if(!ishowAbout){
		document.getElementsByClassName('aboutMimo')[0].style.display = 'block';
		ishowAbout = true;
	}else {
		document.getElementsByClassName('aboutMimo')[0].style.display = 'none';
		ishowAbout = false;
	}
}

function downApp() {
	var u = navigator.userAgent;
	var ios = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/);
	var android = u.indexOf('Android') > -1 || u.indexOf('Linux') > -1;
	if (ios) {
		window.location = "https://itunes.apple.com/cn/app/id1104188183";
	} else if (android) {
		window.location = "http://a.app.qq.com/o/simple.jsp?pkgname=com.gzmob.mimo";
	}
}