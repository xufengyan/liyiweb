<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>

<!DOCTYPE html>
<html lang="en">

	<head>
		<title>购物车</title>
		<meta charset="utf-8" />

		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<!-- GOOGLE WEB FONTS -->
		<link rel="stylesheet" href="css/font-awesome.min.css">

		<!-- BOOTSTRAP 3.3.7 CSS -->
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />

		<!-- SLICK v1.6.0 CSS -->
		<link rel="stylesheet" href="css/slick-1.6.0/slick.css" />

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
		<link rel="stylesheet" href="" id="rtl" />
		<link rel="stylesheet" href="css/app-responsive.css" />
		<script src="js/jquery-1.7.2.min.js"></script>
		<style>

			
			.entry-content .entry-summary table thead tr,
			.commentlist .entry-summary table thead tr {
				border-bottom: 1px solid lightgray;
			}	
			@media only screen and (max-width:620px) {
				#bigtable {
					display: none;
				}
			}
			@media only screen and (min-width:620px) {
				#smalltable {
					display: none;
				}
			}
			
			#cartstore:hover {
				color: red;
				text-decoration: underline;
			}
			
			#cartflower:hover {
				color: red;
				text-decoration: underline;
			}
		</style>
	</head>

	<body class="page woocommerce-cart woocommerce-page">
		<div class="body-wrapper theme-clearfix">
			<header id="header" class="header header-style1">
				<div class="header-top clearfix">
					<div class="container">
						<div class="rows">
							<!-- 最顶部布局 -->
							<div id="topname">
								<div id="toplogin" class="pull-left top1" >
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
												<p id="top-p" style="padding: 12px 0px 0px 20px;"><a href="shop.jsp?commname=''&type=1">热销礼品</a>
													<a href="shop.jsp?commname='创意礼品'&type=1">创意礼品</a>
													<a href="shop.jsp?commname='送女友'&type=1">送女友</a>
													<a href="shop.jsp?commname='送老师'&type=1">送老师</a>
													<a href="shop.jsp?commname='送亲朋'&type=1">送亲朋</a>
													<a href="shop.jsp?commname='送上司'&type=1">送上司</a>
													<a href="shop.jsp?commname='情人节礼物'&type=1">情人节礼物</a>
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

			<div class="container">
				<div class="row">
					<div id="contents" role="main" class="main-page col-lg-12 col-md-12 col-sm-12 col-xs-12" style="background-color: white;margin: 40px 0px 60px 0px;padding:40px;">
						<div class="page type-page status-publish hentry">
							<div class="entry-content">
								<div class="entry-summary">
									<div class="woocommerce">
										<form action="" method="post">
											<center>
												<table id="bigtable" style="border-color:lightgrey;">
													<thead>
														<th style="width: 2%;"></th>
														<th  style="width: 13%;">产品</th>
														<th style="width: 18%;"></th>
														<th style="width: 20%;">店铺</th>
														<th style="width: 10%;">价格</th>
														<th style="width: 15%;">数量</th>
														<th style="width: 10%;">总价</th>
														<th style="width: 18%;">操作</th>
													</thead>
													<tbody id="usercart">

													</tbody>
												</table>
											</center>

											<!--  缩小版 -->

											<table id="smalltable" style="width: 100%;border-color:lightgrey;">
												<%--<tr style="border-color: lightgray;">--%>
													<%--<td style="width: 100%;border: none;">--%>
														<%--<div  style="padding: 0px 20px 0px 0px;float: left;">--%>

															<%--<input style="width:20px;height:20px;font-size: 30px" type="checkbox"  name="cartid" value="">--%>

														<%--</div>--%>

														<%--<img src="image/129.png" style="width:100px;float: left;" />--%>
														<%--<div style="float: left;margin-left: 30px;">--%>
														<%--<p style="font-size: 14px;margin: 0px;">产品:&nbsp;&nbsp;--%>
															<%--<a id="cartflower" href="simple_product.jsp">永生花永生花花花</a>--%>
														<%--</p>--%>
														<%--<p style="color: darkgray;font-size: 14px;margin: 0px;">颜色:<span>白色</span></p>--%>
														<%--<p style="font-size: 14px;margin: 0px;">店铺:&nbsp;&nbsp;--%>
															<%--<a id="cartflower" href="business/index.jsp">理想派礼品专营店</a>--%>
														<%--</p>--%>
														<%--<p style="font-size: 14px;margin: 0px;">价格:&nbsp;&nbsp;--%>
															<%--<span style="color: red;">￥19.60</span>--%>
														<%--</p>--%>
														<%--<p style="font-size: 14px;margin: 0px;">数量:&nbsp;&nbsp;--%>
															<%--<input type="number" value="1" style="width:60px;padding:2px;text-align: center;" />--%>
														<%--</p>--%>
														<%--<p style="font-size: 14px;margin: 0px;">总价:&nbsp;&nbsp;--%>
															<%--<span style="color: red;">￥19.60</span>--%>
														<%--</p>--%>
														<%----%>
                                                             <%--</div>--%>
                                                             <%--<p style="font-size: 14px;margin: 0px;width: 100%;text-align: right;">--%>
															<%--<a href="javascript:void(0);" style="color: red;text-decoration: underline;">删除</a>--%>
														<%--</p>--%>
													<%--</td>--%>
													<%--</tr>--%>
													<%----%>
													<%--<tr style="border-color: lightgray;">--%>
													<%--<td style="width: 100%;border: none;">--%>
														<%--<div  style="padding: 0px 20px 0px 0px;float: left;">--%>

															<%--<input style="width:20px;height:20px;font-size: 30px" type="checkbox"  name="cartid" value="">--%>

														<%--</div>--%>
														<%----%>
														<%--<img src="image/129.png" style="width:100px;float: left;" />--%>
														<%--<div style="float: left;margin-left: 30px;">--%>
														<%--<p style="font-size: 14px;margin: 0px;">产品:&nbsp;&nbsp;--%>
															<%--<a id="cartflower" href="simple_product.jsp">永生花永生花花花</a>--%>
														<%--</p>--%>
														<%--<p style="color: darkgray;font-size: 14px;margin: 0px;">颜色:<span>白色</span></p>--%>
														<%--<p style="font-size: 14px;margin: 0px;">店铺:&nbsp;&nbsp;--%>
															<%--<a id="cartflower" href="business/index.jsp">理想派礼品专营店</a>--%>
														<%--</p>--%>
														<%--<p style="font-size: 14px;margin: 0px;">价格:&nbsp;&nbsp;--%>
															<%--<span style="color: red;">￥19.60</span>--%>
														<%--</p>--%>
														<%--<p style="font-size: 14px;margin: 0px;">数量:&nbsp;&nbsp;--%>
															<%--<input type="number" value="1" style="width:60px;padding:2px;text-align: center;" />--%>
														<%--</p>--%>
														<%--<p style="font-size: 14px;margin: 0px;">总价:&nbsp;&nbsp;--%>
															<%--<span style="color: red;">￥19.60</span>--%>
														<%--</p>--%>
														<%----%>
                                                             <%--</div>--%>
                                                             <%--<p style="font-size: 14px;margin: 0px;width: 100%;text-align: right;">--%>
															<%--<a href="javascript:void(0);" style="color: red;text-decoration: underline;">删除</a>--%>
														<%--</p>--%>
													<%--</td>--%>
													<%--</tr>--%>
													<%----%>
													<%--<tr style="border-color: lightgray;">--%>
													<%--<td style="width: 100%;border: none;">--%>
														<%--<div  style="padding: 0px 20px 0px 0px;float: left;">--%>

															<%--<input style="width:20px;height:20px;font-size: 30px" type="checkbox"  name="cartid" value="">--%>

														<%--</div>--%>
														<%----%>
														<%--<img src="image/129.png" style="width:100px;float: left;" />--%>
														<%--<div style="float: left;margin-left: 30px;">--%>
														<%--<p style="font-size: 14px;margin: 0px;">产品:&nbsp;&nbsp;--%>
															<%--<a id="cartflower" href="simple_product.jsp">永生花永生花花花</a>--%>
														<%--</p>--%>
														<%--<p style="color: darkgray;font-size: 14px;margin: 0px;">颜色:<span>白色</span></p>--%>
														<%--<p style="font-size: 14px;margin: 0px;">店铺:&nbsp;&nbsp;--%>
															<%--<a id="cartflower" href="business/index.jsp">理想派礼品专营店</a>--%>
														<%--</p>--%>
														<%--<p style="font-size: 14px;margin: 0px;">价格:&nbsp;&nbsp;--%>
															<%--<span style="color: red;">￥19.60</span>--%>
														<%--</p>--%>
														<%--<p style="font-size: 14px;margin: 0px;">数量:&nbsp;&nbsp;--%>
															<%--<input type="number" value="1" style="width:60px;padding:2px;text-align: center;" />--%>
														<%--</p>--%>
														<%--<p style="font-size: 14px;margin: 0px;">总价:&nbsp;&nbsp;--%>
															<%--<span style="color: red;">￥19.60</span>--%>
														<%--</p>--%>
														<%----%>
                                                             <%--</div>--%>
                                                             <%--<p style="font-size: 14px;margin: 0px;width: 100%;text-align: right;">--%>
															<%--<a href="javascript:void(0);" style="color: red;text-decoration: underline;">删除</a>--%>
														<%--</p>--%>
													<%--</td>--%>
													<%--</tr>--%>
													<%----%>
													<%--<tr style="border-color: lightgray;">--%>
													<%--<td style="width: 100%;border: none;">--%>
														<%--<div  style="padding: 0px 20px 0px 0px;float: left;">--%>

															<%--<input style="width:20px;height:20px;font-size: 30px" type="checkbox"  name="cartid" value="">--%>

														<%--</div>--%>
														<%----%>
														<%--<img src="image/129.png" style="width:100px;float: left;" />--%>
														<%--<div style="float: left;margin-left: 30px;">--%>
														<%--<p style="font-size: 14px;margin: 0px;">产品:&nbsp;&nbsp;--%>
															<%--<a id="cartflower" href="simple_product.jsp">永生花永生花花花</a>--%>
														<%--</p>--%>
														<%--<p style="color: darkgray;font-size: 14px;margin: 0px;">颜色:<span>白色</span></p>--%>
														<%--<p style="font-size: 14px;margin: 0px;">店铺:&nbsp;&nbsp;--%>
															<%--<a id="cartflower" href="business/index.jsp">理想派礼品专营店</a>--%>
														<%--</p>--%>
														<%--<p style="font-size: 14px;margin: 0px;">价格:&nbsp;&nbsp;--%>
															<%--<span style="color: red;">￥19.60</span>--%>
														<%--</p>--%>
														<%--<p style="font-size: 14px;margin: 0px;">数量:&nbsp;&nbsp;--%>
															<%--<input type="number" value="1" style="width:60px;padding:2px;text-align: center;" />--%>
														<%--</p>--%>
														<%--<p style="font-size: 14px;margin: 0px;">总价:&nbsp;&nbsp;--%>
															<%--<span style="color: red;">￥19.60</span>--%>
														<%--</p>--%>
														<%----%>
                                                             <%--</div>--%>
                                                             <%--<p style="font-size: 14px;margin: 0px;width: 100%;text-align: right;">--%>
															<%--<a href="javascript:void(0);" style="color: red;text-decoration: underline;">删除</a>--%>
														<%--</p>--%>
													<%--</td>--%>
													<%--</tr>--%>
											</table>

										</form>

										<div class="cart-collaterals">
											<div class="products-wrapper">
												<div class="cart_totals ">
													<h2>总计</h2>

													<table cellspacing="0" class="shop_table shop_table_responsive">
														<tbody>

															<%--<tr class="cart-subtotal">--%>
																<%--<th>总计</th>--%>
																<%--<td data-title="总计">--%>
																	<%--<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">￥</span>300.00</span>--%>
																<%--</td>--%>
															<%--</tr>--%>

															<tr class="order-total">
																<th>应付</th>
																<td data-title="应付">
																	<strong><span style="color: red;" id="cartzong" class="woocommerce-Price-amount amount">￥200.00</span></strong>
																</td>
															</tr>

														</tbody>
													</table>

													<div class="wc-proceed-to-checkout">
														<a onclick="gocartshopping()" href="javascript:void(0)" class="checkout-button button alt wc-forward">去结算</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="clearfix"></div>
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
		<script src="<%= basePath%>/script/common/jquery-1.8.2.min.js"></script>
		<script src="<%= basePath%>/script/common/public.js"></script>
		<script src="<%= basePath%>/script/common/project.js"></script>





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

            var limit=5;
            var start=0;
            var status=null;
            var count=1;
            var evalustatus=null;
            var orderdiv="ordercontent1";
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
                    "</div>");

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


                        $("#usercart").append("<tr  style=\"border-color:lightgrey;\">\n" +
                            "<td style=\"text-align: center;border:none\">\n" +
                            "<input onclick=\"checkboxdian()\" style=\"width: 40px;height:40px;\"type=\"checkbox\"name=\"cartid\" value=\""+data.obj[i].c_id+"\">\n" +
                            "<input type=\"hidden\" id=\"styleid"+i+"\" value=\""+data.obj[i].st_id+"\">" +
                            "<input type=\"hidden\" id=\"cartidshuz"+i+"\" value=\""+data.obj[i].id+"\">" +
							"</td>\n" +
                            "<td style=\"border: none;\">\n" +
                            "<img src=\"<%=basePath%>/uploadfiles/"+data.obj[i].styleImage+"\" style=\"width: 70px;\">\n" +
                            "</td>\n" +
                            "<td style=\"border: none;\">\n" +
                            "<a id=\"cartflower\" style=\"font-size:12px;\" href=\"simple_product.jsp?comid="+data.obj[i].c_id+"&type=2\">"+data.obj[i].commname+"</a>\n" +
                            "<p style=\"color: darkgray;font-size: 12px;\">颜色:<span>"+data.obj[i].stylename+"</span></p>\n" +
                            "</td>\n" +
                            "<td style=\"border: none;\">\n" +
                            "<span style=\"font-size:12px ;\">店铺:<a id=\"cartstore\" href=\"business/index.jsp\">"+data.obj[i].storename+"</a></span>\n" +
                            "</td>\n" +
                            "\n" +
                            "<td style=\"border: none;\">\n" +
                            "￥<span class=\"commprice"+i+"\" style=\"color: red;\">"+comprice+"</span>\n" +
                            "</td>\n" +
                            "<td style=\"border: none;\">\n" +
                            "<input class=\"min\" id=\"min\"  name=\""+i+"\" type=\"button\" value=\"-\"  />\n" +
                            "<input class=\"text_box\" style=\"width: 30px;text-align: center\" name=\"\" type=\"number\" value=\"1\" placeholder=\"1\"/>\n" +
                            "<input class=\"add\" id=\"add\" name=\""+i+"\" type=\"button\" value=\"+\" />\n" +
                            "</td>\n" +
                            "<td style=\"border: none;\">\n" +
                            "￥<span class=\"zongprice"+i+"\" style=\"color: red;\">"+comprice+"</span>\n" +
                            "</td>\n" +
                            "<td style=\"border: none;\">\n" +
                            "<a href=\"javascript:void(0)\" style=\"color: red;text-decoration: underline;\">删除</a>\n" +
                            "</td>\n" +
                            "</tr>");

                        $("#smalltable").append("<tr style=\"border-color: lightgray;\">\n" +
                            "<td style=\"width: 100%;border: none;\">\n" +
                            "<div  style=\"padding: 0px 20px 0px 0px;float: left;\">\n" +
                            "\n" +
                            "<input style=\"width:20px;height:20px;font-size: 30px\" type=\"checkbox\"  name=\"cartid\" value=\"\">\n" +
                            "\n" +
                            "</div>\n" +
                            "\n" +
                            "<img src=\"<%=basePath%>/uploadfiles/"+data.obj[i].styleImage+"\" style=\"width:100px;float: left;\" />\n" +
                            "<div style=\"float: left;margin-left: 30px;\">\n" +
                            "<p style=\"font-size: 14px;margin: 0px;\">产品:&nbsp;&nbsp;\n" +
                            "<a id=\"cartflower\" href=\"simple_product.jsp?comid="+data.obj[i].c_id+"&type=2\">"+data.obj[i].commname+"</a>\n" +
                            "</p>\n" +
                            "<p style=\"color: darkgray;font-size: 14px;margin: 0px;\">颜色:<span>"+data.obj[i].stylename+"</span></p>\n" +
                            "<p style=\"font-size: 14px;margin: 0px;\">店铺:&nbsp;&nbsp;\n" +
                            "<a id=\"cartflower\" href=\"business/index.jsp\">"+data.obj[i].storename+"</a>\n" +
                            "</p>\n" +
                            "<p style=\"font-size: 14px;margin: 0px;\">价格:&nbsp;&nbsp;\n" +
                            "￥<span style=\"color: red;\">"+comprice+"</span>\n" +
                            "</p>\n" +
                            "<p style=\"font-size: 14px;margin: 0px;\">数量:&nbsp;&nbsp;\n" +
                            "<input type=\"number\" value=\"1\" style=\"width:60px;padding:2px;text-align: center;\" />\n" +
                            "</p>\n" +
                            "<p style=\"font-size: 14px;margin: 0px;\">总价:&nbsp;&nbsp;\n" +
                            "￥<span style=\"color: red;\">19.60</span>\n" +
                            "</p>\n" +
                            "\n" +
                            "</div>\n" +
                            "<p style=\"font-size: 14px;margin: 0px;width: 100%;text-align: right;\">\n" +
                            "<a href=\"javascript:void(0);\" style=\"color: red;text-decoration: underline;\">删除</a>\n" +
                            "</p>\n" +
                            "</td>\n" +
                            "</tr>");



                    }



                    $(".add").click(function () {
                        var t = $(this).parent().find('input[class*=text_box]');
                        if(t.val()==""||undefined||null){
                            t.val(1);
                        }
                        t.val(parseInt(t.val()) + 1)
                        if(parseInt(t.val()) > 100) {
                            t.val(100);
                        }
                        var toprice=$(this).attr("name");
                        var toprice2= $(".commprice"+toprice).html()*t.val();
                        $(".zongprice"+toprice).html(toprice2.toFixed(2));
                         checkboxdian();

                    })


                    $(".min").click(function () {
                        var t = $(this).parent().find('input[class*=text_box]');
                        if(t.val()==""||undefined||null){
                            t.val(1);
                        }
                        t.val(parseInt(t.val()) - 1)
                        if(parseInt(t.val()) < 1) {
                            t.val(1);
                        }

                        var toprice=$(this).attr("name");
                        var toprice2= $(".commprice"+toprice).html()*t.val();
                        $(".zongprice"+toprice).html(toprice2.toFixed(2));
                      	 checkboxdian();
                    })

                    $(".text_box").keyup(function(){
                        var t = $(this).parent().find('input[class*=text_box]');
                        if(parseInt(t.val())==""||undefined||null || isNaN(t.val())) {
                            t.val(0);
                        }
                    })
                    $("#pricecount").html("￥"+pricecount.toFixed(2));
                    $("#pricecount2").html("￥"+pricecount.toFixed(2));
                })




            }else{

                $("#content").hide();

            }


            function noFue(val){
                document.getElementById('payCount_Max').value = val >= 1 ? val : 1;
            }
            var number=[];
            var commstyleid=[];
            var cartidshuz=[]
			function gocartshopping(){

                var comidobj =document.getElementsByName("cartid");
				var comidshuz=[];
                for(k in comidobj){
                    if(comidobj[k].checked)
                        comidshuz.push(comidobj[k].value);
                }

                window.location.href="<%=basePath%>/liyi_sj/stage/balance.jsp?comid="+comidshuz+"&shopnumber="+number+"&styleid="+commstyleid+"&type=3&cartid=1&cartidshuz="+cartidshuz;

            }


            function checkboxdian() {
                var sum=0;
                number=[];
                commstyleid=[];
                cartidshuz=[];
                var groupCheckbox=$("input[name='cartid']");
                for(i=0;i<groupCheckbox.length;i++){
                    if(groupCheckbox[i].checked){
                        sum+=parseFloat($(".zongprice"+i).html());
                        var val=groupCheckbox[i].value;
						number.push($(".zongprice"+i).html()/$(".commprice"+i).html());
						commstyleid.push($("#styleid"+i).val());
						cartidshuz.push($("#cartidshuz"+i).val());
                      $("#cartzong").html(sum.toFixed(2));
                    }
                }


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



		<style type="text/css">
			input[type=number] {
				-moz-appearance:textfield;
			}
			input[type=number]::-webkit-inner-spin-button,
			input[type=number]::-webkit-outer-spin-button {
				-webkit-appearance: none;
				margin: 0;
			}
		</style>


		<script type="text/javascript" src="js/jquery/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery/jquery-migrate.min.js"></script>
		<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
		<script type="text/javascript" src="js/jquery/js.cookie.min.js"></script>

		<!-- OPEN LIBS JS -->
		<script type="text/javascript" src="js/owl-carousel/owl.carousel.min.js"></script>
		<script type="text/javascript" src="js/slick-1.6.0/slick.min.js"></script>

		<script type="text/javascript" src="js/yith-woocommerce-compare/jquery.colorbox-min.js"></script>
		<script type="text/javascript" src="js/sw_core/isotope.js"></script>
		<script type="text/javascript" src="js/sw_core/jquery.fancybox.pack.js"></script>
		<script type="text/javascript" src="js/sw_woocommerce/category-ajax.js"></script>
		<script type="text/javascript" src="js/sw_woocommerce/jquery.countdown.min.js"></script>
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
	</body>

</html>