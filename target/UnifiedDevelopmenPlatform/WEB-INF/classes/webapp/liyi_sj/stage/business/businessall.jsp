

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE html>
<html lang="en">
<head>	
	<title>商家店铺商品查看</title>
	<meta charset="utf-8" />
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<!-- GOOGLE WEB FONTS -->
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	
	<!-- BOOTSTRAP 3.3.7 CSS -->
 <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../css/bootstrap.min.css" />	
	<!-- SLICK v1.6.0 CSS -->
	<link rel="stylesheet" href="../css/slick-1.6.0/slick.css" />
	
	<link rel="stylesheet" href="../css/jquery.fancybox.css" />
	<link rel="stylesheet" href="../css/yith-woocommerce-compare/colorbox.css" />
	<link rel="stylesheet" href="../css/owl-carousel/owl.carousel.min.css" />
	<link rel="stylesheet" href="../css/owl-carousel/owl.theme.default.min.css" />
	<link rel="stylesheet" href="../css/js_composer/js_composer.min.css" />
	<link rel="stylesheet" href="../css/woocommerce/woocommerce.css" />
	<link rel="stylesheet" href="../css/yith-woocommerce-wishlist/style.css" />
	
	
	<link rel="stylesheet" href="../css/custom.css" />
	<link rel="stylesheet" href="../css/app-orange.css" id="theme_color" />
	<link rel="stylesheet" href="" id="rtl" />
	<link rel="stylesheet" href="../css/app-responsive.css" /> 
</head>

