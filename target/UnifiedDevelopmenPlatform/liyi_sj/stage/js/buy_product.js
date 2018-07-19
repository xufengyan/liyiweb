
function getcouponli1(){
	var coup1=document.getElementById("coup-div1");
	 coup1.style.opacity=0.4;
	 coup1.style.color="darkgrey";
}

function getcouponli2(){
	var coup2=document.getElementById("coup-div2");
	 coup2.style.opacity=0.4;
	 coup2.style.color="darkgrey";
}

function getcouponli3(){
	var coup3=document.getElementById("coup-div3");
	 coup3.style.opacity=0.4;
	 coup3.style.color="darkgrey";
}

function getcouponli4(){
	var coup4=document.getElementById("coup-div4");
	 coup4.style.opacity=0.4;
	 coup4.style.color="darkgrey";
}


$(document).ready(function() {
	
	$('#checo1').click(function(){
	   $('#checo1').css("background-color","#EEEEEE");
	    $('#checo2').css("background-color","white");
});

$('#checo2').click(function(){
	   $('#checo2').css("background-color","#EEEEEE");
	    $('#checo1').css("background-color","white");
});

$('#checo3').click(function(){
	   $('#checo3').css("background-color","#EEEEEE");
	    $('#checo4').css("background-color","white");
	    $('#checo5').css("background-color","white");
	    $('#checo6').css("background-color","white");
	    $('#checo7').css("background-color","white");
	    $('#checo8').css("background-color","white");
});


$('#checo4').click(function(){
	   $('#checo4').css("background-color","#EEEEEE");
	    $('#checo3').css("background-color","white");
	    $('#checo5').css("background-color","white");
	    $('#checo6').css("background-color","white");
	    $('#checo7').css("background-color","white");
	    $('#checo8').css("background-color","white");
});


$('#checo5').click(function(){
	   $('#checo5').css("background-color","#EEEEEE");
	    $('#checo3').css("background-color","white");
	    $('#checo4').css("background-color","white");
	    $('#checo6').css("background-color","white");
	    $('#checo7').css("background-color","white");
	    $('#checo8').css("background-color","white");
});

$('#checo6').click(function(){
	   $('#checo6').css("background-color","#EEEEEE");
	    $('#checo3').css("background-color","white");
	    $('#checo5').css("background-color","white");
	    $('#checo4').css("background-color","white");
	    $('#checo7').css("background-color","white");
	    $('#checo8').css("background-color","white");
});

$('#checo7').click(function(){
	   $('#checo7').css("background-color","#EEEEEE");
	    $('#checo3').css("background-color","white");
	    $('#checo5').css("background-color","white");
	    $('#checo6').css("background-color","white");
	    $('#checo4').css("background-color","white");
	    $('#checo8').css("background-color","white");
});

$('#checo8').click(function(){
	   $('#checo8').css("background-color","#EEEEEE");
	    $('#checo3').css("background-color","white");
	    $('#checo5').css("background-color","white");
	    $('#checo6').css("background-color","white");
	    $('#checo7').css("background-color","white");
	    $('#checo4').css("background-color","white");
});

});



$(document).ready(function(){
//加的效果
$("#add").click(function(){
var n=$(this).prev().val();
var num=parseInt(n)+1;
if(num==1){ return 1;}
if(num>10){return 10;}
$(this).prev().val(num);
});
//减的效果
$("#jian").click(function(){
var n=$(this).next().val();
var num=parseInt(n)-1;
if(num<1){ return 1;}
if(num>10){return 10;}

$(this).next().val(num);
});
});