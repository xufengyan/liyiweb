<%--
  Created by IntelliJ IDEA.
  User: xufeng
  Date: 2018/5/15
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init_layui.jsp"%>

<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" href="<%=basePath%>/liyi_sj/css/index_css.css" />
</head>
<style>
    .sj-heard{width: 266px;height: 59px; position: absolute;right: 130px;top: 0px;line-height: 59px;z-index:999}
    .sjimg{float: left;border-radius: 50%;margin-right: 10px;height: 40px;width: 40px;margin-top: 10px}
    .dir{display: inline-block;list-style: none;margin: 0;padding: 0;
        -webkit-padding-start: 31px;-webkit-margin-before: -3em;-webkit-margin-start: 22px;}
    .dir li{display: inline-block;float: left;margin: 0;padding: 0;width: 70px;text-align: center;line-height: 16px;}
    .dir li span{display: block;font-size: 12px;color: #fff;font-family: sellerLayout;}
    .arrow{color: #fff;font-family: sellerLayout;display: inline-block;margin-top: 5px;font-size: 14px;vertical-align: top;}
    .info{width: 400px;height:400px;border:1px solid plum;display:none;top: 60px;float: right;right: -1px;}
    .daohang{width: 500px;height:59px;position: absolute;
        top:0px;left: 340px;line-height: 59px;font-size: 15px}
    .links{display: inline-block;list-style: none;margin: 0 0 0 16px;padding: 0;}
    .links li{display: inline-block;float: left;text-align: -webkit-match-parent;width: 120px;}
    .links li.home a {background: #0078c8;}
    .daohang .links li a,
    .daohang .links li span {
        display: block;
        padding: 0 10px;
        height: 59px;
        font-size: 14px;
        line-height: 59px;
        text-align: center;
        color: #fff;
        text-decoration: none;
        font-family: sellerLayout;
    }
    .daohang .links li a:hover, .daohang .links li span:hover {color: rgba(255,255,255,.8);}
    .gengduo{width:120px;height: 160px;border: 1px solid white;background: #fff;color: #0C0C0C;display: none}
    .gdul{display:block;list-style: none;}
    .gengduo .gdul li{display: inline-block;float: left;margin: 0;padding: 0;width: 120px;text-align: center;line-height: 30px;}
    .gengduo .gdul li a{color: #0C0C0C;height:40px;line-height: 40px}
    .gengduo .gdul li a:hover{color:#008AE5;}
</style>

<body style="margin: 0px; background-color: #F5F5F5;">

<div class="liyitop" style="background-color: #008AE5; color: #ffffff" >

    <span style="margin-left: 150px;"><img src="<%=basePath%>/liyi_sj/img/dianpu1.png"></span>

    <span class="sjlogin" style="font-size: 18px"><%=request.getSession().getAttribute("usernick")%></span>

    <div class="sj-heard" id="layer" onmouseover="sho()" onmouseout = "hid()">
        <img src="<%=basePath%>/liyi_sj/img/6C0B51A862DC70CB1FAD1746B70B7746.jpg" alt="" class="sjimg">
        <ul class="dir" >
            <li>
                <span>描述相符</span>
                <span>0</span>
            </li>
            <li>
                <span>服务态度</span>
                <span>0</span>
            </li>
            <li>
                <span>物流服务</span>
                <span>0</span>
            </li>
        </ul>
        <span class="arrow"></span>

        <div class="info" id="layer1">
        </div>
    </div>


    <%--<a href="<%=basePath%>/sj_information/esc" class="sjleave">退出店铺</a>--%>
</div>




<div class="pilot">

    <div class="pilot_left">

        <div class="heading">
            <h1>商家管理</h1>
        </div>

        <div class="center1">
            <center>
                <h3>常用操作</h3>

                <ul>
                    <li ><a href="<%=basePath%>/sj_information/sj_issue" target="sjdome">商品发布</a></li>

                </ul>
                <h3 >基本操作</h3>
                <ul>
                    <li><a href="<%=basePath%>/sj_information/sj_getinformation" target="sjdome">店铺信息设置</a></li>
                    <li><a href="<%=basePath%>/sj_information/sj_evaluation" target="sjdome">评价管理</a></li>
                    <li><a href="<%=basePath%>/liyi_sj/stage/business/businessindex.jsp?storeid=<%=request.getSession().getAttribute("users_id")%>">进入店铺</a></li>
                    <li><a href="<%=basePath%>/business/infor" target="sjdome">订单管理</a></li>
                    <li><a href="<%=basePath%>/stock/home" target="sjdome">库存管理</a></li>
                    <li><a href="<%=basePath%>/sj_information/sj_sales" target="sjdome">资金记录</a></li>
                    <li><a href="<%=basePath%>/notice/index" target="sjdome">店铺公告</a></li>
                    <li><a href="<%=basePath%>/discount/index" target="sjdome">优惠活动发布</a></li>
                    <li><a href="<%=basePath%>/Refund/find" target="sjdome">售后服务</a></li>
                </ul>

            </center>
        </div>



    </div>

    <!--右边内容显示-->
    <div class="pilot_right">
        <iframe  src="<%=basePath%>/sj_information/sj_getinformation" name="sjdome" style="width: 955px;height: 850px;border: none;">

        </iframe>
    </div>

</div>


<div class="liyibuttm"></div>

</body>
</html>