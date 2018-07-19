
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>攻略</title>
		<meta charset="utf-8" />

		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<!-- GOOGLE WEB FONTS -->
		<link rel="stylesheet" href="css/font-awesome.min.css">

		<!-- BOOTSTRAP 3.3.7 CSS -->
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />

		<!-- SLICK v1.6.0 CSS -->
		<link rel="stylesheet" href="css/slick-1.6.0/slick.css" />

		<link rel="stylesheet" href="css/select2/select2.css">

		<link rel="stylesheet" href="css/jquery.fancybox.css" />
		<link rel="stylesheet" href="css/yith-woocommerce-compare/colorbox.css" />
		<link rel="stylesheet" href="css/owl-carousel/owl.carousel.min.css" />
		<link rel="stylesheet" href="css/owl-carousel/owl.theme.default.min.css" />
		<link rel="stylesheet" href="css/js_composer/js_composer.min.css" />
		<link rel="stylesheet" href="css/woocommerce/woocommerce.css" />
		<link rel="stylesheet" href="css/woocommerce/woocommerce-layout.css" />
		<link rel="stylesheet" href="css/woocommerce/woocommerce-smallscreen.css" />
		<link rel="stylesheet" href="css/yith-woocommerce-wishlist/style.css" />

		<link rel="stylesheet" href="css/custom.css" />
		<link rel="stylesheet" href="css/app-orange.css" id="theme_color" />
		<link rel="stylesheet" href="css/app-responsive.css" />
		<link rel="stylesheet" href="css/strate.css">
		<style>