<body class="archive post-type-archive woocommerce post-type-archive-product" style="background-color: #f1f0ec;">

	<div class="body-wrapper theme-clearfix">
		<header id="header" class="header header-style1">
			<div class="header-top clearfix">
				<div class="container">
					<div class="rows">
						<!-- 最顶部布局 -->
						<div  id="topname">
							<div id="toplogin" class="pull-left top1">
								<div class="widget text-3 widget_text pull-left">
									<div class="widget-inner">
										<div class="textwidget">
											<div id="lang_sel">
												<a href="index.jsp" style="color: white;">网站首页</a>
											</div>
										</div>
									</div>
								</div>
								<div class="widget text-3 widget_text pull-left">
									<div class="widget-inner">
										<div class="textwidget">
											<div id="lang_sel">
												<a href="javascript:void(0);" style="color: white;" data-toggle="modal" data-target="#login_form">
													<span>登录</span>
												</a>
											</div>
										</div>
									</div>
								</div>
								<div class="widget text-3 widget_text pull-left">
									<div class="widget-inner">
										<div class="textwidget">
											<div id="lang_sel">
												<a href="<%=basePath%>/liyi_sj/stage/register.jsp" style="color: white;">注册</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="wrap-myacc pull-right">
							<div class="sidebar-account pull-left">
								<div class="account-title">买家中心<span class="glyphicon glyphicon-chevron-down"></span></div>
                        
								<div id="my-account" class="my-account">
									<div class="widget-1 widget-first widget nav_menu-4 widget_nav_menu">
										<div class="widget-inner">
											<ul id="menu-my-account" class="menu">
												<li class="menu-my-account">
													<a class="item-link" onclick="maijiarukou()" href="javascript:void(0)">
														<span class="menu-title">卖家中心</span>
													</a>
												</li>

												<li class="menu-cart">
													<a class="item-link" href="<%=basePath%>/liyi_sj/stage/business/register.jsp">
														<span class="menu-title">店铺注册</span>
													</a>
												</li>
												<li class="menu-wishlist">
													<a class="item-link" href="#">
														<span class="menu-title">已卖出宝贝</span>
													</a>
												</li>
											</ul>
										</div>
									</div>
									
								</div>
							</div>
							
							
							<div class="sidebar-account pull-left">
								<div class="account-title">联系客服<span class="glyphicon glyphicon-chevron-down"></span></div>
                        
								<div id="my-account" class="my-account">
									<div class="widget-1 widget-first widget nav_menu-4 widget_nav_menu">
										<div class="widget-inner">
											<ul id="menu-my-account" class="menu">
												<li class="menu-my-account">
													<a class="item-link" href="my_account.html">
														<span class="menu-title">消费者客服</span>
													</a>
												</li>
												
												<li class="menu-cart">
													<a class="item-link" href="cart.html">
														<span class="menu-title">卖家客服</span>
													</a>
												</li>
											</ul>
										</div>
									</div>
									
								</div>
							</div>
			
							<div class="pull-left top2">
								<div class="widget-1 widget-first widget nav_menu-2 widget_nav_menu">
									<div class="widget-inner">
										<ul id="menu-checkout" class="menu">
											<li class="menu-checkout">
												<a class="item-link" href="<%=basePath%>/liyi_sj/stage/person/personindex2.jsp">
													<span class="menu-title">用户个人中心</span>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>					
						</div>
					</div>
				</div>
			</div>
			
			<div class="header-mid clearfix">
				<div class="container">
					<div class="rows">
						<!-- LOGO图片 -->
						<div class="etrostore-logo pull-left">
							<a href="#">
								<img  src="../image/logoSmall.png" alt="Shoopy">
							</a>
						</div>
						<!--//搜索框代码-->
						<div class="mid-header pull-right">
							<div class="widget-1 widget-first widget sw_top-2 sw_top">
								<div class="widget-inner">
									<div class="top-form top-search">
										<div class="topsearch-entry">
											<form method="get" action="<%=basePath%>/liyi_sj/stage/shop.jsp">
												<div>
													<input type="text" value="" name="commname" placeholder="输入你要的礼品">
													<button type="submit" title="Search" class="fa fa-search button-search-pro form-button"></button>
												</div>
											</form>
											<p id="top-p" style="padding: 12px 0px 0px 20px;"><a href="shop.jsp?category=''&type=1">热销礼品</a>
												<a href="shop.jsp?category='创意礼品'&type=1">创意礼品</a>
												<a href="shop.jsp?category='送女友'&type=1">送女友</a>
												<a href="shop.jsp?category='送老师'&type=1">送老师</a>
												<a href="shop.jsp?category='送亲朋'&type=1">送亲朋</a>
												<a href="shop.jsp?category='送上司'&type=1">送上司</a>
												<a href="shop.jsp?category='情人节礼物'&type=1">情人节礼物</a>
											</p>
										</div>
									</div>
								</div>
							</div>
							
							<div class="widget sw_top-3 sw_top pull-left">
								<div class="widget-inner">
									<div class="top-form top-form-minicart etrostore-minicart pull-right">
										<div class="top-minicart-icon pull-right">
											<i class="fa fa-shopping-cart"></i>
											<!--购物车-->
											<a class="cart-contents" href="cart.jsp" style="line-height: 24px;">
												<span class="minicart-number" id="cartcount2"></span>
											</a>
										</div>

										<div class="wrapp-minicart">
											<div class="minicart-padding">
												<div class="number-item">
													您的购物车里有<span id="cartcount"></span>样物品
												</div>
												<!--购物车触摸事件,显示的购物车里面的信息-->
												<ul id="commcart" class="minicart-content">

												</ul>

												<div class="cart-checkout">
													<div class="price-total">
														<span class="label-price-total">总计</span>

														<span class="price-total-w">
															<span class="price">
																<span  id="pricecount" class="woocommerce-Price-amount amount">
																</span>
															</span>
														</span>
													</div>
													
													<div class="cart-links clearfix">
														<div class="cart-link">
															<a href="cart.html" title="Cart">查看购物车</a>
														</div>
														<div class="checkout-link">
															<a href="checkout.html" title="Check Out">查看订单</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="widget nav_menu-3 widget_nav_menu pull-left">
								<div class="widget-inner">
									<ul id="menu-wishlist" class="menu">
										<li class="menu-wishlist" title="查看收藏">
											<a class="item-link" href="<%=basePath%>/liyi_sj/stage/collectstore.jsp">
												<span class="menu-title">查看收藏</span>
											</a>
										</li>
										
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 小导航 -->
			     <div style="background-color: #f5f5f5;">
					<ol class="breadcrumb" style="text-align: center;padding:10px 0px 10px 0px;">
  					<li><a href="#" style="color:gray;" id="storename">XX旗舰店</a>
  					&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: gray;">评分:
  					<span style="color: red;">90%</span>
  					</span>	
  					&nbsp;&nbsp;&nbsp;&nbsp;
  						<span id="collection-sp" style="color: gray;"><i class="glyphicon glyphicon-star-empty" style="line-height: 10px;color: red;"></i>
  							收藏店铺
  						</span>
						</ol>
						</div>
		             </header>
		             <div class="row" style="background-color: white;margin-top: -20px;">
		             <div class="col-lg-4 col-lg-offset-2">
					<img src="../image/storelogo1.jpg">
					</div>
					<div class="col-lg-5" style="margin-top: 40px;">
						<table class="table table-responsive" style="">
							<tr>
								<td style="text-align:center;font-size: 18px;border-top: 1px solid white;">
									<a id="storeye" href=""  style="color: #edae30;">
										<i class="glyphicon glyphicon-home"></i>店铺首页</a>
								</td>
								<td style="font-size: 18px;text-align: left;border-top: 1px solid white;">
									<a id="storecomm" href=""  style="color: #edae30;">
										<i class="glyphicon glyphicon-gift"></i>全部商品</a>
								</td>
								<td style="font-size: 18px;text-align: left;border-top: 1px solid white;">
									<a href="businessall.html" style="color: #edae30;">
										<i class="glyphicon glyphicon-user"></i>卖家中心</a>
								</td>
								<td style="font-size: 18px;text-align: left;border-top: 1px solid white;">
									<a href="../index.jsp" style="color: #edae30;">
										<i class="glyphicon glyphicon-send"></i>礼意首页</a>
								</td>

							</tr>
					</table>	
					</div>
					
					</div>
		</header>
		<div class="container">
			<div class="row" style="background-color: white; margin:40px  0px 40px 0px;padding-top: 10px;">
				<div id="contents" class="content col-lg-12 col-md-12 col-sm-12" role="main">
					<div class="listing-top">
						<div class="widget-1 widget-first widget rev-slider-widget-2 widget_revslider">
							<div class="widget-inner">
								<!-- OWL SLIDER -->
								<div class="wpb_revslider_element wpb_content_element no-margin">
									<div class="vc_column-inner ">
										<div class="wpb_wrapper">
											<div class="wpb_revslider_element wpb_content_element">
												<div id="main-slider" class="fullwidthbanner-container" style="position:relative; width:100%; height:auto; margin-top:0px; margin-bottom:0px">
														<ul class="my-catalogs">
															
															<li >
																<span class="">送最美的她(他):</span>
																<a href="#">送亲朋</a>
																<a href="#">送好友</a>
																<a href="#">送上司</a>
																<a href="#">送同事</a>
																<a href="#">送情侣</a>
																<a href="#">送老师</a>
																<a href="#">生日</a>
															</li>
															
														</ul>
													<div class="loadeding"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- OWL LIGHT SLIDER -->
							</div>
						</div>
					</div>
				   
					<div id="container">
						<div id="content" role="main">
											<!--  产品中心 -->
												<ul id="storecommdiv" class="products-loop row grid clearfix">

																		</ul>
							
										<div class="clear"></div>
								
											<div class="products-nav clearfix">
									<!-- 分页 -->

												<nav style="margin-top:70px;" class="">
													<ul class="pager">
														<li onclick="countsubtract()"><a href="javascript:void(0)">上一页</a></li>
														<li onclick="countadd()"><a href="javascript:void(0)">下一页</a></li>
														<li><a href="javascript:void(0)">当前页:&nbsp;<span id="dangpage" style="color: red;">1</span></a></li>
														<li><a href="javascript:void(0)">总页数:&nbsp;<span id="countpage" style="color: red;">1</span></a></li>
													</ul>
												</nav>



								</div>
							</div>
						</div>
					</div>
        </div>			
	</div>
		</div>
		
		<footer id="footer" class="footer default theme-clearfix">
			<!-- Content footer -->
			<div class="container">
				<div class="vc_row wpb_row vc_row-fluid">
					<div class="wpb_column vc_column_container vc_col-sm-12">
						<div class="vc_column-inner ">
							<div class="wpb_wrapper">
								
							</div>
						</div>
					</div>
				</div>
				
				<div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid footer-style1 vc_row-no-padding">
					<div class="container float wpb_column vc_column_container vc_col-sm-12">
						<div class="vc_column-inner ">
							<div class="wpb_wrapper">
								<div class="vc_wp_custommenu wpb_content_element wrap-cus">
									<div class="widget widget_nav_menu">
										<ul id="menu-infomation" class="menu">
											<li class="menu-about-us">
												<a class="item-link" href="about_us.html">
													<span class="menu-title">礼意首页</span>
												</a>
											</li>
											
											<li class="menu-customer-service">
												<a class="item-link" href="#">
													<span class="menu-title">相册书</span>
												</a>
											</li>
											
											<li class="menu-privacy-policy">
												<a class="item-link" href="#">
													<span class="menu-title">积分商城</span>
												</a>
											</li>
											
											<li class="menu-site-map">
												<a class="item-link" href="#">
													<span class="menu-title">礼品攻略</span>
												</a>
											</li>
											
											<li class="menu-orders-and-returns">
												<a class="item-link" href="#">
													<span class="menu-title">关于我们</span>
												</a>
											</li>
										</ul>
									</div>
									<div class="copyright-text" style="text-align: center;">
						<p>版权所有 &copy; 2018.礼意礼品网站，www.liyi.com</p>
					</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="vc_row-full-width vc_clearfix"></div>
			</div>
		</footer>
	</div>
   
	<!-- DIALOGS -->
	<div class="modal fade" id="search_form" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog block-popup-search-form">
			<form role="search" method="get" class="form-search searchform" action="">
				<input type="text" value="" name="s" class="search-query" placeholder="Enter your keyword..." />
				
				<button type="submit" class="fa fa-search button-search-pro form-button"></button>
				
				<a href="javascript:void(0)" title="Close" class="close close-search" data-dismiss="modal">X</a>
			</form>
		</div>
	</div>

	<div class="modal fade" id="login_form" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog block-popup-login">
			<a href="javascript:void(0)" title="Close" class="close close-login" data-dismiss="modal">关闭</a>

			<div class="tt_popup_login">
				<strong style="font-size:18px;">欢迎用户登录</strong>
			</div>

			<form action="" method="post" class="login">
				<div class="block-content">
					<div class="col-reg registered-account">
						<div class="email-input">
							<input type="text" class="form-control input-text username" name="phone" id="phone" placeholder="账号" />
						</div>

						<div class="pass-input">
							<input class="form-control input-text password" type="password" placeholder="密码" name="password" id="password" />
						</div>

						<div class="ft-link-p">
							<a href="#" title="Forgot your password">忘记密码?</a>
						</div>

						<div class="actions">
							<div class="submit-login">
								<input type="submit" class="button btn-submit-login" onclick="btnlogin()" name="login" value="登陆" />
							</div>
						</div>
					</div>

					<div class="col-reg login-customer">
						<h2>	新来的?</h2>

						<p class="note-reg">请先注册!</p>

						<ul class="list-log">
							<li>下单快!</li>

							<li>结算方便!</li>

							<li>查看和追踪订单更快捷!</li>
						</ul>

						<a href="create_account.jsp" title="Register" class="btn-reg-popup">前往注册</a>
					</div>
				</div>
			</form>
			<div class="clear"></div>
		</div>
	</div>



	<a id="etrostore-totop" href="#"></a>	
	
	<div id="subscribe_popup" class="subscribe-popup" style="background: url(../images/icons/bg_newsletter.jpg)">
		<div class="subscribe-popup-container">
			<h2>Join our newsletter</h2>
			<div class="description">Subscribe now to get 40% of on any product!</div>
			<div class="subscribe-form">
				<form id="mc4wp-form-2" class="mc4wp-form mc4wp-form-275" method="post" data-id="275" data-name="">
					<div class="mc4wp-form-fields">
						<div class="newsletter-content">
							<input type="email" class="newsletter-email" name="EMAIL" placeholder="Your email" required="" />
							<input class="newsletter-submit" type="submit" value="Subscribe" />
						</div>
					</div>
					<div class="mc4wp-response"></div>
				</form>		
			</div>
			
			<div class="subscribe-checkbox">
				<label for="popup_check">
					<input id="popup_check" name="popup_check" type="checkbox" />
					<span>Don't show this popup again!</span>
				</label>
			</div>
			
			<div class="subscribe-social">
				<div class="subscribe-social-inner">
					<a href="#" class="social-fb">
						<span class="fa fa-facebook"></span>
					</a>
					
					<a href="#" class="social-tw">
						<span class="fa fa-twitter"></span>
					</a>
					
					<a href="#" class="social-gplus">
						<span class="fa fa-google-plus"></span>
					</a>
					
					<a href="#" class="social-pin">
						<span class="fa fa-instagram"></span>
					</a>
					
					<a href="#" class="social-linkedin">
						<span class="fa fa-pinterest-p"></span>
					</a>				
				</div>
			</div>
		</div>
	</div>



	<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" style="padding-top: 15%;">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content" style="width:55%;margin-left: 30%;">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span></button>
				<div style="padding:20px 0px 20px 0px;">
					<p style="text-align: center;font-size: 14px;">您是否确认下架该商品</p>
					<p style="color: grey;font-size:10px;text-align: center;">商品名:<span id="commodityname"></span></p>

					<p style="color: grey;font-size:10px;text-align: center;">商品编号:<span id="commodityid"></span></p>
				</div>
				<center><a type="button" onclick="ordersubmission()" class="btn btn-info"  style=";margin-bottom:20px;padding:5px 15px;">确认下架</a>
					<button type="button" class="btn btn-info" data-dismiss="modal" style=";margin-bottom:20px;padding:5px 15px;margin-left: 30px;">取消</button>
				</center>
			</div>
		</div>
	</div>


	<div  class="modal fade bs-example-modal-sm2" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" style="padding-top: 5%;">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content" style="width: 50%;margin-left: 30%;">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span></button>
				<div style="padding:40px 0px 20px 0px;">
					<p style="text-align: center;font-size: 14px;">商品下架成功!</p>
					<p style="text-align: center;font-size:40px;color: seagreen;">
						<i class="glyphicon glyphicon-ok"></i></p>
				</div>
				<center><button onclick="shuax()" type="button" class="btn btn-info" data-dismiss="modal" style="margin-bottom:20px;padding:5px 15px;">确定</button></center>
			</div>
		</div>
	</div>



	<%--样式导入--%>
	<script src="<%= basePath %>/script/common/jquery-1.8.2.min.js"></script>
	<script src="<%= basePath %>/script/common/public.js"></script>
	<script src="<%= basePath %>/script/common/project.js"></script>


	<script>
        function btnlogin() {
            var obj = new Object();

            obj.phone = $("#phone").val();
            obj.password = $("#password").val()
            $.ajax({
                type: 'post',
                url: "<%=basePath%>/sj_information/useradmin2",
                dataType: 'json',
                contentType: "application/json; charset=utf-8",
                cache: false,
                data: JSON.stringify(obj),
                success: function (data) {
                    alert("用户名:" + data.obj[0].nickname);
                    window.location.reload();
                },
                error:function () {
                    alert("账号或者密码错误");
                }

            });
        }


	</script>
	<script>

        var limit=12;
        var start=0;
        var count=1;
        var total="";
        var usern='${sessionScope.get("usernick")}';
        var userid='${sessionScope.get("userid")}';
        if(userid!='') {
            $("#toplogin").hide();
            $("#topname").append("<div class=\"pull-left top1\" >" +
                "<div class=\"widget text-3 widget_text pull-left\">\n" +
                "<div class=\"widget-inner\">\n" +
                "<div class=\"textwidget\">\n" +
                "<div id=\"lang_sel\">\n" +
                "<a href=\"#\" style=\"color: white;\">用户:" + usern + "</a>\n" +
                "</div>\n" +
                "</div>\n" +
                "</div>\n" +
                "</div>\n" +
                "<div class=\"widget text-3 widget_text pull-left\">\n" +
                "<div class=\"widget-inner\">\n" +
                "<div class=\"textwidget\">\n" +
                "<div id=\"lang_sel\">\n" +
                "<a  href=\"index.jsp\" style=\"color: white;\">退出登陆</a>\n" +
                "</div>\n" +
                "</div>\n" +
                "</div>\n" +
                "</div>" +
                "</div>")




            var cartobj=new Object();
            cartobj.u_id=userid;
            cartobj.status="商品上架";
            var pricecount=null;
            doData("yh_shoppingcart/getusershoopingcart",cartobj,function (data) {
                $("#cartcount").html(data.obj.length);
                $("#cartcount3").html(data.obj.length);
                $("#cartcount2").html(data.obj.length);
                $("#cartcount4").html(data.obj.length);
                for (var i=0;i<data.obj.length;i++){
                    var comprice=data.obj[i].price;
                    comprice=comprice.toFixed(2);
                    pricecount+=parseFloat(comprice);
                    $("#commcart").append("<li>\n" +
                        " <a href=\"<%=basePath%>/liyi_sj/stage/simple_product.jsp?comid="+data.obj[i].c_id+"&type=2\" class=\"product-image\">\n" +
                        " <img \twidth=\"100\" height=\"100\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].styleImage+"\" class=\"attachment-100x100 size-100x100 wp-post-image\" alt=\"\" \n" +
                        " srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].styleImage+" 150w,<%=basePath%>/uploadfiles/"+data.obj[i].styleImage+" 300w,<%=basePath%>/uploadfiles/"+data.obj[i].styleImage+" 180w,<%=basePath%>/uploadfiles/"+data.obj[i].styleImage+" 600w\" \n" +
                        " sizes=\"(max-width: 100px) 100vw, 100px\" />\n" +
                        " </a>\n" +
                        " \n" +
                        " <div class=\"detail-item\">\n" +
                        " <div class=\"product-details\">\n" +
                        " <h4>\n" +
                        " <a class=\"title-item\" href=\"<%=basePath%>/liyi_sj/stage/simple_product.jsp?comid="+data.obj[i].c_id+"&type=2\">"+data.obj[i].commname+"</a>\n" +
                        " </h4>\n" +
                        " \n" +
                        " <div class=\"product-price\">\n" +
                        " <span class=\"price\">\n" +
                        " <span class=\"woocommerce-Price-amount amount\">\n" +
                        " <span class=\"woocommerce-Price-currencySymbol\">￥</span>"+comprice+"\n" +
                        " </span>\n" +
                        " </span>\n" +
                        " \n" +
                        " <div class=\"qty\">\n" +
                        " <span class=\"qty-number\">"+data.obj[i].acount+"</span>\n" +
                        "</div>\n" +
                        " </div>\n" +
                        "<!--删除购物车里面的单个商品-->\n" +
                        "<div class=\"product-action clearfix\">\n" +
                        "<a href=\"#\" class=\"btn-remove\" title=\"Remove this item\">\n" +
                        "<span class=\"fa fa-trash-o\"></span>\n" +
                        "</a>\n" +

                        "</div>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "</li>");


                    $("#commcart2").append("<li>\n" +
                        " <a href=\"<%=basePath%>/liyi_sj/stage/simple_product.jsp?comid="+data.obj[i].c_id+"&type=2\" class=\"product-image\">\n" +
                        " <img \twidth=\"100\" height=\"100\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].styleImage+"\" class=\"attachment-100x100 size-100x100 wp-post-image\" alt=\"\" \n" +
                        " srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].styleImage+" 150w,<%=basePath%>/uploadfiles/"+data.obj[i].styleImage+" 300w,<%=basePath%>/uploadfiles/"+data.obj[i].styleImage+" 180w,<%=basePath%>/uploadfiles/"+data.obj[i].styleImage+" 600w\" \n" +
                        " sizes=\"(max-width: 100px) 100vw, 100px\" />\n" +
                        " </a>\n" +
                        " \n" +
                        " <div class=\"detail-item\">\n" +
                        " <div class=\"product-details\">\n" +
                        " <h4>\n" +
                        " <a class=\"title-item\" href=\"<%=basePath%>/liyi_sj/stage/simple_product.jsp?comid="+data.obj[i].c_id+"&type=2\">"+data.obj[i].commname+"</a>\n" +
                        " </h4>\n" +
                        " \n" +
                        " <div class=\"product-price\">\n" +
                        " <span class=\"price\">\n" +
                        " <span class=\"woocommerce-Price-amount amount\">\n" +
                        " <span class=\"woocommerce-Price-currencySymbol\">￥</span>"+comprice+"\n" +
                        " </span>\n" +
                        " </span>\n" +
                        " \n" +
                        " <div class=\"qty\">\n" +
                        " <span class=\"qty-number\">"+data.obj[i].acount+"</span>\n" +
                        "</div>\n" +
                        " </div>\n" +
                        "<!--删除购物车里面的单个商品-->\n" +
                        "<div class=\"product-action clearfix\">\n" +
                        "<a href=\"#\" class=\"btn-remove\" title=\"Remove this item\">\n" +
                        "<span class=\"fa fa-trash-o\"></span>\n" +
                        "</a>\n" +

                        "</div>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "</li>");

                }
                $("#pricecount").html("￥"+pricecount.toFixed(2));
                $("#pricecount2").html("￥"+pricecount.toFixed(2));
            })

            storecomm(count,limit,start);

            //分页查询攻略;
        }


        var storeobj=new Object();
        storeobj.id=getURLParamValue("storeid");
        doData("sj_store/getMe",storeobj,function (data) {
            $("#storename").html(data.obj.storename)
            $("#storeye").attr("href","<%=basePath%>/liyi_sj/stage/business/businessindex.jsp?storeid="+data.obj.id);
            $("#storecomm").attr("href","<%=basePath%>/liyi_sj/stage/business/businessall.jsp?storeid="+data.obj.id)
        })




        function storecomm(count,limit,start) {
            var model1 = new Object();
            model1.limit = limit;
            model1.start = (count - 1) * limit;
            model1.s_id = getURLParamValue("storeid");
            //店铺商品查询
            doData("/sj_commodity/getmecommstorePage", model1, function (data) {
                total = parseInt(data.total / limit);
                if (data.total % limit == 0) {
                    total = total;
                } else {
                    total = total + 1;
                }
                $("#dangpage").html(count);
                $("#countpage").html(total);
                $("#storecommdiv").html("");
                for (var i = 0; i < data.obj.length; i++) {
                    var commprice = data.obj[i].price;
                    commprice = commprice.toFixed(2);


					$("#storecommdiv").append("<li class=\"item col-lg-3 col-md-3 col-sm-4 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple\">\n" +
                        "<div class=\"products-entry item-wrap clearfix\">\n" +
                        "<div class=\"item-wrap\">\n" +
                        "<div class=\"item-detail\">\n" +
                        "<div class=\"item-img products-thumb\">\n" +
                        "<a href=\"javascript:void(0)\">\n" +
                        "<div class=\"product-thumb-hover\">\n" +
                        "<img \twidth=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\" \n" +
                        "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 300w,<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 150w,<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 180w,<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 600w\" \n" +
                        "sizes=\"(max-width: 300px) 100vw, 300px\" />\n" +
                        "</div>\n" +
                        "</a>\n" +
                        "</div>\n" +
                        "<div class=\"item-content\" style=\"text-align: center;\">\n" +
                        "<h5>\n" +
                        "<a href=\"javascript:void(0)\">"+data.obj[i].commname+"</a>\n" +
                        "</h5>\n" +
                        "<!-- Price -->\n" +
                        "<div class=\"item-price\">\n" +
                        "<span style=\";\">\n" +
                        "<span class=\"woocommerce-Price-amount amount\">\n" +
                        "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+commprice+"\n" +
                        "</span>\n" +
                        "</span>\n" +
                        "</div>\n" +
                        "<p  style=\"margin-top: 20px;\">\n" +
                        "<a href=\"<%=basePath%>/admin/sj/sj_issue2.jsp?comid="+data.obj[i].comid+"\" class=\"pull-left\" style=\"color: red;text-decoration: underline;\">修改商品信息</a>\n" +
                        "<a href=\"javascript:void(0);\" class=\"pull-right\" onclick=\"xiajia('"+data.obj[i].comid+"','"+data.obj[i].commname+"')\" style=\"color: red; text-decoration: underline;\">宝贝下架</a>\n" +
                        "</p>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "</li>");
                }
            });
        }

        function countadd() {
            count+=1;

            if (count > total) {
                count=total;
                alert("已经是最后一页了")
            }
            else {
                storecomm(count, limit, start);
            }
        }

        function countsubtract() {
            count -= 1;
            if (count < 1) {
                count=1;
                alert("已经是最后一页了")
            }
            else {
                storecomm(count, limit, start);
            }

        }


        function xiajia(comid,commname) {
            $("#commodityid").html(comid);

            $("#commodityname").html(commname);
            $(".bs-example-modal-sm").modal();
        }


        function ordersubmission() {
			var commobj=new Object();
			commobj.id=$("#commodityid").html();
            commobj.status="商品下架";
            doData("sj_commodity/edit",commobj,function (data) {

                if (data.code>0){
                    $(".bs-example-modal-sm").modal("hide");
                    $(".bs-example-modal-sm2").modal();
				}
            })
        }


		function shuax() {
            window.location.reload();
        }



        function maijiarukou() {

            var uobj=new Object();
            uobj.id=userid;
            doData("sj_information/getMe",uobj,function (data) {
                var s_id=""+data.obj.s_id;
                if (s_id!=""&&s_id!="null"){
                    window.location.href="<%=basePath%>/sj_information/sj_index";
                }else{
                    $("#neirong").html("您还不是商家,需要成为商家请前往<a style=\"color:red\" href=\"<%=basePath%>/liyi_sj/stage/business/register.html\">商家注册</a>")
                    $(".bs-example-modal-sm2").modal();
                }

            });

        }

	</script>





	<script type="text/javascript" src="../js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="../js/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="../bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="../js/jquery/js.cookie.min.js"></script>
	
	<!-- OPEN LIBS JS -->
	<script type="text/javascript" src="../js/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript" src="../js/slick-1.6.0/slick.min.js"></script>
	
	<script type="text/javascript" src="../js/yith-woocommerce-compare/jquery.colorbox-min.js"></script>
	<script type="text/javascript" src="../js/sw_core/isotope.js"></script>
	<script type="text/javascript" src="../js/sw_core/jquery.fancybox.pack.js"></script>
	<script type="text/javascript" src="../js/sw_woocommerce/category-ajax.js"></script>
	<script type="text/javascript" src="../js/sw_woocommerce/jquery.countdown.min.js"></script>
	<script type="text/javascript" src="../js/js_composer/js_composer_front.min.js"></script>
	
	<script type="text/javascript" src="../js/plugins.js"></script>
	<script type="text/javascript" src="../js/megamenu.min.js"></script>
	<script type="text/javascript" src="../js/main.min.js"></script>
   
	<script type="text/javascript">
		var sticky_navigation_offset_top = $("#header .header-bottom").offset().top;
		var sticky_navigation = function(){
									var scroll_top = $(window).scrollTop();
									if (scroll_top > sticky_navigation_offset_top) {
										$("#header .header-bottom").addClass("sticky-menu");
										$("#header .header-bottom").css({ "top":0, "left":0, "right" : 0 });
									} else {
										$("#header .header-bottom").removeClass("sticky-menu");
									}
								};
		sticky_navigation();
		$(window).scroll(function() {
			sticky_navigation();
		});
		
		$(document).ready (function () {
			$( ".show-dropdown" ).each(function(){
				$(this).on("click", function(){
					$(this).toggleClass("show");
					var $element = $(this).parent().find( "> ul" );
					$element.toggle( 300 );
				});
			});
		});
   </script>
   
   <!--[if gte IE 9]><!-->
   <script type="text/javascript">
		var request, b = document.body, c = 'className', cs = 'customize-support', rcs = new RegExp('(^|\\s+)(no-)?'+cs+'(\\s+|$)');
		request = true;
      
      	b[c] = b[c].replace( rcs, ' ' );
      	// The customizer requires postMessage and CORS (if the site is cross domain)
      	b[c] += ( window.postMessage && request ? ' ' : ' no-' ) + cs;
   </script>
   <!--<![endif]-->
   </body>
</html>

