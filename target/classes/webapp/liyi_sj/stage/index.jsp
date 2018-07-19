
<%--
  Created by IntelliJ IDEA.
  User: xufeng
  Date: 18/5/29
  Time: 下午7:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Home</title>
	<meta charset="utf-8" />
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<!-- GOOGLE WEB FONTS -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	
	<!-- BOOTSTRAP 3.3.7 CSS -->
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	
	<!-- SLICK v1.6.0 CSS -->
	<link rel="stylesheet" href="css/slick-1.6.0/slick.css" />
	<link rel="stylesheet" href="css/jquery.fancybox.css" />
	<link rel="stylesheet" href="css/yith-woocommerce-compare/colorbox.css" />
	<link rel="stylesheet" href="css/owl-carousel/owl.carousel.min.css" />
	<link rel="stylesheet" href="css/owl-carousel/owl.theme.default.min.css" />
	<link rel="stylesheet" href="css/js_composer/js_composer.min.css" />
	<link rel="stylesheet" href="css/woocommerce/woocommerce.css" />
	<link rel="stylesheet" href="css/yith-woocommerce-wishlist/style.css" />
	<link rel="stylesheet" href="css/yith-woocommerce-wishlist/style.css" />
	<link rel="stylesheet" href="css/custom.css" />
	<link rel="stylesheet" href="<%=basePath%>/liyi_sj/stage/css/app-orange.css" id="theme_color" />
	<link rel="stylesheet" href="" id="rtl" />
	<link rel="stylesheet" href="css/app-responsive.css" />




</head>