.pager li>a:hover,.pager li>a:focus {background-color: #fff !important;}
.pager li>a {color: gray;font-size: 14px;}
.pager li>a:hover {color: #ffaa00;}
.addcart {color: darkgray;}
.addcart:hover {color: red;}
@media screen and (min-width: 768px) {.modal-dialog {right: auto;left: 50%;}}
@media only screen and (max-width:800px) {#giftright {float: left;}
#oneright {width: 46%;height: 46%;margin-left: 10px;float: left;}
}
#coll1,#coll2 {border: 1px solid darkgray;color: red;padding: 15px 15px 15px 15px;border-radius: 30px;font-size: 30px;}
#coll1:hover,#coll2:hover {background-color: red;color: white;}
		</style>
	</head>

	<body class="page woocommerce-checkout woocommerce-page">
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
														<a class="item-link" href="my_account.jsp">
															<span class="menu-title">消费者客服</span>
														</a>
													</li>

													<li class="menu-cart">
														<a class="item-link" href="cart.jsp">
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
									<img src="image/logoSmall.png" alt="Shoopy">
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
																<a href="cart.jsp" title="Cart">查看购物车</a>
															</div>
															<div class="checkout-link">
																<a href="checkout.jsp" title="Check Out">查看订单</a>
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

				<div class="header-bottom clearfix">
					<div class="container">
						<div class="rows">
							<!-- 导航条和适配的导航条 -->
							<div id="main-menu" class="main-menu col-lg-offset-2 col-md-off1">
								<nav id="primary-menu" class="primary-menu">
									<div class="navbar-inner navbar-inverse">
										<div class="resmenu-container">
											<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#ResMenuprimary_menu">
											<span class="sr-only"></span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
										</button>
											<div id="ResMenuprimary_menu" class="collapse menu-responsive-wrapper col-lg-offset-2">
												<ul id="menu-primary-menu" class="etrostore_resmenu">
													<li><a href="index.jsp">首页</a></li>
													<li><a href="<%=basePath%>/liyi_sj/photobook/new_file.html">相册书</a></li>
													<li><a href="<%=basePath%>/liyi_sj/stage/integration.jsp">积分商城</a></li>
													<li><a href="<%=basePath%>/liyi_sj/stage/strategy.jsp">礼品攻略</a></li>
													<li><a href="<%=basePath%>/liyi_sj/stage/about_us.jsp">关于我们</a></li>
												</ul>
											</div>
										</div>



										<ul id="menu-primary-menu-1" class="nav nav-pills nav-mega etrostore-mega etrostore-menures">
											<li><a href="index.jsp">首页</a></li>
											<li><a href="<%=basePath%>/liyi_sj/photobook/new_file.html">相册书</a></li>
											<li><a href="<%=basePath%>/liyi_sj/stage/integration.jsp">积分商城</a></li>
											<li><a href="<%=basePath%>/liyi_sj/stage/strategy.jsp">礼品攻略</a></li>
											<li><a href="<%=basePath%>/liyi_sj/stage/about_us.jsp">关于我们</a></li>
										</ul>
									</div>
								</nav>
							</div>

							<!-- 购物车 -->
							<div class="top-form top-form-minicart etrostore-minicart pull-right">
								<div class="top-minicart-icon pull-right">
									<i style="padding: 9px" class="fa fa-shopping-cart"></i>
									<!--购物车-->
									<a class="cart-contents" href="cart.jsp" style="line-height: 24px;">
										<span class="minicart-number" id="cartcount4"></span>
									</a>
								</div>

								<div class="wrapp-minicart">
									<div class="minicart-padding">
										<div class="number-item">
											您的购物车里有<span id="cartcount3"></span>样物品
										</div>
										<!--购物车触摸事件,显示的购物车里面的信息-->
										<ul id="commcart2" class="minicart-content">

										</ul>

										<div class="cart-checkout">
											<div class="price-total">
												<span class="label-price-total">总计</span>

												<span class="price-total-w">
															<span class="price">
																<span  id="pricecount2" class="woocommerce-Price-amount amount">
																</span>
															</span>
														</span>
											</div>

											<div class="cart-links clearfix">
												<div class="cart-link">
													<a href="cart.jsp" title="Cart">查看购物车</a>
												</div>

												<div class="checkout-link">
													<a href="checkout.jsp" title="Check Out">查看订单</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="mid-header pull-right">
								<div class="widget sw_top">
									<span class="stick-sr">
									<i class="fa fa-search" aria-hidden="true"></i>
								</span>

									<div class="top-form top-search">
										<div class="topsearch-entry">
											<form role="search" method="get" class="form-search searchform" action="">
												<label class="hide"></label>
												<input type="text" value="" name="s" class="search-query" placeholder="查询你想要的礼品" />
												<button type="submit" class="button-search-pro form-button">搜索</button>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<ol class="breadcrumb" style="padding-left: 10%;">
					<li>
						<a href="strategy.jsp">礼品攻略</a>
					</li>
					<li class="active">攻略详情</li>
			</ol>
			<div class="container" style="margin-bottom: 70px;">
				<div class="row">
					<div id="radescription" role="main" class="main-page  col-lg-9 col-md-8 col-sm-7 col-xs-12" style="margin-top: 10px;">
						<%--<div class="col-lg-12" style="background-color: white;padding: 20px 40px 10px 40px;font-size: 14px;">--%>
							<%--<h3 style="font-size:22px;">巨蟹座女生喜欢什么礼物top10--%>
					<%--</br><small>2018-09-10</small>--%>
				<%--</h3>--%>
							<%--<div style="color: darkgray;border-top: 1px solid gainsboro;border-bottom: 1px solid gainsboro;margin-top: 30px;padding-top: 10px;">--%>
								<%--<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 巨蟹座女生踏实善良，稳重热心，不仅很适合当闺蜜好友，也是追求的不错对象，小编仔细整合总结了一份送巨蟹座女生的礼物清单，大家一起看看吧。--%>
								<%--</p>--%>
							<%--</div>--%>

							<%--<div style="margin-bottom: 50px;">--%>
								<%--<h4 style="margin-top: 40px;"><i class="glyphicon glyphicon-certificate" style="color:red;"></i>--%>
						<%--小幸运零食大礼包</h4>--%>
								<%--<p>巨蟹座女生大多比较内敛，作为男生的话你可以主动采取攻势，不知道送什么送一款零食礼包准没错，小幸运主题，20多个国家精品美食，再配上一份贺卡，很有爱哦。</p>--%>
								<%--<center>--%>
								<%--<a href="simple_product.jsp">--%>
								<%--<img style="margin-top: 20px;" src="image/7486b.jpg">--%>
								<%--<a/>--%>
								<%--</center>--%>

								<%--<h4 style="margin-top: 40px;"><i class="glyphicon glyphicon-certificate" style="color:red;"></i>--%>
						<%--花朵奇缘手链</h4>--%>
								<%--<p>巨蟹座女生温柔善良，淡淡的花朵手链也是最佳的选择，送她一条精致的手链足以让她沉醉不已。</p>--%>
								<%--<center>--%>
									<%--<a href="simple_product.jsp">--%>
									<%--<img style="margin-top: 20px;" src="image/1280b.jpg">--%>
								    <%--</a>--%>
								<%--</center>--%>

								<%--<h4 style="margin-top: 40px;"><i class="glyphicon glyphicon-certificate" style="color:red;"></i>--%>
						<%--施华洛世奇款天鹅吊坠</h4>--%>
								<%--<p>特别提升气质的天鹅项链，灵动璀璨水晶，质感通透靓丽，而又不失优雅大气~~送一款今年最流行的施华洛世奇款天鹅吊坠给她，她一定爱死了！</p>--%>
								<%--<center>--%>
									<%--<a href="simple_product.jsp">--%>
									<%--<img style="margin-top: 20px;" src="image/5148b.jpg">--%>
								<%--</a>--%>
								<%--</center>--%>

								<%--<h4 style="margin-top: 40px;"><i class="glyphicon glyphicon-certificate" style="color:red;"></i>--%>
						<%--花花公子女士钢笔墨水礼盒</h4>--%>
								<%--<p>实用也是巨蟹座的一大特点，如果是闺蜜或是关系没那么亲近的异性朋友，不如选一份钢笔礼盒送给她们，大气还很讨巨蟹座的欢心。</p>--%>
								<%--<center>--%>
									<%--<a href="simple_product.jsp">--%>
									<%--<img style="margin-top: 20px;" src="image/4950b.jpg">--%>
								<%--</a>--%>
								<%--</center>--%>

								<%--<h4 style="margin-top: 40px;"><i class="glyphicon glyphicon-certificate" style="color:red;"></i>--%>
						<%--创意纪念定制抱枕</h4>--%>
								<%--<p>同样可以选一些你们生活中的合照，印制在抱枕上。柔软舒适，让缺乏安全感的双鱼座女孩睡的更加安稳一些。</p>--%>
								<%--<center>--%>
									<%--<a href="simple_product.jsp">--%>
									<%--<img style="margin-top: 20px;" src="image/1669b.jpg">--%>
								<%--</a>--%>
								<%--</center>--%>

								<%--<h4 style="margin-top: 40px;"><i class="glyphicon glyphicon-certificate" style="color:red;"></i>--%>
						<%--眯眯眼可爱毛绒兔</h4>--%>
								<%--<p>粉色美人眯眯兔是很淑女的，毛绒绒的，如少女般温柔，梦幻。还有双可爱精致长耳朵。非常适合送给温柔的巨蟹座女生哦。</p>--%>
								<%--<center>--%>
									<%--<a href="simple_product.jsp">--%>
									<%--<img style="margin-top: 20px;" src="image/2011b.jpg">--%>
								<%--</a>--%>
								<%--</center>--%>

								<%--<h4 style="margin-top: 40px;"><i class="glyphicon glyphicon-certificate" style="color:red;"></i>--%>
						<%--定制款炫彩水晶音乐盒</h4>--%>
								<%--<p>很多巨蟹座女生都喜欢收藏水晶工艺品，所以可以投其所好，定制一款浪漫优雅钢琴水晶音乐盒。对于巨蟹座女生来说，这种礼物既浪漫又有深意。</p>--%>
								<%--<center>--%>
									<%--<a href="simple_product.jsp">--%>
									<%--<img style="margin-top: 20px;" src="image/296b.jpg">--%>
								<%--</a>--%>
								<%--</center>--%>

								<%--<h4 style="margin-top: 40px;"><i class="glyphicon glyphicon-certificate" style="color:red;"></i>--%>
						<%--小巧心形手提女包</h4>--%>
								<%--<p>浪漫心形拼接，专属恋人心设计，丝印皮带装饰，甜美清新。一个小巧时尚的手提包也能让巨蟹座女生雀跃不已哦。</p>--%>
								<%--<center>--%>
									<%--<a href="simple_product.jsp">--%>
									<%--<img style="margin-top: 20px;" src="image/1751b.jpg">--%>
								<%--</a>--%>
								<%--</center>--%>
							<%--</div>--%>
							<%--<div style="margin-top: 30px;text-align: center;">--%>
								<%--<span style="margin-right: 50px;" title="收藏">--%>
								<%--<i id="coll1" class="glyphicon glyphicon-heart" style=""></i>--%>
								<%--</span>--%>
								<%--<span class="collstrage" title="点赞">--%>
								<%--<i id="coll2" class="glyphicon glyphicon-thumbs-up" style=""></i>--%>
								<%--</span>--%>

							<%--</div>--%>

						<%--</div>--%>
					</div>

					<!--  产品推荐 -->
					<div id="contents" role="main" class="main-page  col-lg-3 col-md-4 col-sm-5 col-xs-12" style="margin-top: 10px;">
						<div style="background-color: white;">
							<p style="font-size: 16px;line-height: 60px;text-align: center;">女生礼物排行</p>
						</div>

						<div id="giftright" style="background-color: white;margin-top:10px;padding:0px 20px 30px 20px;">
							<%--<div id="oneright" style="background-color: white;padding-top:30px;">--%>
								<%--<a href="simple_product.jsp"><img src="image/154s.jpg"></a>--%>
								<%--<p style="padding:10px 0px 0px 10px;font-size: 16px;">--%>
									<%--<a href="simple_product.jsp">存储阳光的罐子</a>--%>
								<%--</p>--%>
								<%--<span style="color: red;padding-left: 10px;font-size: 16px;">¥--%>
           		          <%--<span>75.00</span>--%>
								<%--</span>--%>
								<%--<span class="pull-right addcart" data-toggle="modal" data-target=".bs-example-modal-sm">--%>
           	<%--<i class="glyphicon glyphicon-shopping-cart"></i>购物车--%>
          <%--</span>--%>
							<%--</div>--%>

							<%--<div id="oneright" style="background-color: white;padding-top:30px;">--%>
								<%--<a href="simple_product.jsp"><img src="image/154s.jpg"></a>--%>
								<%--<p style="padding:10px 0px 0px 10px;font-size: 16px;">--%>
									<%--<a href="simple_product.jsp">存储阳光的罐子</a>--%>
								<%--</p>--%>
								<%--<span style="color: red;padding-left: 10px;font-size: 16px;">¥--%>
           		<%--<span>75.00</span>--%>
								<%--</span>--%>
								<%--<span class="pull-right addcart" data-toggle="modal" data-target=".bs-example-modal-sm">--%>
           	<%--<i class="glyphicon glyphicon-shopping-cart"></i>购物车--%>
          <%--</span>--%>
							<%--</div>--%>
							<%--<div id="oneright" style="background-color: white;padding-top:30px;">--%>
								<%--<a href="simple_product.jsp"><img src="image/154s.jpg"></a>--%>
								<%--<p style="padding:10px 0px 0px 10px;font-size: 16px;">--%>
									<%--<a href="simple_product.jsp">存储阳光的罐子</a>--%>
								<%--</p>--%>
								<%--<span style="color: red;padding-left: 10px;font-size: 16px;">¥--%>
           		<%--<span>75.00</span>--%>
								<%--</span>--%>
								<%--<span class="pull-right addcart" data-toggle="modal" data-target=".bs-example-modal-sm">--%>
           	<%--<i class="glyphicon glyphicon-shopping-cart"></i>购物车--%>
          <%--</span>--%>
							<%--</div>--%>
						</div>
					</div>
				</div>

				<!-- 评论 -->
				<div id="contents" role="main" class="main-page  col-lg-12 col-md-12 col-sm-12 col-xs-12" style="background-color: white;margin-top: 70px;">
					<div class="col-lg-12" style="font-size: 16px;margin-left: 5%;">
						<p>评论(<span style="color: red;">123</span>)</p>
					</div>
					<hr/ style="margin:1px;border-color:gainsboro;">
						<ul class="list-group">
							<li class="list-group-item" style="border:none;margin-bottom: 30px;">
								<div style="padding:20px 20px 20px 20px;">
									<form>
										<input type="hidden" class="input" />
										<textarea class="form-control" rows="5"></textarea>
										<button type="submit" class="btn btn-info pull-right" data-dismiss="modal" style="margin-bottom:20px;padding:5px 15px;">发表评论</button>
									</form>
								</div>

							</li>
							<hr/ style="margin:1px;border-color:gainsboro;">
								<li class="list-group-item" style="border:none;">
									<div class="social-feed-box">
										<div class="social-avatar">
											<a href="#" class="pull-left" style="padding-right:10px;">
												<img src="image/154s.jpg" class="img-circle" style="width: 60px;height: 60px;" />
											</a>
											<div class="media-body">
												<a href="#">公子无忧</a>
												<br/>
												<small class="text-muted">2019-01-09</small>
											</div>
										</div>
										<div class="social-body">
											<p>超级快回家吧个hi看hi吧不可保护客户可超级快回家吧个hi看hi吧不可保护客户可超级快回家吧个hi看hi吧不可保护客户可超级快回家吧个hi看hi吧不可保护客户可</p>
										</div>
									</div>
									<div class="col-lg-offset-1">
										<p>
											<span style="color:#5bc0de;">佩奇峰</span> 回复
											<span style="color:#5bc0de;">公子无忧</span> :
											<span style="color: darkgray;">超级快回家吧个hi看hi吧不可保护客户可</span>
										</p>
									</div>
									<button class="btn btn-info btn-xs pull-right" data-toggle="modal" data-target=".bs-example-modal-sm2" style="margin-top: -20px;">回复</button>
								</li>
								<hr/ style="margin:1px;border-color:gainsboro;">
									<li class="list-group-item" style="border:none;">
										<div class="social-feed-box">
											<div class="social-avatar">
												<a href="#" class="pull-left" style="padding-right:10px;">
													<img src="image/154s.jpg" class="img-circle" style="width: 60px;height: 60px;" />
												</a>
												<div class="media-body">
													<a href="#">公子无忧</a>
													<br/>
													<small class="text-muted">2019-01-09</small>
												</div>
											</div>
											<div class="social-body">
												<p>超级快回家吧个hi看hi吧不可保护客户可超级快回家吧个hi看hi吧不可保护客户可超级快回家吧个hi看hi吧不可保护客户可超级快回家吧个hi看hi吧不可保护客户可</p>
											</div>
										</div>
										<div class="col-lg-offset-1">
											<p>
												<span style="color:#5bc0de;">佩奇峰</span> 回复
												<span style="color:#5bc0de;">公子无忧</span> :
												<span style="color: darkgray;">超级快回家吧个hi看hi吧不可保护客户可</span>
											</p>
										</div>
										<button class="btn btn-info btn-xs pull-right" data-toggle="modal" data-target=".bs-example-modal-sm2" style="margin-top: -20px;">回复</button>
									</li>
									<hr/ style="margin:1px;border-color:gainsboro;">
										<li class="list-group-item" style="border:none;">
											<div class="social-feed-box">
												<div class="social-avatar">
													<a href="#" class="pull-left" style="padding-right:10px;">
														<img src="image/154s.jpg" class="img-circle" style="width: 60px;height: 60px;" />
													</a>
													<div class="media-body">
														<a href="#">公子无忧</a>
														<br/>
														<small class="text-muted">2019-01-09</small>
													</div>
												</div>
												<div class="social-body">
													<p>超级快回家吧个hi看hi吧不可保护客户可超级快回家吧个hi看hi吧不可保护客户可超级快回家吧个hi看hi吧不可保护客户可超级快回家吧个hi看hi吧不可保护客户可</p>
												</div>
											</div>
											<div class="col-lg-offset-1">
												<p>
													<span style="color:#5bc0de;">佩奇峰</span> 回复
													<span style="color:#5bc0de;">公子无忧</span> :
													<span style="color: darkgray;">超级快回家吧个hi看hi吧不可保护客户可</span>
												</p>
											</div>
											<button class="btn btn-info btn-xs pull-right" data-toggle="modal" data-target=".bs-example-modal-sm2" style="margin-top: -20px;">回复</button>
										</li>
						</ul>
						<nav>
							<ul class="pager" style="margin:20px 0px 0px 0px;padding-bottom: 40px;">
								<li>
									<a href="#">上一页</a>
								</li>
								<li>
									<a href="#">下一页</a>
								</li>
							</ul>
						</nav>
				</div>
			</div>

			<!-- 购物车弹框 -->
			<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" style="padding-top: 5%;">
				<div class="modal-dialog modal-sm" role="document">
					<div class="modal-content" style="width: 50%;margin-left: 30%;">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
    	 	            <span aria-hidden="true">&times;</span></button>
						<div style="padding:40px 0px 20px 0px;">
							<p style="text-align: center;font-size: 14px;">已加入购物车!</p>
							<p style="text-align: center;font-size:40px;color: seagreen;">
								<i class="glyphicon glyphicon-ok"></i></p>
						</div>
						<button type="button" class="btn btn-info" data-dismiss="modal" style="margin-left: 38%;margin-bottom:20px;padding:5px 15px;">确定</button>
					</div>
				</div>
			</div>

			<!--  回复评论弹框 -->
			<div class="modal fade bs-example-modal-sm2" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" style="padding-top: 5%;">
				<div class="modal-dialog modal-sm" role="document">
					<div class="modal-content">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
    	 	            <span aria-hidden="true">&times;</span></button>
						<div style="padding:20px 20px 20px 20px;">
							<form>
								<input type="hidden" class="input" />
								<textarea class="form-control" rows="5"></textarea>
								<button type="submit" class="btn btn-info" data-dismiss="modal" style="margin-bottom:20px;padding:5px 15px;margin-left:80%;">确定</button>
							</form>
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

							<a href="<%=basePath%>/liyi_sj/stage/register.jsp" title="Register" class="btn-reg-popup">前往注册</a>
						</div>
					</div>
				</form>
				<div class="clear"></div>
			</div>
		</div>
		
		<a id="etrostore-totop" href="#"></a>

		<div id="subscribe_popup" class="subscribe-popup" style="background: url(images/icons/bg_newsletter.jpg)">
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



		<div class="modal fade bs-example-modal-sm2" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" style="padding-top: 5%;">
			<div class="modal-dialog modal-sm" role="document">
				<input type="hidden" id="deleteid" value="">
				<div class="modal-content" style="width: 50%;margin-left: 30%;">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true" style="font-size: 20px;">&times;</span></button>
					<div style="padding:20px 0px 20px 0px;">
						<p style="text-align: center;font-size: 14px;" id="neirong"></p>
					</div>
					<center>
						<button type="button" class="btn btn-xs btn-info" data-dismiss="modal" style=";margin-bottom:20px;padding:5px 15px;margin-left: 20px;">确定</button>
					</center>
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
                doData("sj_information/useradmin2",obj,function (data) {

                    if(data.code2>0){
                        window.location.reload();
                    }else{
                        alert("账号或密码错误,请重新输入");
                    }
                })
            }

		</script>
		<script>

            var limit=9;
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
                    "<a  href=\"<%=basePath%>/liyi_sj/stage/esclogin.jsp\" style=\"color: white;\">退出登陆</a>\n" +
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
                //分页查询攻略;
            }

            var raiderid=getURLParamValue("raidersid");
            var raiderobj=new Object();
            raiderobj.id=raiderid;
            doData("sjyh_raiders/getMe",raiderobj,function (data) {

                data.obj.time=Date.prototype.getLongDate(data.obj.time);
                $("#radescription").append("<div class=\"col-lg-12\" style=\"background-color: white;padding: 20px 40px 10px 40px;font-size: 14px;\">\n" +
                    "<h3 style=\"font-size:22px;\">"+data.obj.title+"\n" +
                    "</br><small>"+data.obj.time+"</small>\n" +
                    "</h3>\n" +
                    "<div style=\"color: darkgray;border-top: 1px solid gainsboro;border-bottom: 1px solid gainsboro;margin-top: 30px;padding-top: 10px;\">\n" +
                    "<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+data.obj.description+"\n" +
                    "</p>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div style=\"margin-bottom: 50px;margin-top: 40px\">"+data.obj.content+"</div>\n" +
                    "<div style=\"margin-top: 30px;text-align: center;\">\n" +
                    "<span style=\"margin-right: 50px;\" title=\"收藏\">\n" +
                    "<i id=\"coll1\" class=\"glyphicon glyphicon-heart\" style=\"\"></i>\n" +
                    "</span>\n" +
                    "<span class=\"collstrage\" title=\"点赞\">\n" +
                    "<i id=\"coll2\" class=\"glyphicon glyphicon-thumbs-up\" style=\"\"></i>\n" +
                    "</span>\n" +
                    "\n" +
                    "</div>\n" +
                    "\n" +
                    "</div>");

            })



            var start=0;
            var limit=3;
            var model1=new Object()
            var subcategory="送好友";
            model1.start=start;
            model1.limit=limit;
            model1.subcategory=subcategory;
            doDataappend(model1);
            function doDataappend(model1) {
                doData("sj_commodity/commfandbyPage",model1, function (data) {
                    for (var i = 0; i < data.obj.length; i++) {

                        var price=data.obj[i].price;
                        price=price.toFixed(2);

                        $("#giftright").append("<div id=\"oneright\" style=\"background-color: white;padding-top:30px;\">\n" +
                            "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\"><img src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image3+"\"></a>\n" +
                            "<p style=\"padding:10px 0px 0px 10px;font-size: 16px;\">\n" +
                            "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\">"+data.obj[i].commname+"</a>\n" +
                            "</p>\n" +
                            "<span style=\"color: red;padding-left: 10px;font-size: 16px;\">¥\n" +
                            "<span>"+price+"</span>\n" +
                            "</span>\n"+
                            "<span class=\"pull-right addcart\" data-toggle=\"modal\" data-target=\".bs-example-modal-sm\">\n" +
                            "<i class=\"glyphicon glyphicon-shopping-cart\"></i>购物车\n" +
                            "</span>\n" +
                            "</div>");
                    }
                })
            }



            function maijiarukou() {
                var uobj=new Object();
                uobj.id=userid;
                doData("sj_information/getMe",uobj,function (data) {
                    var s_id=""+data.obj.s_id;
                    if (s_id!=""&&s_id!="null"){
                        window.location.href="<%=basePath%>/sj_information/sj_index";
                    }else{
                        $("#neirong").html("您还不是商家,需要成为商家请前往<a style=\"color:red\" href=\"<%=basePath%>/liyi_sj/stage/business/register.jsp\">商家注册</a>")
                        $(".bs-example-modal-sm2").modal();
                    }
                });
            }
		</script>
            
		
		
		
		
		
		
		<script type="text/javascript" src="js/jquery/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery/jquery-migrate.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/jquery/js.cookie.min.js"></script>
		<script type="text/javascript" src="js/jquery/jquery.blockUI.min.js"></script>

		<script type="text/javascript" src="js/select2/select2.min.js"></script>

		<script type="text/javascript" src="js/woocommerce/address-i18n.min.js"></script>

		<!-- OPEN LIBS JS -->
		<script type="text/javascript" src="js/owl-carousel/owl.carousel.min.js"></script>
		<script type="text/javascript" src="js/slick-1.6.0/slick.min.js"></script>

		<script type="text/javascript" src="js/yith-woocommerce-compare/jquery.colorbox-min.js"></script>
		<script type="text/javascript" src="js/sw_core/isotope.js"></script>
		<script type="text/javascript" src="js/sw_core/jquery.fancybox.pack.js"></script>
		<script type="text/javascript" src="js/sw_woocommerce/jquery.countdown.min.js"></script>
		<script type="text/javascript" src="js/woocommerce/checkout.js"></script>
		<script type="text/javascript" src="js/js_composer/js_composer_front.min.js"></script>

		<script type="text/javascript" src="js/plugins.js"></script>
		<script type="text/javascript" src="js/megamenu.min.js"></script>
		<script type="text/javascript" src="js/main.min.js"></script>

		<script type="text/javascript">
			var sticky_navigation_offset_top = $("#header .header-bottom").offset().top;
			var sticky_navigation = function() {
				var scroll_top = $(window).scrollTop();
				if(scroll_top > sticky_navigation_offset_top) {
					$("#header .header-bottom").addClass("sticky-menu");
					$("#header .header-bottom").css({
						"top": 0,
						"left": 0,
						"right": 0
					});
				} else {
					$("#header .header-bottom").removeClass("sticky-menu");
				}
			};
			sticky_navigation();
			$(window).scroll(function() {
				sticky_navigation();
			});

			$(document).ready(function() {
				$(".show-dropdown").each(function() {
					$(this).on("click", function() {
						$(this).toggleClass("show");
						var $element = $(this).parent().find("> ul");
						$element.toggle(300);
					});
				});
			});
		</script>

		<!--[if gte IE 9]><!-->
		<script type="text/javascript">
			var request, b = document.body,
				c = 'className',
				cs = 'customize-support',
				rcs = new RegExp('(^|\\s+)(no-)?' + cs + '(\\s+|$)');
			request = true;

			b[c] = b[c].replace(rcs, ' ');
			// The customizer requires postMessage and CORS (if the site is cross domain)
			b[c] += (window.postMessage && request ? ' ' : ' no-') + cs;
		</script>
		<!--<![endif]-->
		<script src="js/buy_product.js"></script>
		<script src="js/jquery-1.7.2.min.js"></script>
	</body>

</html>