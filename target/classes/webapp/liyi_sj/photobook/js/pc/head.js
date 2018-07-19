

	function pc_s_loading(tip){
		$('.pc-loading-tip').html(tip);
		$('.pc-loading').show();
	}
	
	function pc_h_loading(){
		$('.pc-loading-tip').html('');
		$('.pc-loading').hide();
	}
	
	
	
$(document).ready(function() {
	$(".pc-title-view-index").bind({
		click : function(){
			var c = $('#c').val();
			if(c == null){
				c = '';
			}
			window.location.href = '/index.html?c='+c+'&r='+Math.random();
		}
	})
	
	$(".pc-title-view-wxbook").bind({
		click : function(){
			var c = $('#c').val();
			if(c == null){
				c = '';
			}
			window.location.href = '/pc/wxbook_index.html?c='+c+'&r='+Math.random();
		}
	})
	
	$(".pc-title-view-sinabook").bind({
		click : function(){
			var c = $('#c').val();
			if(c == null){
				c = '';
			}
			window.location.href = '/pc/sinabook_index.html?c='+c+'&r='+Math.random();
		}
	})
	
	$(".pc-title-view-pics").bind({
		click : function(){
			var c = $('#c').val();
			if(c == null){
				c = '';
			}
			window.location.href = '/pc/pics/pics_index.html?c='+c+'&r='+Math.random();
		}
	})
	
	$(".pc-title-view-books").bind({
		click : function(){
			var c = $('#c').val();
			if(c == null){
				c = '';
			}
			window.location.href = '/pc/l/myBook.html?c='+c+'&r='+Math.random();
		}
	})
	
	$(".user-login-in").bind({
		click : function(){
			var c = $('#c').val();
			if(c == null){
				c = '';
			}
			window.location.href = '/pc/login/tologin.html?c='+c+'&toUrl=/pc/l/myBook.html?c='+c+'&r='+Math.random();
		}
	})
	
	$(".user-login-out").bind({
		click : function(){
			var c = $('#c').val();
			if(c == null){
				c = '';
			}
			var data = {};
			data.r = Math.random();
			$.ajax({
	        	type: "GET",
		        url: "/pc/login/loginout.html",
		        data: data,
		        dataType: "json",
		        success: function(data){
		        	if(data.flag){
		        		window.location.href = '/pc/pics/pics_index.html?c='+c+'&r='+Math.random();
		        	}
		        }
	        })
		}
	})
	
});