<body style="margin:0px;padding: 0px" class="page page-id-6 home-style1">
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
													<a onclick="maijiarukou()" class="item-link" href="javascript:void(0)">
														<span class="menu-title">卖家中心</span>
													</a>
												</li>
												
												<li class="menu-cart">
													<a class="item-link" href="<%=basePath%>/liyi_sj/stage/business/register.html">
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
								<img  src="image/logoSmall.png" alt="Shoopy">
							</a>
						</div>
						<!--//搜索框代码-->
						<div class="mid-header pull-right">
							<div class="widget-1 widget-first widget sw_top-2 sw_top">
								<div class="widget-inner">
									<div class="top-form top-search">
										<div class="topsearch-entry">
											<form method="get" action="shop.jsp">
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
				<div id="contents" role="main" class="main-page  col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="post-6 page type-page status-publish hentry">
						<div class="entry-content">
							<div class="entry-summary">
								<div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid bg-wrap vc_custom_1487642348040 vc_row-no-padding">
									<div class="container float wpb_column vc_column_container vc_col-sm-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="vc_row wpb_row vc_inner vc_row-fluid vc_custom_1481518924466">
													<div class="wrap-vertical wpb_column vc_column_container vc_col-sm-2">
														<div class="vc_column-inner vc_custom_1481518234612">
															<div class="wpb_wrapper">
																<div class="vc_wp_custommenu wpb_content_element wrap-title">
																	<div class="mega-left-title">
																		<strong>商品分类</strong>
																	</div>

																	<div class="wrapper_vertical_menu vertical_megamenu">
																		<div class="resmenu-container">
																			<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#ResMenuvertical_menu">
																				<span class="sr-only">商品分类</span>
																				<span class="icon-bar"></span>
																				<span class="icon-bar"></span>
																				<span class="icon-bar"></span>
																			</button>

																			<div id="ResMenuvertical_menu" class="collapse menu-responsive-wrapper">
																				<ul id="menu-vertical-menu" >
																					<li class="menu-computers-laptops">
																						<a class="item-link" href="shop.jsp">热销礼品</a>
																					</li>
																					<li class="menu-computers-laptops">
																						<a class="item-link" href="shop.jsp?category='创意礼品'&type=1">创意礼品</a>
																					</li>
																				  <li class="menu-computers-laptops">
																					<a class="item-link" href="shop.jsp?category='专属定制'&type=1">专属定制</a>
																					</li>
																					<li class="fix-menu res-dropdown menu-smartphones-tablet">
																						<a class="item-link dropdown-toggle">礼品用途</a>
																						<span class="show-dropdown"></span>

																						<ul class="dropdown-resmenu">
																							<li class="res-dropdown menu-electronics">
																								<a  class="item-link dropdown-toggle" href="shop.jsp?subcategory='送亲朋'&type=1">送亲朋</a>
																							</li>
																							<li class="res-dropdown menu-electronics">
																								<a  class="item-link dropdown-toggle" href="shop.jsp?subcategory='送好友'&type=1">送好友</a>
																							</li>

																							<li class="res-dropdown menu-smartphone">
																								<a  class="item-link dropdown-toggle" href="shop.jsp?subcategory='送上司'&type=1">送上司</a>

																							</li>

																							<li class="res-dropdown menu-tablets">
																								<a  class="item-link dropdown-toggle" href="shop.jsp?subcategory='送同事'&type=1">送同事</a>

																							</li>

																							<li class="res-dropdown menu-computer">
																								<a class="item-link dropdown-toggle" href="shop.jsp?subcategory='送情侣'&type=1">送情侣</a>

																							</li>

																							<li class="fix-position res-dropdown menu-image">
																								<a  class="item-link dropdown-toggle" href="shop.jsp?subcategory='送老师'&type=1">送老师</a>

																							</li>
																						</ul>
																					</li>

																					<li class="menu-cameras-camcorders">
																					<a class="item-link dropdown-toggle">节日庆典</a>
																						<span class="show-dropdown"></span>

																						<ul class="dropdown-resmenu">

																						<li class="fix-position res-dropdown menu-image">
																								<a  class="item-link dropdown-toggle" href="shop.jsp?subcategory='送老师'&type=1">情人节</a>

																						</li>
																						<li class="fix-position res-dropdown menu-image">
																								<a  class="item-link dropdown-toggle" href="shop.jsp?subcategory='圣诞节'&type=1">圣诞节</a>

																						</li>
																						<li class="fix-position res-dropdown menu-image">
																								<a  class="item-link dropdown-toggle" href="shop.jsp?subcategory='女神节'&type=1">女神节</a>

																						</li>
																						<li class="fix-position res-dropdown menu-image">
																								<a  class="item-link dropdown-toggle" href="shop.jsp?subcategory='父（母）亲节'&type=1">父（母）亲节</a>

																						</li>
																						<li class="fix-position res-dropdown menu-image">
																								<a  class="item-link dropdown-toggle" href="shop.jsp?subcategory='教师节'&type=1">教师节</a>

																						</li>
																						<li class="fix-position res-dropdown menu-image">
																								<a  class="item-link dropdown-toggle" href="shop.jsp?subcategory='春节'&type=1">春节</a>

																						</li>
																						</ul>
																					</li>

																					<li class="res-dropdown menu-electronic-component">
																						<a class="item-link dropdown-toggle" >行业礼品</a>
																						<span class="show-dropdown"></span>
																						<ul class="dropdown-resmenu">
																						<li class="fix-position res-dropdown menu-image">
																								<a  class="item-link dropdown-toggle" href="shop.jsp?subcategory='IT行业礼品'&type=1">IT行业礼品</a>

																						</li>
																						<li class="fix-position res-dropdown menu-image">
																								<a  class="item-link dropdown-toggle" href="shop.jsp?subcategory='旅游礼品'&type=1">旅游礼品</a>

																						</li>
																						<li class="fix-position res-dropdown menu-image">
																								<a  class="item-link dropdown-toggle" href="shop.jsp?subcategory='学校礼品'&type=1">学校礼品</a>

																						</li>
																						<li class="fix-position res-dropdown menu-image">
																								<a  class="item-link dropdown-toggle" href="shop.jsp?subcategory='房地产礼品'&type=1">房地产礼品</a>

																						</li>
																						<li class="fix-position res-dropdown menu-image">
																								<a  class="item-link dropdown-toggle" href="shop.jsp?subcategory='政企单位礼品'&type=1">政企单位礼品</a>

																						</li>
																					</li>

																				</ul>
																			</div>
																		</div>

																		<ul id="menu-vertical-menu-1" class="nav vertical-megamenu etrostore-mega etrostore-menures">
																			<li class="menu-computers-laptops etrostore-menu-custom level1">
																				<a href="shop.jsp?category=''&type=1" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#7ac143"></span>

																						<span class="menu-title">热销礼品</span>
																					</span>
																				</a>
																			</li>
																			<li class="menu-cameras-camcorders etrostore-menu-custom level1">
																				<a href="shop.jsp?category='创意礼品'&type=1" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#fe9901"></span>

																						<span class="menu-title">创意礼品</span>
																					</span>
																				</a>
																			</li>


																			<li class="menu-cameras-camcorders etrostore-menu-custom level1">
																				<a href="shop.jsp?category='专属定制'&type=1" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#f7bc3d"></span>
																						<span class="menu-title">专属定制</span>
																					</span>
																				</a>
																			</li>

																			<li class="dropdown menu-electronic-component etrostore-mega-menu level1">
																				<a href="shop.jsp?category='礼物用途'&type=1" class="item-link dropdown-toggle">
																					<span class="have-title">
																						<span class="menu-color" data-color="#f03442"></span>
																						<span class="menu-title">礼物用途</span>
																					</span>
																				</a>

																				<ul class="dropdown-menu nav-level1 column-4">
																					<li class="dropdown-submenu column-4 menu-electronics etrostore-menu-img">
																						<a href="shop.jsp?subcategory='送亲朋'&type=1"><span class="menu-title menutitles">送亲朋</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-laptop-desktop-accessories">
																								<a href="shop.jsp?commname='手表'&type=1">
																									<span class="have-title">
																										<span class="menu-title">手表</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-storage-external-drives">
																								<a href="shop.jsp?commname='蛋雕'&type=1">
																									<span class="have-title">
																										<span class="menu-title">蛋雕</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-networking-wireless">
																								<a href="shop.jsp?commname='刮画'&type=1">
																									<span class="have-title">
																										<span class="menu-title">刮画</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-motherboards-cpus-psus">
																								<a href="shop.jsp?commname='陶瓷摆件'&type=1">
																									<span class="have-title">
																										<span class="menu-title">陶瓷摆件</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='送好友'&type=1"><span class="menu-title menutitles">送好友</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='钢笔'&type=1">
																									<span class="have-title">
																										<span class="menu-title">钢笔</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='抱枕'&type=1">
																									<span class="have-title">
																										<span class="menu-title">抱枕</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a href="shop.jsp?commname='加湿器'&type=1">
																									<span class="have-title">
																										<span class="menu-title">加湿器</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a href="shop.jsp?commname='保温杯'&type=1">
																									<span class="have-title">
																										<span class="menu-title">保温杯</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>


																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='送上司'&type=1"><span class="menu-title menutitles">送上司</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='地球仪'&type=1">
																									<span class="have-title">
																										<span class="menu-title">地球仪</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='钢笔'&type=1">
																									<span class="have-title">
																										<span class="menu-title">钢笔</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a href="shop.jsp?commname='琉璃摆件'&type=1">
																									<span class="have-title">
																										<span class="menu-title">琉璃摆件</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a href="shop.jsp?commname='陶瓷茶具'&type=1">
																									<span class="have-title">
																										<span class="menu-title">陶瓷茶具</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='送同事'&type=1"><span class="menu-title menutitles">送同事</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='木刻画'&type=1">
																									<span class="have-title">
																										<span class="menu-title">木刻画</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='小夜灯'&type=1">
																									<span class="have-title">
																										<span class="menu-title">小夜灯</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a href="shop.jsp?commname='暖手宝'&type=1">
																									<span class="have-title">
																										<span class="menu-title">暖手宝</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a href="shop.jsp?commname='手机架'&type=1">
																									<span class="have-title">
																										<span class="menu-title">手机架</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>
																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='送情侣'&type=1"><span class="menu-title menutitles">送情侣</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='水晶球'&type=1">
																									<span class="have-title">
																										<span class="menu-title">水晶球</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='手链'&type=1">
																									<span class="have-title">
																										<span class="menu-title">手链</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a href="shop.jsp?commname='项链'&type=1">
																									<span class="have-title">
																										<span class="menu-title">项链</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a href="shop.jsp?commname='DIY马克杯'&type=1">
																									<span class="have-title">
																										<span class="menu-title">DIY马克杯</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a href="shop.jsp?commname='软陶定制'&type=1">
																									<span class="have-title">
																										<span class="menu-title">软陶定制</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>
																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='送老师'&type=1"><span class="menu-title menutitles">送老师</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='香水'&type=1">
																									<span class="have-title">
																										<span class="menu-title">香水</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='笔筒'&type=1">
																									<span class="have-title">
																										<span class="menu-title">笔筒</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a href="shop.jsp?commname='纪念品摆件'&type=1">
																									<span class="have-title">
																										<span class="menu-title">纪念品摆件</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a href="shop.jsp?commname='地球仪'&type=1">
																									<span class="have-title">
																										<span class="menu-title">地球仪</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>
																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='生日'&type=1"><span class="menu-title menutitles">生日</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='毛绒玩具'&type=1">
																									<span class="have-title">
																										<span class="menu-title">毛绒玩具</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='DIY抱枕'&type=1">
																									<span class="have-title">
																										<span class="menu-title">DIY抱枕</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a href="shop.jsp?commname='气泡沙漏'&type=1">
																									<span class="have-title">
																										<span class="menu-title">气泡沙漏</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a href="shop.jsp?commname='水晶摆件'&type=1">
																									<span class="have-title">
																										<span class="menu-title">水晶摆件</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a href="shop.jsp?commname='星空球'&type=1">
																									<span class="have-title">
																										<span class="menu-title">星空球</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?commname=''&type=1"><span class="menu-title menutitles">更多礼物</span></a>
																					</li>
																				</ul>
																			</li>

																			<li class="dropdown menu-electronic-component etrostore-mega-menu level1">
																				<a href="shop.jsp?category='节日庆典'&type=1" class="item-link dropdown-toggle">
																					<span class="have-title">
																						<span class="menu-color" data-color="#f034ca"></span>
																						<span class="menu-title">节日庆典</span>
																					</span>
																				</a>

																				<ul class="dropdown-menu nav-level1 column-4">
																					<li class="dropdown-submenu column-4 menu-electronics etrostore-menu-img">
																						<a href="shop.jsp?subcategory='情人节'&type=1"><span class="menu-title menutitles">情人节</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-laptop-desktop-accessories">
																								<a href="shop.jsp?commname='鲜花'&type=1">
																									<span class="have-title">
																										<span class="menu-title">鲜花</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-storage-external-drives">
																								<a href="shop.jsp?commname='巧克力定制'&type=1">
																									<span class="have-title">
																										<span class="menu-title">巧克力定制</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-networking-wireless">
																								<a href="shop.jsp?commname='香水'&type=1">
																									<span class="have-title">
																										<span class="menu-title">香水</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-motherboards-cpus-psus">
																								<a href="shop.jsp?commname='水晶摆件'&type=1">
																									<span class="have-title">
																										<span class="menu-title">水晶摆件</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-motherboards-cpus-psus">
																								<a href="shop.jsp?commname='木刻画'&type=1">
																									<span class="have-title">
																										<span class="menu-title">木刻画</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-motherboards-cpus-psus">
																								<a href="shop.jsp?commname='项链'&type=1">
																									<span class="have-title">
																										<span class="menu-title">项链</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='圣诞节'&type=1"><span class="menu-title menutitles">圣诞节</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='礼物树'&type=1">
																									<span class="have-title">
																										<span class="menu-title">礼物树</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='圣诞发圈'&type=1">
																									<span class="have-title">
																										<span class="menu-title">圣诞发圈</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a href="shop.jsp?commname='灯串摆件'&type=1">
																									<span class="have-title">
																										<span class="menu-title">灯串摆件</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a href="shop.jsp?commname='圣诞礼物球'&type=1">
																									<span class="have-title">
																										<span class="menu-title">圣诞礼物球</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>


																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='春节'&type=1"><span class="menu-title menutitles">春节</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='中国结'&type=1">
																									<span class="have-title">
																										<span class="menu-title">中国结</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='对联'&type=1">
																									<span class="have-title">
																										<span class="menu-title">对联</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a href="shop.jsp?commname='吉祥公仔'&type=1">
																									<span class="have-title">
																										<span class="menu-title">吉祥公仔</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a href="shop.jsp?commname='吉祥灯笼'&type=1">
																									<span class="have-title">
																										<span class="menu-title">吉祥灯笼</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-mobile-accessories">
																								<a href="shop.jsp?commname='财神爷摆件'&type=1">
																									<span class="have-title">
																										<span class="menu-title">财神爷摆件</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='女神节'&type=1"><span class="menu-title menutitles">女神节</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='包包'&type=1">
																									<span class="have-title">
																										<span class="menu-title">包包</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='口红'&type=1">
																									<span class="have-title">
																										<span class="menu-title">口红</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a href="shop.jsp?commname='按摩仪'&type=1">
																									<span class="have-title">
																										<span class="menu-title">按摩仪</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a href="shop.jsp?commname='面膜'&type=1">
																									<span class="have-title">
																										<span class="menu-title">面膜</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-mobile-accessories">
																								<a href="shop.jsp?commname='化妆品'&type=1">
																									<span class="have-title">
																										<span class="menu-title">化妆品</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>
																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='父(母)亲节'&type=1"><span class="menu-title menutitles">父(母)亲节</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='木刻画相册'&type=1">
																									<span class="have-title">
																										<span class="menu-title">木刻画相册</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='按摩器'&type=1">
																									<span class="have-title">
																										<span class="menu-title">按摩器</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='感恩摆件'&type=1">
																									<span class="have-title">
																										<span class="menu-title">感恩摆件</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='暖手宝'&type=1">
																									<span class="have-title">
																										<span class="menu-title">暖手宝</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='按摩拖鞋'&type=1">
																									<span class="have-title">
																										<span class="menu-title">按摩拖鞋</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>
																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='教师节'&type=1"><span class="menu-title menutitles">教师节</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='永生花'&type=1">
																									<span class="have-title">
																										<span class="menu-title">永生花</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='钢笔'&type=1">
																									<span class="have-title">
																										<span class="menu-title">钢笔</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a href="shop.jsp?commname='保温杯'&type=1">
																									<span class="have-title">
																										<span class="menu-title">保温杯</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-smart-watches-accessories">
																								<a href="shop.jsp?commname='紫砂杯'&type=1">
																									<span class="have-title">
																										<span class="menu-title">紫砂杯</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>
																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?commname=''&type=1"><span class="menu-title menutitles">更多礼物</span></a>
																					</li>
																				</ul>
																			</li>

																			<li class="dropdown menu-electronic-component etrostore-mega-menu level1">
																				<a href="shop.jsp?category='行业礼品'&type=1" class="item-link dropdown-toggle">
																					<span class="have-title">
																						<span class="menu-color" data-color="#7754bc"></span>
																						<span class="menu-title">行业礼品</span>
																					</span>
																				</a>

																				<ul class="dropdown-menu nav-level1 column-4">
																					<li class="dropdown-submenu column-4 menu-electronics etrostore-menu-img">
																						<a href="shop.jsp?subcategory='IT行业'&type=1"><span class="menu-title menutitles">IT行业</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-laptop-desktop-accessories">
																								<a href="shop.jsp?commname='打火机'&type=1">
																									<span class="have-title">
																										<span class="menu-title">打火机</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-storage-external-drives">
																								<a href="shop.jsp?commname='空气净化器'&type=1">
																									<span class="have-title">
																										<span class="menu-title">空气净化器</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-networking-wireless">
																								<a href="shop.jsp?commname='绿植'&type=1">
																									<span class="have-title">
																										<span class="menu-title">绿植</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='教育单位'&type=1"><span class="menu-title menutitles">教育单位</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='书籍'&type=1">
																									<span class="have-title">
																										<span class="menu-title">书籍</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='钢笔'&type=1">
																									<span class="have-title">
																										<span class="menu-title">钢笔</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a href="shop.jsp?commname='锦旗'&type=1">
																									<span class="have-title">
																										<span class="menu-title">锦旗</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a href="shop.jsp?commname='纪念碑'&type=1">
																									<span class="have-title">
																										<span class="menu-title">纪念碑</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='金融单位'&type=1"><span class="menu-title menutitles">金融单位</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='绿植'&type=1">
																									<span class="have-title">
																										<span class="menu-title">绿植</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='保温杯'&type=1">
																									<span class="have-title">
																										<span class="menu-title">保温杯</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='国企单位'&type=1"><span class="menu-title menutitles">国企单位</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='招财摆件'">
																									<span class="have-title">
																										<span class="menu-title">招财摆件</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='紫砂杯'&type=1">
																									<span class="have-title">
																										<span class="menu-title">紫砂杯</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>
																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='IT行业'&type=1"><span class="menu-title menutitles">房地产</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='风水摆件'&type=1">
																									<span class="have-title">
																										<span class="menu-title">风水摆件</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='创意小杯子'&type=1">
																									<span class="have-title">
																										<span class="menu-title">创意小杯子</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='手摸'&type=1">
																									<span class="have-title">
																										<span class="menu-title">手摸</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='茶具'&type=1">
																									<span class="have-title">
																										<span class="menu-title">茶具</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>
																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='电商行业'&type=1"><span class="menu-title menutitles">电商行业</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='招财摆件'&type=1">
																									<span class="have-title">
																										<span class="menu-title">招财摆件</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='绿植'&type=1">
																									<span class="have-title">
																										<span class="menu-title">绿植</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='陶瓷摆件'&type=1">
																									<span class="have-title">
																										<span class="menu-title">陶瓷摆件</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='足银摆件'&type=1">
																									<span class="have-title">
																										<span class="menu-title">足银摆件</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='手提包'&type=1">
																									<span class="have-title">
																										<span class="menu-title">手提包</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>
																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?subcategory='娱乐行业'&type=1"><span class="menu-title menutitles">娱乐行业</span></a>
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="shop.jsp?commname='笔记本'&type=1">
																									<span class="have-title">
																										<span class="menu-title">笔记本</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='数码相机投影仪'&type=1">
																									<span class="have-title">
																										<span class="menu-title">数码相机投影仪</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='迷你吹风机'&type=1">
																									<span class="have-title">
																										<span class="menu-title">迷你吹风机</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-mobile-phones">
																								<a href="shop.jsp?commname='琉璃摆件'&type=1">
																									<span class="have-title">
																										<span class="menu-title">琉璃摆件</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
																						<a href="shop.jsp?commname=''&type=1"><span class="menu-title menutitles">更多礼物</span></a>
																					</li>
																				</ul>
																			</li>

																			<li class="menu-household-goods etrostore-menu-custom level1">
																				<a href="simple_product.jsp" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#42b8d1"></span>

																						<span class="menu-title"></span>
																					</span>
																				</a>
																			</li>

																			<li class="menu-television etrostore-menu-custom level1">
																				<a href="simple_product.jsp" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#3f5eca"></span>

																						<span class="menu-title"></span>
																					</span>
																				</a>
																			</li>

																			<li class="menu-accessories-for-tablet etrostore-menu-custom level1">
																				<a href="simple_product.jsp" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#13528c"></span>

																						<span class="menu-title"></span>
																					</span>
																				</a>
																			</li>

																			<li class="menu-accessories-for-tablet etrostore-menu-custom level1">
																				<a href="simple_product.jsp" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#13528c"></span>

																						<span class="menu-title"></span>
																					</span>
																				</a>
																			</li>


																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="wrap-slider wpb_column vc_column_container vc_col-sm-8">
														<div class="vc_column-inner vc_custom_1483000674370">
															<div class="wpb_wrapper">
																<!-- OWL SLIDER -->
																<div class="wpb_revslider_element wpb_content_element no-margin">
																	<div class="vc_column-inner ">
																		<div class="wpb_wrapper">
																			<div class="wpb_revslider_element wpb_content_element">
																				<div id="main-slider" class="fullwidthbanner-container" style="position:relative; width:100%; height:auto; margin-top:0px; margin-bottom:0px">
																					<div class="module slideshow no-margin">
																						<div class="item">
																							<a href="simple_product.jsp"><img src="image/scroll2.png" alt="slider1" class="img-responsive" height="559"></a>
																						</div>
																						<div class="item">
																							<a href="simple_product.jsp"><img src="image/scroll1.png" alt="slider2" class="img-responsive" height="559"></a>
																						</div>
																						<div class="item">
																							<a href="simple_product.jsp"><img src="image/scroll3.png" alt="slider3" class="img-responsive" height="559"></a>
																						</div>
																					</div>
																					<div class="loadeding"></div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<!-- OWL LIGHT SLIDER -->

																<div class="wpb_raw_code wpb_content_element wpb_raw_html">
																	<div class="wpb_wrapper">
																		<div class="banner">
																			<a href="#" class="banner1">
																				<img src="image/banner3.png" alt="banner" title="banner" />
																			</a>

																			<a href="#" class="banner2">
																				<img src="image/banner4.png" alt="banner" title="banner" />
																			</a>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="wrap-banner wpb_column vc_column_container vc_col-sm-2">
														<div class="vc_column-inner vc_custom_1483000922579">
															<div class="wpb_wrapper">
																<div class="wpb_single_image wpb_content_element vc_align_center vc_custom_1481518385054">
																	<figure class="wpb_wrapper vc_figure">
																		<a href="#" target="_self" class="vc_single_image-wrapper vc_box_border_grey">
																			<img class="vc_single_image-img" src="image/1.png" width="193" height="352" alt="banner1" title="banner1" />
																		</a>
																	</figure>
																</div>

																<div class="wpb_single_image wpb_content_element vc_align_center">
																	<figure class="wpb_wrapper vc_figure">
																		<a href="#" target="_self" class="vc_single_image-wrapper vc_box_border_grey">
																			<img class="vc_single_image-img" src="image/banner2.png" width="193" height="175" alt="banner2" title="banner2" />
																		</a>
																	</figure>
																</div>
															</div>
														</div>
													</div>
												</div>

												<div class="wpb_raw_code wpb_content_element wpb_raw_html">
													<div class="wpb_wrapper">
														<div class="wrap-transport">
															<div class="row">
																<div class="item item-1 col-lg-3 col-md-3 col-sm-6">
																	<a href="#" class="wrap">
																		<div class="icon">
																			<i class="fa fa-paper-plane"></i>
																		</div>

																		<div class="content">
																			<h3>退款保证</h3>
																			<p>30天内退款</p>
																		</div>
																	</a>
																</div>

																<div class="item item-2 col-lg-3 col-md-3 col-sm-6">
																	<a href="#" class="wrap">
																		<div class="icon">
																			<i class="fa fa-map-marker"></i>
																		</div>

																		<div class="content">
																			<h3>全国免运费</h3>
																			<p>订单超过100元</p>
																		</div>
																	</a>
																</div>

																<div class="item item-3 col-lg-3 col-md-3 col-sm-6">
																	<a href="#" class="wrap">
																		<div class="icon">
																			<i class="fa fa-tag"></i>
																		</div>

																		<div class="content">
																			<h3>积分兑换</h3>
																			<p>积分免费换取商品</p>
																		</div>
																	</a>
																</div>

																<div class="item item-4 col-lg-3 col-md-3 col-sm-6">
																	<a href="#" class="wrap">
																		<div class="icon">
																			<i class="fa fa-life-ring"></i>
																		</div>

																		<div class="content">
																			<h3>24小时在线服务</h3>
																			<p>24小时技术支持</p>
																		</div>
																	</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="vc_row-full-width vc_clearfix"></div>

								<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
									<div class="wpb_column vc_column_container vc_col-sm-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div id="_sw_countdown_01" class="sw-woo-container-slider responsive-slider countdown-slider" data-lg="5" data-md="4" data-sm="2" data-xs="1" data-mobile="1" data-speed="1000" data-scroll="1" data-interval="5000" data-autoplay="false" data-circle="false">
													<div class="resp-slider-container">
														<div class="box-title clearfix">
															<h3>热销礼品</h3>
															<a href="deals.jsp">查看全部</a>
														</div>

														<div class="banner-content clearfix">
															<a href="#"><img 	width="195" height="354" src="image/image-cd.png" class="attachment-larges size-larges" alt=""
																	srcset="image/image-cd.png 195w, image/image-cd.png 165w"
																	sizes="(max-width: 195px) 100vw, 195px" />
															</a>
														</div>

														<div id="sliderresponsive" class="slider responsive">



														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
									<div class="wpb_column vc_column_container vc_col-sm-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div id="slider_sw_woo_slider_widget_1" class="responsive-slider woo-slider-default sw-child-cat clearfix" data-lg="3" data-md="3" data-sm="2" data-xs="2" data-mobile="1" data-speed="1000" data-scroll="1" data-interval="5000" data-autoplay="false">
													<div class="child-top clearfix" data-color="#ff9901">
														<div class="box-title pull-left" style="background-color: #fe9901;">
															<h3>精品推荐</h3>

															<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#child_sw_woo_slider_widget_1" aria-expanded="false">
																<span class="icon-bar"></span>
																<span class="icon-bar"></span>
																<span class="icon-bar"></span>
															</button>
														</div>

														<div class="box-title-right clearfix">

															<div class="view-all">
																<a href="#">显示全部<i class="fa  fa-caret-right"></i></a>
															</div>
														</div>
													</div>

													<div class="content-slider">
														<div class="childcat-slider-content clearfix">
															<!-- 精品推荐左边图片 -->
															<div class="child-cat-brand pull-left">
																<a href="#"><img src="image/child.jpg"/></a>
															</div>

															<!-- slider content -->
															<div class="resp-slider-container">
																<div id="sliderreponsive2" class="slider responsive">


																</div>
															</div>
														</div>

														<div class="best-seller-product">
															<div class="box-slider-title">
																<h2 class="page-title-slider">优选店铺</h2>
															</div>


															<div id="wrapcontent" class="wrap-content">



															</div>

														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
									<div class="wpb_column vc_column_container vc_col-sm-6">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_single_image wpb_content_element vc_align_center">
													<figure class="wpb_wrapper vc_figure">
														<a href="#" target="_self" class="vc_single_image-wrapper vc_box_border_grey">
															<img class="vc_single_image-img" src="image/banner6-1.png" width="570" height="220" alt="banner6" title="banner6" />
														</a>
													</figure>
												</div>
											</div>
										</div>
									</div>

									<div class="wpb_column vc_column_container vc_col-sm-6">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_single_image wpb_content_element vc_align_center banner-none">
													<figure class="wpb_wrapper vc_figure">
														<a href="#" target="_self" class="vc_single_image-wrapper vc_box_border_grey">
															<img class="vc_single_image-img" src="image/banner7-1.png" width="570" height="220" alt="banner7" title="banner7" />
														</a>
													</figure>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
									<div class="wpb_column vc_column_container vc_col-sm-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div id="slider_sw_woo_slider_widget_2" class="responsive-slider woo-slider-default sw-child-cat clearfix" data-lg="3" data-md="3" data-sm="2" data-xs="2" data-mobile="1" data-speed="1000" data-scroll="1" data-interval="5000" data-autoplay="false">
													<div class="child-top clearfix" data-color="#efc73a">
														<div class="box-title pull-left" style="background-color: #efc73a;">
															<h3>创意礼品</h3>

															<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#child_sw_woo_slider_widget_2" aria-expanded="false">
																<span class="icon-bar"></span>
																<span class="icon-bar"></span>
																<span class="icon-bar"></span>
															</button>
														</div>

														<div class="box-title-right clearfix">
															<div class="childcat-content pull-left" id="child_sw_woo_slider_widget_2">
																<ul>
																	<li><a href="#">创意水晶灯</a></li>
																	<li><a href="#">创意情侣杯</a></li>
																	<li><a href="#">创意陶瓷</a></li>
																	<li><a href="#">创意水晶球</a></li>
																	<li><a href="#">创意手表</a></li>
																	<li><a href="#">创意抱枕</a></li>
																</ul>
															</div>

															<div class="view-all">
																<a href="#">
																	显示全部<i class="fa fa-caret-right"></i>
																</a>
															</div>
														</div>
													</div>

													<div class="content-slider">
														<div class="childcat-slider-content clearfix">
															<!-- Brand -->

															<div class="child-cat-brand pull-left">
															<div class="item-brand">
																	<a href="#">
																		<img style="width: 193px;height: 549px;" width="170" height="90" src="image/234.jpg" class="attachment-170x90 size-170x90" alt="" />
																	</a>
															</div>
															</div>

															<!-- slider content -->
															<div class="resp-slider-container">
																<div id="sliderresponsive3" class="slider responsive">




																</div>
															</div>
														</div>

														<div class="best-seller-product">
															<div class="box-slider-title">
																<h2 class="page-title-slider">热销排行</h2>
															</div>

															<div id="wrapcontent2" class="wrap-content">

															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>





					<!-- 节日庆典 -->
						<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
									<div class="wpb_column vc_column_container vc_col-sm-6">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_single_image wpb_content_element vc_align_center">
													<figure class="wpb_wrapper vc_figure">
														<a href="#" target="_self" class="vc_single_image-wrapper vc_box_border_grey">
															<img class="vc_single_image-img" src="image/banner-10.png" width="570" height="220" alt="banner6" title="banner6" />
														</a>
													</figure>
												</div>
											</div>
										</div>
									</div>

									<div class="wpb_column vc_column_container vc_col-sm-6">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_single_image wpb_content_element vc_align_center banner-none">
													<figure class="wpb_wrapper vc_figure">
														<a href="#" target="_self" class="vc_single_image-wrapper vc_box_border_grey">
															<img class="vc_single_image-img" src="image/banner11-1.jpg" width="570" height="220" alt="banner7" title="banner7" />
														</a>
													</figure>
												</div>
											</div>
										</div>
									</div>
								</div>


							<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
									<div class="wpb_column vc_column_container vc_col-sm-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div id="slider_sw_woo_slider_widget_2" class="responsive-slider woo-slider-default sw-child-cat clearfix" data-lg="3" data-md="3" data-sm="2" data-xs="2" data-mobile="1" data-speed="1000" data-scroll="1" data-interval="5000" data-autoplay="false">
													<div class="child-top clearfix" data-color="#f03442">
														<div class="box-title pull-left" style="background-color:#f03442;">
															<h3>节日庆典</h3>

															<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#child_sw_woo_slider_widget_2" aria-expanded="false">
																<span class="icon-bar"></span>
																<span class="icon-bar"></span>
																<span class="icon-bar"></span>
															</button>
														</div>

														<div class="box-title-right clearfix">
															<div class="childcat-content pull-left" id="child_sw_woo_slider_widget_2">
																<ul>
																	<li><a href="#">情人节</a></li>
																	<li><a href="#">圣诞节</a></li>
																	<li><a href="#">创意陶瓷</a></li>
																	<li><a href="#">创意水晶球</a></li>
																	<li><a href="#">创意手表</a></li>
																	<li><a href="#">创意抱枕</a></li>
																</ul>
															</div>

															<div class="view-all">
																<a href="#">
																	显示全部<i class="fa fa-caret-right"></i>
																</a>
															</div>
														</div>
													</div>

													<div class="content-slider">
														<div class="childcat-slider-content clearfix">
															<!-- Brand -->

															<div class="child-cat-brand pull-left">
															<div class="item-brand">
																	<a href="#">
																		<img style="width: 193px;height: 549px;" width="170" height="90" src="image/2.png" class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>



															</div>

															<!-- slider content -->
															<div class="resp-slider-container">
																<div id="sliderresponsive4" class="slider responsive">



																</div>
															</div>
														</div>

														<div class="best-seller-product">
															<div class="box-slider-title">
																<h2 class="page-title-slider">热销排行</h2>
															</div>

															<div id="wrapcontent3" class="wrap-content">




															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>







							<!--礼品用途模块-->
						<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
									<div class="wpb_column vc_column_container vc_col-sm-6">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_single_image wpb_content_element vc_align_center">
													<figure class="wpb_wrapper vc_figure">
														<a href="#" target="_self" class="vc_single_image-wrapper vc_box_border_grey">
															<img class="vc_single_image-img" src="image/banner8-1.png" width="570" height="220" alt="banner6" title="banner6" />
														</a>
													</figure>
												</div>
											</div>
										</div>
									</div>

									<div class="wpb_column vc_column_container vc_col-sm-6">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_single_image wpb_content_element vc_align_center banner-none">
													<figure class="wpb_wrapper vc_figure">
														<a href="#" target="_self" class="vc_single_image-wrapper vc_box_border_grey">
															<img class="vc_single_image-img" src="image/banner9-1.jpg" width="570" height="220" alt="banner7" title="banner7" />
														</a>
													</figure>
												</div>
											</div>
										</div>
									</div>
								</div>

							<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
									<div class="wpb_column vc_column_container vc_col-sm-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div id="slider_sw_woo_slider_widget_2" class="responsive-slider woo-slider-default sw-child-cat clearfix" data-lg="3" data-md="3" data-sm="2" data-xs="2" data-mobile="1" data-speed="1000" data-scroll="1" data-interval="5000" data-autoplay="false">
													<div class="child-top clearfix" data-color="#f034ca">
														<div class="box-title pull-left" style="background-color:#f034ca;">
															<h3>礼品用途</h3>
														<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#child_sw_woo_slider_widget_2" aria-expanded="false">
																<span class="icon-bar"></span>
																<span class="icon-bar"></span>
																<span class="icon-bar"></span>
															</button>
														</div>

														<div class="box-title-right clearfix">
															<div class="childcat-content pull-left" id="child_sw_woo_slider_widget_2">
																<ul>
																	<li><a href="#">商务礼品</a></li>
																	<li><a href="#">IT行业礼品</a></li>
																	<li><a href="#">学校礼品</a></li>
																	<li><a href="#">房地产礼品</a></li>
																	<li><a href="#">旅游礼品</a></li>
																	<li><a href="#">其他</a></li>
																</ul>
															</div>

															<div class="view-all">
																<a href="#">
																	显示全部<i class="fa fa-caret-right"></i>
																</a>
															</div>
														</div>
													</div>

													<div class="content-slider">
														<div class="childcat-slider-content clearfix">
															<!-- Brand -->

															<div class="child-cat-brand pull-left">
															<div class="item-brand">
																	<a href="#">
																		<img style="width: 193px;height: 549px;" width="170" height="90" src="image/store5-.png" class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>



															</div>

															<!-- slider content -->
															<div class="resp-slider-container">
																<div id="sliderresponsive5" class="slider responsive">




																</div>
															</div>
														</div>

														<div class="best-seller-product">
															<div class="box-slider-title">
																<h2 class="page-title-slider">热销排行</h2>
															</div>

															<div id="wrapcontent4" class="wrap-content">





															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>


							<!--礼品用途模块-->
						<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
									<div class="wpb_column vc_column_container vc_col-sm-6">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_single_image wpb_content_element vc_align_center">
													<figure class="wpb_wrapper vc_figure">
														<a href="#" target="_self" class="vc_single_image-wrapper vc_box_border_grey">
															<img class="vc_single_image-img" src="image/5-.png" width="570" height="220" alt="banner6" title="banner6" />
														</a>
													</figure>
												</div>
											</div>
										</div>
									</div>

									<div class="wpb_column vc_column_container vc_col-sm-6">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_single_image wpb_content_element vc_align_center banner-none">
													<figure class="wpb_wrapper vc_figure">
														<a href="#" target="_self" class="vc_single_image-wrapper vc_box_border_grey">
															<img class="vc_single_image-img" src="image/store4.jpg" width="570" height="220" alt="banner7" title="banner7" />
														</a>
													</figure>
												</div>
											</div>
										</div>
									</div>
								</div>


								<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
									<div class="wpb_column vc_column_container vc_col-sm-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div id="slider_sw_woo_slider_widget_2" class="responsive-slider woo-slider-default sw-child-cat clearfix" data-lg="3" data-md="3" data-sm="2" data-xs="2" data-mobile="1" data-speed="1000" data-scroll="1" data-interval="5000" data-autoplay="false">
													<div class="child-top clearfix" data-color="#7745bc">
														<div class="box-title pull-left" style="background-color:#7745bc;">
															<h3>专属定制</h3>

															<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#child_sw_woo_slider_widget_2" aria-expanded="false">
																<span class="icon-bar"></span>
																<span class="icon-bar"></span>
																<span class="icon-bar"></span>
															</button>
														</div>

														<div class="box-title-right clearfix">
															<div class="childcat-content pull-left" id="child_sw_woo_slider_widget_2">
																<ul>
																	<li><a href="#">定制情侣杯</a></li>
																	<li><a href="#">定制陶瓷</a></li>
																	<li><a href="#">定制手表</a></li>
																	<li><a href="#">定制抱枕</a></li>
																</ul>
															</div>

															<div class="view-all">
																<a href="#">
																	显示全部<i class="fa fa-caret-right"></i>
																</a>
															</div>
														</div>
													</div>

													<div class="content-slider">
														<div class="childcat-slider-content clearfix">
															<!-- Brand -->

															<div class="child-cat-brand pull-left">
															<div class="item-brand">
																	<a href="#">
																		<img style="width: 193px;height: 549px;" width="170" height="90" src="image/cart2-.png" class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>



															</div>

															<!-- slider content -->
															<div class="resp-slider-container">
																<div id="sliderresponsive6" class="slider responsive">


																</div>
															</div>
														</div>

														<div class="best-seller-product">
															<div class="box-slider-title">
																<h2 class="page-title-slider">热销排行</h2>
															</div>

															<div id="wrapcontent5" class="wrap-content">




															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>



								<div class="vc_row wpb_row vc_row-fluid">
									<div class="wpb_column vc_column_container vc_col-sm-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper"></div>
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
												<a class="item-link" href="about_us.jsp">
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

			<form  id="logindemo" method="post" class="login">
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


	<%--登陆js事件,登陆获取后台代码--%>

	<script src="<%= basePath %>/script/common/jquery-1.8.2.min.js"></script>
	<script src="<%= basePath %>/script/common/public.js"></script>
	<script src="<%= basePath %>/script/common/project.js"></script>

	<%--登陆连接数据库js--%>
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


			var usern='${sessionScope.get("usernick")}';
            var userid='${sessionScope.get("userid")}';

            if(usern!=''){
			$("#toplogin").hide();
			$("#topname").append("<div class=\"pull-left top1\" >" +
				"<div class=\"widget text-3 widget_text pull-left\">\n" +
                "<div class=\"widget-inner\">\n" +
                "<div class=\"textwidget\">\n" +
                "<div id=\"lang_sel\">\n" +
                "<a href=\"register.jsp\" style=\"color: white;\">用户:"+usern+"</a>\n" +
                "</div>\n" +
                "</div>\n" +
                "</div>\n" +
				"</div>\n" +
                "<div class=\"widget text-3 widget_text pull-left\">\n" +
                "<div class=\"widget-inner\">\n" +
                "<div class=\"textwidget\">\n" +
                "<div id=\"lang_sel\">\n" +
                "<a href=\"<%=basePath%>/liyi_sj/stage/esclogin.jsp\" onclick=\"escindex()\" style=\"color: white;\">退出登陆</a>\n" +
                "</div>\n" +
                "</div>\n" +
                "</div>\n" +
                "</div>"+
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

                    }
                    $("#pricecount").html("￥"+pricecount.toFixed(2));
                    $("#pricecount2").html("￥"+pricecount.toFixed(2));


                })



            }


		var start=0;
		var limit=6;
		var subcategory="礼";
		var model1=new Object();
		model1.limit=limit;
		model1.start=start;
		model1.subcategory=subcategory;
		var price=null;
		//热销礼品连接数据库
		doData("sj_commodity/getcomm",model1,function (data) {
			for (var i=0;i<6;i++){
					price=data.obj[i].price-(data.obj[i].price*0.1);
					price= price.toFixed(2);
                $("#sliderresponsive").append("<div class=\"item-countdown product \" id=\"product_sw_countdown_0\">\n" +
                    "<div class=\"item-wrap\">\n" +
                    "<div class=\"item-detail\">\n" +
                    "<div class=\"item-content\">\n" +
                    "<!-- rating  -->\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\">\n" +
                    "<span style=\"width:35px\"></span>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-number-rating\">"+data.obj[i].evcount+" 条评论(s)</div>\n" +
                    "</div>\n" +
                    "<!-- end rating  -->\n" +
                    "\n" +
                    "<h4>\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\" title=\"veniam dolore\">"+data.obj[i].commname+"</a>\n" +
					"</h4>\n" +
                    "\n" +
                    "<!-- Price -->\n" +
                    "<div class=\"item-price\">\n" +
                    "<span>\n" +
                    "<del>\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i].price+"\n" +
                    "</span>\n" +
                    "</del>\n" +
                    "\n" +
                    "<ins>\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+price+"\n" +
                    "</span>\n" +
                    "</ins>\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"sale-off\">-10%</div>\n" +
                    "\n" +
                    "<div class=\"product-countdown\" data-date=\"1519776000\" data-price=\"$250\" data-starttime=\"1483747200\" data-cdtime=\"1519776000\" data-id=\"product_sw_countdown_02\"></div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-image-countdown\">\n" +
                    "<span class=\"onsale\">Sale!</span>\n" +
                    "\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\">\n" +
                    "<div class=\"product-thumb-hover\">\n" +
                    "<img \twidth=\"300\" height=\"500\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image2+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].image2+" 300w, <%=basePath%>/uploadfiles/"+data.obj[i].image2+" 150w, <%=basePath%>/uploadfiles/"+data.obj[i].image2+" 180w, <%=basePath%>/uploadfiles/"+data.obj[i].image2+" 600w\"\n" +
                    "sizes=\"(max-width: 300px) 100vw, 300px\" />\n" +
                    "</div>\n" +
                    "</a>\n" +
                    "\n" +
                    "<!-- add to cart, wishlist, compare -->\n" +
                    "<div class=\"item-bottom clearfix\">\n" +
                    "<a rel=\"nofollow\" href=\"#\" class=\"button product_type_simple add_to_cart_button ajax_add_to_cart\" title=\"加入购物车\">加入购物车</a>\n" +
                    "\n" +
                    "<a href=\"javascript:void(0)\" class=\"compare button\" rel=\"nofollow\" title=\"Add to Compare\">Compare</a>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-add-to-wishlist add-to-wishlist-248\">\n" +
                    "<div class=\"yith-wcwl-add-button show\" style=\"display:block\">\n" +
                    "<a href=\"#\" rel=\"nofollow\" class=\"add_to_wishlist\">Add to Wishlist</a>\n" +
                    "<img src=\"images/wpspin_light.gif\" class=\"ajax-loading\" alt=\"loading\" width=\"16\" height=\"16\" style=\"visibility:hidden\" />\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistaddedbrowse hide\" style=\"display:none;\">\n" +
                    "<span class=\"feedback\">Product added!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistexistsbrowse hide\" style=\"display:none\">\n" +
                    "<span class=\"feedback\">The product is already in the wishlist!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div style=\"clear:both\"></div>\n" +
                    "<div class=\"yith-wcwl-wishlistaddresponse\"></div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"clear\"></div>\n" +
                    "<a href=\"#\"  class=\"sm_quickview_handler-list fancybox \">Quick View </a>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n");

			}
		})

		//精品推荐连接数据库js代码
        model1.subcategory="";
        doData("sj_commodity/getcomm",model1,function (data) {
            for(var i=0;i<6;i+=2) {

                $("#sliderreponsive2").append("<div class=\"item product\">\n" +
                    "<div class=\"item-wrap\">\n" +
                    "<div class=\"item-detail\">\n" +
                    "<div class=\"item-content\">\n" +
                    "<!-- rating  -->\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\">\n" +
                    "<span style=\"width:63px\"></span>\n" +
                    "</div>\n" +
                    "<div class=\"item-number-rating\">"+data.obj[i].evcount+"  条评论(s)</div>\n" +
                    "</div>\n" +
                    "<!-- end rating  -->\n" +
                    "\n" +
                    "<h4>\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\" title=\""+data.obj[i].commname+"\">"+data.obj[i].commname+"</a>\n" +
					"</h4>\n" +
                    "\n" +
                    "<!-- Price -->\n" +
                    "<div class=\"item-price\">\n" +
                    "<span>\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i].price+"\n" +
                    "</span>\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-img products-thumb\">\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\">\n" +
                    "<div class=\"product-thumb-hover\">\n" +
                    "<img \twidth=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 300w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 150w,<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 180w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 600w\"\n" +
                    "sizes=\"(max-width: 300px) 100vw, 300px\" />\n" +
                    "</div>\n" +
                    "</a>\n" +
                    "<div class=\"item-bottom clearfix\">\n" +
                    "<a rel=\"nofollow\" href=\"#\" class=\"button product_type_simple add_to_cart_button ajax_add_to_cart\" title=\"加入购物车\">Add to cart</a>\n" +
                    "\n" +
                    "<a href=\"javascript:void(0)\" class=\"compare button\" rel=\"nofollow\" title=\"Add to Compare\">Compare</a>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-add-to-wishlist add-to-wishlist-248\">\n" +
                    "<div class=\"yith-wcwl-add-button show\" style=\"display:block\">\n" +
                    "<a href=\"#\" rel=\"nofollow\" class=\"add_to_wishlist\">Add to Wishlist</a>\n" +
                    "<img src=\"images/wpspin_light.gif\" class=\"ajax-loading\" alt=\"loading\" width=\"16\" height=\"16\" style=\"visibility:hidden\" />\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistaddedbrowse hide\" style=\"display:none;\">\n" +
                    "<span class=\"feedback\">Product added!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistexistsbrowse hide\" style=\"display:none\">\n" +
                    "<span class=\"feedback\">The product is already in the wishlist!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div style=\"clear:both\"></div>\n" +
                    "<div class=\"yith-wcwl-wishlistaddresponse\"></div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"clear\"></div>\n" +
                    "<a href=\"#\" class=\"sm_quickview_handler-list fancybox \">Quick View </a>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-wrap\">\n" +
                    "<div class=\"item-detail\">\n" +
                    "<div class=\"item-content\">\n" +
                    "<!-- rating  -->\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\">\n" +
                    "<span style=\"width:63px\"></span>\n" +
                    "</div>\n" +
                    "<div class=\"item-number-rating\">"+data.obj[i+1].evcount+"  条评论(s)</div>\n" +
                    "</div>\n" +
                    "<!-- end rating  -->\n" +
                    "\n" +
                    "<h4>\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i+1].comid+"&type=2\" title=\"veniam dolore\">"+data.obj[i+1].commname+"</a>\n" +
					"</h4>\n" +
                    "\n" +
                    "<!-- Price -->\n" +
                    "<div class=\"item-price\">\n" +
                    "<span>\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i+1].price+"\n" +
                    "</span>\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-img products-thumb\">\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i+1].comid+"&type=2\">\n" +
                    "<div class=\"product-thumb-hover\">\n" +
                    "<img \twidth=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i+1].image1+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i+1].image1+",<%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 150w, <%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 180w, <%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 600w\"\n" +
                    "sizes=\"(max-width: 300px) 100vw, 300px\" />\n" +
                    "</div>\n" +
                    "</a>\n" +
                    "\n" +
                    "<!-- add to cart, wishlist, compare -->\n" +
                    "<div class=\"item-bottom clearfix\">\n" +
                    "<a rel=\"nofollow\" href=\"#\" class=\"button product_type_simple add_to_cart_button ajax_add_to_cart\" title=\"Add to Cart\">Add to cart</a>\n" +
                    "\n" +
                    "<a href=\"javascript:void(0)\" class=\"compare button\" rel=\"nofollow\" title=\"Add to Compare\">Compare</a>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-add-to-wishlist add-to-wishlist-248\">\n" +
                    "<div class=\"yith-wcwl-add-button show\" style=\"display:block\">\n" +
                    "<a href=\"#\" rel=\"nofollow\" class=\"add_to_wishlist\">Add to Wishlist</a>\n" +
                    "<img src=\"images/wpspin_light.gif\" class=\"ajax-loading\" alt=\"loading\" width=\"16\" height=\"16\" style=\"visibility:hidden\" />\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistaddedbrowse hide\" style=\"display:none;\">\n" +
                    "<span class=\"feedback\">Product added!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistexistsbrowse hide\" style=\"display:none\">\n" +
                    "<span class=\"feedback\">The product is already in the wishlist!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div style=\"clear:both\"></div>\n" +
                    "<div class=\"yith-wcwl-wishlistaddresponse\"></div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"clear\"></div>\n" +
                    "<a href=\"#\"  class=\"sm_quickview_handler-list fancybox\">Quick View </a>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n");
            }
        });

        //优选店铺
		var storename="";
        model1.storename=storename;
		doData("sj_store/getstoreview",model1,function(data){
		    for(var i=0;i<4 ;i++) {
                $("#wrapcontent").append("<div class=\"item\">\n" +
                    "<div class=\"item-inner\">\n" +
                    "<img style=\"widows: 110px; height: 30px;\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].storeimage+"\" />\n" +
                    "<div class=\"item-img\">\n" +
                    "<a href=\"simple_product.jsp?storeid="+data.obj[i].id+"\" title=\""+data.obj[i].storename+"\">\n" +
                    "<img \twidth=\"180\" height=\"180\" src=\"image/131.jpg\" class=\"attachment-shop_thumbnail size-shop_thumbnail wp-post-image\" alt=\"\"\n" +
                    "srcset=\"image/131.jpg 180w, image/131.jpg 150w, image/131.jpg 300w, image/131.jpg 600w\"\n" +
                    "sizes=\"(max-width: 180px) 100vw, 180px\" />\n" +
                    "</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<!--<div class=\"item-sl pull-left\">2</div>-->\n" +
                    "\n" +
                    "<div class=\"item-content\">\n" +
                    "<!-- rating  -->\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\">\n" +
                    "<span style=\"width:54px\"></span>\n" +
                    "</div>\n" +
                    "<div class=\"item-number-rating\">销售量："+data.obj[i].storecount+"</div>\n" +
                    "</div>\n" +
                    "<!-- end rating  -->\n" +
                    "\n" +
                    "<h4>\n" +
                    "<a href=\"simple_product.jsp\" title=\""+data.obj[i].storename+"\">"+data.obj[i].storename+"</a>\n" +
					"</h4>\n" +
                    "\n" +
                    "\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>");


            }


		})

		//创意礼品(数据暂无,待添加)--------------------------------------------------------------
        model1.subcategory="创意礼品";
        doData("sj_commodity/getcomm",model1,function(data) {
            for (var i=0;i<6;i+=2) {
                $("#sliderresponsive3").append("<div class=\"item product\">\n" +
                    "<div class=\"item-wrap\">\n" +
                    "<div class=\"item-detail\">\n" +
                    "<div class=\"item-content\">\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\"></div>\n" +
                    "<div class=\"item-number-rating\">"+data.obj[i].evcount+" 条评论(s)</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<h4>\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\" title=\"12321\">"+data.obj[i].commname+"</a>\n" +
					"</h4>\n" +
                    "\n" +
                    "<div class=\"item-price\">\n" +
                    "<span>\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i].price+"\n" +
                    "</span>\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-img products-thumb\">\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\">\n" +
                    "<div class=\"product-thumb-hover\">\n" +
                    "<img \twidth=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 300w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 150w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 180w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 600w\"\n" +
                    "sizes=\"(max-width: 300px) 100vw, 300px\" />\n" +
                    "</div>\n" +
                    "</a>\n" +
                    "\n" +
                    "<div class=\"item-bottom clearfix\">\n" +
                    "<a rel=\"nofollow\" href=\"#\" class=\"button product_type_simple add_to_cart_button ajax_add_to_cart\" title=\"Add to Cart\">Add to cart</a>\n" +
                    "\n" +
                    "<a href=\"javascript:void(0)\" class=\"compare button\" rel=\"nofollow\" title=\"Add to Compare\">Compare</a>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-add-to-wishlist add-to-wishlist-248\">\n" +
                    "<div class=\"yith-wcwl-add-button show\" style=\"display:block\">\n" +
                    "<a href=\"#\" rel=\"nofollow\" class=\"add_to_wishlist\">Add to Wishlist</a>\n" +
                    "<img src=\"images/wpspin_light.gif\" class=\"ajax-loading\" alt=\"loading\" width=\"16\" height=\"16\" style=\"visibility:hidden\" />\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistaddedbrowse hide\" style=\"display:none;\">\n" +
                    "<span class=\"feedback\">Product added!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistexistsbrowse hide\" style=\"display:none\">\n" +
                    "<span class=\"feedback\">The product is already in the wishlist!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div style=\"clear:both\"></div>\n" +
                    "<div class=\"yith-wcwl-wishlistaddresponse\"></div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"clear\"></div>\n" +
                    "<a href=\"#\"  class=\"sm_quickview_handler-list fancybox\">Quick View </a>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-wrap\">\n" +
                    "<div class=\"item-detail\">\n" +
                    "<div class=\"item-content\">\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\">\n" +
                    "</div>\n" +
                    "<div class=\"item-number-rating\">"+data.obj[i+1].evcount+" 条评论(s)</div>\n" +
                    "</div>\n" +
                    "<h4>\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i+1].comid+"&type=2\" title=\"veniam dolore\">"+data.obj[i+1].commname+"</a>\n" +
					"</h4>\n" +
                    "<div class=\"item-price\">\n" +
                    "<span>\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i+1].price+"\n" +
                    "</span>\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "<div class=\"item-img products-thumb\">\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i+1].comid+"&type=2\">\n" +
                    "<div class=\"product-thumb-hover\">\n" +
                    "<img \twidth=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i+1].image1+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 300w, <%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 150w, <%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 180w,<%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 600w \"\n" +
                    "sizes=\"(max-width: 300px) 100vw, 300px\" />\n" +
                    "</div>\n" +
                    "</a>\n" +
                    "<div class=\"item-bottom clearfix\">\n" +
                    "<a rel=\"nofollow\" href=\"#\" class=\"button product_type_simple add_to_cart_button ajax_add_to_cart\" title=\"Add to Cart\">Add to cart</a>\n" +
                    "<a href=\"javascript:void(0)\" class=\"compare button\" rel=\"nofollow\" title=\"Add to Compare\">Compare</a>\n" +
                    "<div class=\"yith-wcwl-add-to-wishlist add-to-wishlist-248\">\n" +
                    "<div class=\"yith-wcwl-add-button show\" style=\"display:block\">\n" +
                    "<a href=\"#\" rel=\"nofollow\" class=\"add_to_wishlist\">Add to Wishlist</a>\n" +
                    "<img src=\"images/wpspin_light.gif\" class=\"ajax-loading\" alt=\"loading\" width=\"16\" height=\"16\" style=\"visibility:hidden\" />\n" +
                    "</div>\n" +
                    "<div class=\"yith-wcwl-wishlistaddedbrowse hide\" style=\"display:none;\">\n" +
                    "<span class=\"feedback\">计入购物车</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "<div class=\"yith-wcwl-wishlistexistsbrowse hide\" style=\"display:none\">\n" +
                    "<span class=\"feedback\">The product is already in the wishlist!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "<div style=\"clear:both\"></div>\n" +
                    "<div class=\"yith-wcwl-wishlistaddresponse\"></div>\n" +
                    "</div>\n" +
                    "<a href=\"#\"  class=\"sm_quickview_handler-list fancybox \">查看</a>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n")

            }

        });


        model1.subcategory="创意礼品";
        //(数据暂无,待添加)--------------------------------------------------------------
        doData("sj_commodity/getcomm",model1,function(data) {
            for (var i =0; i <5; i++) {
                $("#wrapcontent2").append("<div class=\"item\">\n" +
                    "<div class=\"item-inner\">\n" +
                    "<div class=\"item-img\">\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\" >\n" +
                    "<img \twidth=\"180\" height=\"180\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+"\" class=\"attachment-shop_thumbnail size-shop_thumbnail wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 180w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 150w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 300w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 600w\"\n" +
                    "sizes=\"(max-width: 180px) 100vw, 180px\" />\n" +
                    "</a>\n" +
                    "</div>\n" +
                    "<div class=\"item-sl pull-left\">"+(i+1)+"</div>\n" +
                    "<div class=\"item-content\">\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\"></div>\n" +
                    "<div class=\"item-number-rating\">"+data.obj[i].evcount+" 条评论(s)</div>\n" +
                    "</div>\n" +
                    "<h4>\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\">"+data.obj[i].commname+"</a>\n" +
					"</h4>\n" +
                    "\n" +
                    "<div class=\"item-price\">\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i].price+"\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>");

            }
        });


        model1.subcategory="节日庆典";
        //(数据暂无,待添加)--------------------------------------------------------------
        doData("sj_commodity/getcomm",model1,function(data) {
            for (var i = 0; i < 6; i += 2) {
                $("#sliderresponsive4").append("<div class=\"item product\">\n" +
                    "<div class=\"item-wrap\">\n" +
                    "<div class=\"item-detail\">\n" +
                    "<div class=\"item-content\">\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\">\n" +
                    "<span style=\"width:63px\"></span>\n" +
                    "</div>\n" +
                    "<div class=\"item-number-rating\">"+data.obj[i].evcount+" 条评论(s)</div>\n" +
                    "</div>\n" +
                    "<h4>\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\" title=\""+data.obj[i].commname+"\">"+data.obj[i].commname+"</a>\n" +
					"</h4>\n" +
                    "<div class=\"item-price\">\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i].price+"\n" +
                    "</span>\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-img products-thumb\">\n" +
                    "<span class=\"onsale\">Sale!</span>\n" +
                    "\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\">\n" +
                    "<div class=\"product-thumb-hover\">\n" +
                    "<img \twidth=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 300w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 150w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 180w,<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 600w\"\n" +
                    "sizes=\"(max-width: 300px) 100vw, 300px\" />\n" +
                    "</div>\n" +
                    "</a>\n" +
                    "<div class=\"item-bottom clearfix\">\n" +
                    "<a rel=\"nofollow\" href=\"#\" class=\"button product_type_simple add_to_cart_button ajax_add_to_cart\" title=\"Add to Cart\">Add to cart</a>\n" +
                    "<a href=\"javascript:void(0)\" class=\"compare button\" rel=\"nofollow\" title=\"Add to Compare\">Compare</a>\n" +
                    "<div class=\"yith-wcwl-add-to-wishlist add-to-wishlist-248\">\n" +
                    "<div class=\"yith-wcwl-add-button show\" style=\"display:block\">\n" +
                    "<a href=\"#\" rel=\"nofollow\" class=\"add_to_wishlist\">Add to Wishlist</a>\n" +
                    "<img src=\"images/wpspin_light.gif\" class=\"ajax-loading\" alt=\"loading\" width=\"16\" height=\"16\" style=\"visibility:hidden\" />\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistaddedbrowse hide\" style=\"display:none;\">\n" +
                    "<span class=\"feedback\">Product added!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistexistsbrowse hide\" style=\"display:none\">\n" +
                    "<span class=\"feedback\">The product is already in the wishlist!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div style=\"clear:both\"></div>\n" +
                    "<div class=\"yith-wcwl-wishlistaddresponse\"></div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"clear\"></div>\n" +
                    "\n" +
                    "<a href=\"#\"  class=\"sm_quickview_handler-list fancybox\">Quick View </a>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-wrap\">\n" +
                    "<div class=\"item-detail\">\n" +
                    "<div class=\"item-content\">\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\"></div>\n" +
                    "<div class=\"item-number-rating\">"+data.obj[i+1].evcount+" 条评论(s)</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<h4>\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i+1].commid+"\" title=\""+data.obj[i+1].commname+"\">"+data.obj[i+1].commname+"</a>\n" +
					"</h4>\n" +
                    "\n" +
                    "<div class=\"item-price\">\n" +
                    "<span>\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i+1].price+"\n" +
                    "</span>\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-img products-thumb\">\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i+1].comid+"&type=2\">\n" +
                    "<div class=\"product-thumb-hover\">\n" +
                    "<img \twidth=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i+1].image1+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 300w, <%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 150w, <%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 180w, <%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 600w\"\n" +
                    "sizes=\"(max-width: 300px) 100vw, 300px\" />\n" +
                    "</div>\n" +
                    "</a>\n" +
                    "\n" +
                    "<div class=\"item-bottom clearfix\">\n" +
                    "<a rel=\"nofollow\" href=\"#\" class=\"button product_type_simple add_to_cart_button ajax_add_to_cart\" title=\"Add to Cart\">Add to cart</a>\n" +
                    "\n" +
                    "<a href=\"javascript:void(0)\" class=\"compare button\" rel=\"nofollow\" title=\"Add to Compare\">Compare</a>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-add-to-wishlist add-to-wishlist-248\">\n" +
                    "<div class=\"yith-wcwl-add-button show\" style=\"display:block\">\n" +
                    "<a href=\"#\" rel=\"nofollow\" class=\"add_to_wishlist\">Add to Wishlist</a>\n" +
                    "<img src=\"images/wpspin_light.gif\" class=\"ajax-loading\" alt=\"loading\" width=\"16\" height=\"16\" style=\"visibility:hidden\" />\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistaddedbrowse hide\" style=\"display:none;\">\n" +
                    "<span class=\"feedback\">Product added!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistexistsbrowse hide\" style=\"display:none\">\n" +
                    "<span class=\"feedback\">The product is already in the wishlist!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div style=\"clear:both\"></div>\n" +
                    "<div class=\"yith-wcwl-wishlistaddresponse\"></div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"clear\"></div>\n" +
                    "<a href=\"#\"  class=\"sm_quickview_handler-list fancybox \">Quick View </a>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n")


            }
        });

        model1.subcategory="节日庆典";
        //(数据暂无,待添加)--------------------------------------------------------------
        doData("sj_commodity/getcomm",model1,function(data) {
            for (var i =0; i < 3; i++) {
            $("#wrapcontent3").append("<div class=\"item\">\n" +
                "<div class=\"item-inner\">\n" +
                "<div class=\"item-img\">\n" +
                "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\">\n" +
                "<img \twidth=\"180\" height=\"180\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image2+"\" class=\"attachment-shop_thumbnail size-shop_thumbnail wp-post-image\" alt=\"\"\n" +
                "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].image2+" 180w,<%=basePath%>/uploadfiles/"+data.obj[i].image2+" 150w,<%=basePath%>/uploadfiles/"+data.obj[i].image2+" 300w,<%=basePath%>/uploadfiles/"+data.obj[i].image2+" 600w\"\n" +
                "sizes=\"(max-width: 180px) 100vw, 180px\" />\n" +
                "</a>\n" +
                "</div>\n" +
                "\n" +
                "<div class=\"item-sl pull-left\">"+i+"</div>\n" +
                "\n" +
                "<div class=\"item-content\">\n" +
                "<div class=\"reviews-content\">\n" +
                "<div class=\"star\"></div>\n" +
                "<div class=\"item-number-rating\">"+data.obj[i].evcount+" 条评论(s)</div>\n" +
                "</div>\n" +
                "\n" +
                "<h4>\n" +
                "<a href=\"simple_product.jsp?cmoid="+data.obj[i].comid+"&type=2\">"+data.obj[i].commname+"</a>\n" +
				"</h4>\n" +
                "\n" +
                "<div class=\"item-price\">\n" +
                "<del>\n" +
                "<span class=\"woocommerce-Price-amount amount\">\n" +
                "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i].price+"\n" +
                "</span>\n" +
                "</del>\n" +
                "\n" +
                "<ins>\n" +
                "<span class=\"woocommerce-Price-amount amount\">\n" +
                "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i].price+"\n" +
                "</span>\n" +
                "</ins>\n" +
                "</div>\n" +
                "</div>\n" +
                "</div>\n" +
                "</div>");

            }
        });


        model1.subcategory="礼物用途";
        //(数据暂无,待添加)--------------------------------------------------------------
        doData("sj_commodity/getcomm",model1,function(data) {
            for (var i = 0; i < 6; i += 2) {
                $("#sliderresponsive5").append("<div class=\"item product\">\n" +
                    "<div class=\"item-wrap\">\n" +
                    "<div class=\"item-detail\">\n" +
                    "<div class=\"item-content\">\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\"></div>\n" +
                    "<div class=\"item-number-rating\">"+data.obj[i].evcount+" 条评论(s)</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<h4>\n" +

                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\" title=\"Samsung SUHD\">"+data.obj[i].commname+"</a>\n" +
					"</h4>\n" +
                    "<div class=\"item-price\">\n" +
                    "<span>\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i].price+"\n" +
                    "</span>\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "<div class=\"item-img products-thumb\">\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\">\n" +
                    "<div class=\"product-thumb-hover\">\n" +
                    "<img \twidth=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 300w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 150w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 180w,<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 600w\"\n" +
                    "sizes=\"(max-width: 300px) 100vw, 300px\" />\n" +
                    "</div>\n" +
                    "</a>\n" +
                    "<div class=\"item-bottom clearfix\">\n" +
                    "<a rel=\"nofollow\" href=\"#\" class=\"button product_type_simple add_to_cart_button ajax_add_to_cart\" title=\"Add to Cart\">Add to cart</a>\n" +
                    "<a href=\"javascript:void(0)\" class=\"compare button\" rel=\"nofollow\" title=\"Add to Compare\">Compare</a>\n" +
                    "<div class=\"yith-wcwl-add-to-wishlist add-to-wishlist-248\">\n" +
                    "<div class=\"yith-wcwl-add-button show\" style=\"display:block\">\n" +
                    "<a href=\"#\" rel=\"nofollow\" class=\"add_to_wishlist\">Add to Wishlist</a>\n" +
                    "<img src=\"images/wpspin_light.gif\" class=\"ajax-loading\" alt=\"loading\" width=\"16\" height=\"16\" style=\"visibility:hidden\" />\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistaddedbrowse hide\" style=\"display:none;\">\n" +
                    "<span class=\"feedback\">Product added!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistexistsbrowse hide\" style=\"display:none\">\n" +
                    "<span class=\"feedback\">The product is already in the wishlist!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div style=\"clear:both\"></div>\n" +
                    "<div class=\"yith-wcwl-wishlistaddresponse\"></div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"clear\"></div>\n" +
                    "<a href=\"#\" data-fancybox-type=\"ajax\" class=\"sm_quickview_handler-list fancybox fancybox.ajax\">Quick View </a>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-wrap\">\n" +
                    "<div class=\"item-detail\">\n" +
                    "<div class=\"item-content\">\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\"></div>\n" +
                    "<div class=\"item-number-rating\">"+data.obj[i+1].evcount+" 条评论(s)</div>\n" +
                    "</div>\n" +
                    "<h4>\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i+1].comid +"\" title=\"nisi ball tip\">"+data.obj[i+1].commname+"</a>\n" +
					"</h4>\n" +
                    "<div class=\"item-price\">\n" +

                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i+1].price+"\n" +
                    "</span>\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "<div class=\"item-img products-thumb\">\n" +
                    "<span class=\"onsale\">Sale!</span>\n" +
                    "\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i+1].comid+"&type=2\">\n" +
                    "<div class=\"product-thumb-hover\">\n" +
                    "<img \twidth=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i+1].image1+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 300w, <%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 150w, <%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 180w, <%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 600w\"\n" +
                    "sizes=\"(max-width: 300px) 100vw, 300px\" />\n" +
                    "</div>\n" +
                    "</a>\n" +
                    "<div class=\"item-bottom clearfix\">\n" +
                    "<a rel=\"nofollow\" href=\"#\" class=\"button product_type_simple add_to_cart_button ajax_add_to_cart\" title=\"Add to Cart\">Add to cart</a>\n" +
                    "\n" +
                    "<a href=\"javascript:void(0)\" class=\"compare button\" rel=\"nofollow\" title=\"Add to Compare\">Compare</a>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-add-to-wishlist add-to-wishlist-248\">\n" +
                    "<div class=\"yith-wcwl-add-button show\" style=\"display:block\">\n" +
                    "<a href=\"#\" rel=\"nofollow\" class=\"add_to_wishlist\">Add to Wishlist</a>\n" +
                    "<img src=\"images/wpspin_light.gif\" class=\"ajax-loading\" alt=\"loading\" width=\"16\" height=\"16\" style=\"visibility:hidden\" />\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistaddedbrowse hide\" style=\"display:none;\">\n" +
                    "<span class=\"feedback\">Product added!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistexistsbrowse hide\" style=\"display:none\">\n" +
                    "<span class=\"feedback\">The product is already in the wishlist!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div style=\"clear:both\"></div>\n" +
                    "<div class=\"yith-wcwl-wishlistaddresponse\"></div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"clear\"></div>\n" +
                    "<a href=\"#\" data-fancybox-type=\"ajax\" class=\"sm_quickview_handler-list fancybox fancybox.ajax\">Quick View </a>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>");

            }
        })

        model1.subcategory="礼物用途";
        //(数据暂无,待添加)--------------------------------------------------------------
        doData("sj_commodity/getcomm",model1,function(data) {
            for (var i = 0; i < 3; i++) {
                $("#wrapcontent4").append("<div class=\"item\">\n" +
                    "<div class=\"item-inner\">\n" +
                    "<div class=\"item-img\">\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\">\n" +
                    "<img \twidth=\"180\" height=\"180\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image2+"\" class=\"attachment-shop_thumbnail size-shop_thumbnail wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].image2+" 180w, <%=basePath%>/uploadfiles/"+data.obj[i].image2+" 150w, <%=basePath%>/uploadfiles/"+data.obj[i].image2+" 300w,<%=basePath%>/uploadfiles/"+data.obj[i].image2+" 600w\"\n" +
                    "sizes=\"(max-width: 180px) 100vw, 180px\" />\n" +
                    "</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-sl pull-left\">2</div>\n" +
                    "\n" +
                    "<div class=\"item-content\">\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\"></div>\n" +
                    "<div class=\"item-number-rating\">"+data.obj[i].evcount+" 条评论(s)</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<h4>\n" +
                    "<div style=\"width:130px;overflow: hidden;text-overflow:ellipsis;white-space: nowrap;\">" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\">"+data.obj[i].commname+"</a>\n" +
                    "</div>" +
					"</h4>\n" +
                    "\n" +
                    "<div class=\"item-price\">\n" +
                    "<del>\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i].price+"\n" +
                    "</span>\n" +
                    "</del>\n" +
                    "\n" +
                    "<ins>\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i].price+"\n" +
                    "</span>\n" +
                    "</ins>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>");
            }
        })


        model1.subcategory="专属定制";
        //(数据暂无,待添加)--------------------------------------------------------------
        doData("sj_commodity/getcomm",model1,function(data) {
            for (var i = 0; i < 6; i += 2) {
                $("#sliderresponsive6").append("<div class=\"item product\">\n" +
                    "<div class=\"item-wrap\">\n" +
                    "<div class=\"item-detail\">\n" +
                    "<div class=\"item-content\">\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\"></div>\n" +
                    "<div class=\"item-number-rating\">"+data.obj[i].evcount+" 条评论(s)</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<h4>\n" +

                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\" title=\""+data.obj[i].commname+"\">"+data.obj[i].commname+"</a>\n" +
					"</h4>\n" +
                    "<div class=\"item-price\">\n" +
                    "<span>\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i].price+"\n" +
                    "</span>\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "<div class=\"item-img products-thumb\">\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid +"&type=2\">\n" +
                    "<div class=\"product-thumb-hover\">\n" +
                    "<img \twidth=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 300w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 150w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 180w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 600w\"\n" +
                    "sizes=\"(max-width: 300px) 100vw, 300px\" />\n" +
                    "</div>\n" +
                    "</a>\n" +
                    "<div class=\"item-bottom clearfix\">\n" +
                    "<a rel=\"nofollow\" href=\"#\" class=\"button product_type_simple add_to_cart_button \" title=\"Add to Cart\">Add to cart</a>\n" +
                    "<a href=\"javascript:void(0)\" class=\"compare button\" rel=\"nofollow\" title=\"Add to Compare\">Compare</a>\n" +
                    "<div class=\"yith-wcwl-add-to-wishlist add-to-wishlist-248\">\n" +
                    "<div class=\"yith-wcwl-add-button show\" style=\"display:block\">\n" +
                    "<a href=\"javascript:void(0)\" rel=\"nofollow\" class=\"\">Add to Wishlist</a>\n" +
					"<img src=\"images/wpspin_light.gif\" class=\"ajax-loading\" alt=\"loading\" width=\"16\" height=\"16\" style=\"visibility:hidden\" />\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistaddedbrowse hide\" style=\"display:none;\">\n" +
                    "<span class=\"feedback\">加入收藏!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistexistsbrowse hide\" style=\"display:none\">\n" +
                    "<span class=\"feedback\">The product is already in the wishlist!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div style=\"clear:both\"></div>\n" +
                    "<div class=\"yith-wcwl-wishlistaddresponse\"></div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"clear\"></div>\n" +
                    "<a href=\"#\" class=\"sm_quickview_handler-list fancybox\">Quick View </a>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-wrap\">\n" +
                    "<div class=\"item-detail\">\n" +
                    "<div class=\"item-content\">\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\"></div>\n" +
                    "<div class=\"item-number-rating\">"+data.obj[i+1].evcount+" 条评论(s)</div>\n" +
                    "</div>\n" +
                    "<h4>\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i+1].comid+"&type=2\" title=\""+data.obj[i+1].commname+"\">"+data.obj[i+1].commname+"</a>\n" +
					"</h4>\n" +
                    "<div class=\"item-price\">\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i+1].price+"\n" +
                    "</span>\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "<div class=\"item-img products-thumb\">\n" +
                    "<span class=\"onsale\">Sale!</span>\n" +
                    "\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i+1].comid+"&type=2\">\n" +
                    "<div class=\"product-thumb-hover\">\n" +
                    "<img \twidth=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i+1].image1+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 300w, <%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 150w, <%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 180w, <%=basePath%>/uploadfiles/"+data.obj[i+1].image1+" 600w\"\n" +
                    "sizes=\"(max-width: 300px) 100vw, 300px\" />\n" +
                    "</div>\n" +
                    "</a>\n" +
                    "<div class=\"item-bottom clearfix\">\n" +
                    "<a  href=\"#\" class=\"button product_type_simple add_to_cart_button \" title=\"Add to Cart\">Add to cart</a>\n" +
                    "\n" +
                    "<a href=\"javascript:void(0)\" class=\"compare button\" rel=\"nofollow\" title=\"Add to Compare\">Compare</a>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-add-to-wishlist add-to-wishlist-248\">\n" +
                    "<div class=\"yith-wcwl-add-button show\" style=\"display:block\">\n" +
                    "<a href=\"#\" rel=\"nofollow\" class=\"add_to_wishlist\">Add to Wishlist</a>\n" +
                    "<img src=\"images/wpspin_light.gif\" class=\"ajax-loading\" alt=\"loading\" width=\"16\" height=\"16\" style=\"visibility:hidden\" />\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistaddedbrowse hide\" style=\"display:none;\">\n" +
                    "<span class=\"feedback\">加入收藏!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"yith-wcwl-wishlistexistsbrowse hide\" style=\"display:none\">\n" +
                    "<span class=\"feedback\">The product is already in the wishlist!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div style=\"clear:both\"></div>\n" +
                    "<div class=\"yith-wcwl-wishlistaddresponse\"></div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"clear\"></div>\n" +
                    "<a href=\"#\"  class=\"sm_quickview_handler-list fancybox\">Quick View </a>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>");

            }
        })


        model1.subcategory="专属定制";
//(数据暂无,待添加)--------------------------------------------------------------
		doData("sj_commodity/getcomm",model1,function (data) {
		    for (var i=0;i<5;i++) {
                $("#wrapcontent5").append("<div class=\"item\">\n" +
                    "<div class=\"item-inner\">\n" +
                    "<div class=\"item-img\">\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\">\n" +
                    "<img \twidth=\"180\" height=\"180\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+"\" class=\"attachment-shop_thumbnail size-shop_thumbnail wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 180w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 150w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 300w,<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 600w\"\n" +
                    "sizes=\"(max-width: 180px) 100vw, 180px\" />\n" +
                    "</a>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-sl pull-left\">"+(i+1)+"</div>\n" +
                    "\n" +
                    "<div class=\"item-content\">\n" +
                    "<!-- rating  -->\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\"></div>\n" +
                    "<div class=\"item-number-rating\">"+data.obj[i].evcount+" 条评论(s)</div>\n" +
                    "</div>\n" +
                    "<!-- end rating  -->\n" +
                    "\n" +
                    "<h4>\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\">"+data.obj[i].commname+"</a>\n" +
					"</h4>\n" +
                    "\n" +
                    "<div class=\"item-price\">\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i].price+"\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n")
            }
        })


		//商品触摸的四个小功能


		function addcart(comid) {
			var addcartobj=new Object();
			addcartobj.c_id=comid;
			addcartobj.u_id=userid
		    doData("",addcartobj,function (data) {


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
