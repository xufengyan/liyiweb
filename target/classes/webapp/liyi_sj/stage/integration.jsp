﻿

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>积分商城</title>
	<meta charset="utf-8" />

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<!-- GOOGLE WEB FONTS -->
	<link rel="stylesheet" href="css/font-awesome.min.css">

	<!-- BOOTSTRAP 3.3.7 CSS -->
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
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
	<link rel="stylesheet" href="" id="rtl" />
	<link rel="stylesheet" href="css/app-responsive.css" />
	<style>
		.sw-child-cat .child-top .box-title h3:after{
			bottom: 0px;
		}
		.products-loop.grid li .products-entry .item-detail:hover{
			box-shadow: white 0px 0px 0px 200px inset;
		}
		.sw-child-cat .childcat-slider-content .resp-slider-container .slider .slick-list .slick-track .item-wrap .item-detail .item-img.products-thumb{
			opacity:0.8;
			filter:alpha(opacity=80);
		}
		.sw-child-cat .childcat-slider-content .resp-slider-container .slider .slick-list .slick-track .item-wrap .item-detail .item-img.products-thumb:hover{
			opacity:1.0;
			filter:alpha(opacity=100);
		}


	</style>
</head>

<body class="page woocommerce-checkout woocommerce-page">
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
	<!--  大图  -->
	<img src="image/jifen.jpg" style="width: 100%;">
	<div class="container">
		<div class="row">
			<div id="contents" role="main" class="main-page  col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin-top:20px;">
				<h3 style="color: grey; padding-top:10px;padding-left: 20px;">
					<span style="color:black" id="usernickname"></span>当前积分:<span style="color: red;font-size: 29px" id="intenumber"></span>

				</h3>
				<!-- 热兑礼品 -->
				<div id="slider_sw_woo_slider_widget_1" class="responsive-slider woo-slider-default sw-child-cat clearfix" data-lg="3" data-md="3" data-sm="2" data-xs="2" data-mobile="1" data-speed="1000" data-scroll="1" data-interval="5000" data-autoplay="false">
					<div class="child-top clearfix" data-color="#c95dfa">
						<div class="box-title pull-left" style="background-color:#efefef; border-top:4px solid #c95dfa;">
							<h3 style="color:#c95dfa;">限时兑换</h3>
						</div>
						<div class="box-title-right clearfix" style="overflow: visible;">
							<div class="view-all">
								<a href="javascript:void(0);"><i class="fa  fa-caret-right" style="color:#EFEFEF;"></i></a>
							</div>
						</div>
					</div>
					<div class="products-wrapper">
						<ul id="integraldiv" class="products-loop row grid clearfix">
							<%--<li class="item col-lg-3 col-md-3 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">--%>
								<%--<div class="products-entry item-wrap clearfix">--%>
									<%--<div class="item-detail">--%>
										<%--<div class="item-img products-thumb">--%>
											<%--<a href="simple_integral.jsp">--%>
												<%--<div class="product-thumb-hover">--%>
													<%--<img width="300" height="300" src="image/126.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="image/126.jpg 300w, image/126.jpg 150w, image/126.jpg 180w, image/126.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">--%>
												<%--</div>--%>
											<%--</a>--%>
										<%--</div>--%>
										<%--<div class="item-content products-content" style="text-align: center;">--%>
											<%--<h4 style="width: 100%;"><a href="simple_integral.jsp" title="Cleaner with bag">永生花</a></h4>--%>

											<%--<span class="item-price">--%>
													<%--<ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol" style="color: red;font-size:18px;">33456</span>积分</span></ins>--%>
													<%--</span>--%>
										<%--</div>--%>
									<%--</div>--%>
								<%--</div>--%>
							<%--</li>--%>

							<%--<li class="item col-lg-3 col-md-3 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">--%>
								<%--<div class="products-entry item-wrap clearfix">--%>
									<%--<div class="item-detail">--%>
										<%--<div class="item-img products-thumb">--%>
											<%--<a href="simple_integral.jsp">--%>
												<%--<div class="product-thumb-hover">--%>
													<%--<img width="300" height="300" src="image/126.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="image/126.jpg 300w, image/126.jpg 150w, image/126.jpg 180w, image/126.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">--%>
												<%--</div>--%>
											<%--</a>--%>
										<%--</div>--%>
										<%--<div class="item-content products-content" style="text-align: center;">--%>
											<%--<h4 style="width: 100%;"><a href="simple_integral.jsp" title="Cleaner with bag">永生花</a></h4>--%>

											<%--<span class="item-price">--%>
													<%--<ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol" style="color: red;font-size:18px;">33456</span>积分</span></ins>--%>
													<%--</span>--%>
										<%--</div>--%>
									<%--</div>--%>
								<%--</div>--%>
							<%--</li>--%>

							<%--<li class="item col-lg-3 col-md-3 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">--%>
								<%--<div class="products-entry item-wrap clearfix">--%>
									<%--<div class="item-detail">--%>
										<%--<div class="item-img products-thumb">--%>
											<%--<a href="simple_integral.jsp">--%>
												<%--<div class="product-thumb-hover">--%>
													<%--<img width="300" height="300" src="image/126.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="image/126.jpg 300w, image/126.jpg 150w, image/126.jpg 180w, image/126.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">--%>
												<%--</div>--%>
											<%--</a>--%>
										<%--</div>--%>
										<%--<div class="item-content products-content" style="text-align: center;">--%>
											<%--<h4 style="width: 100%;"><a href="simple_integral.jsp" title="Cleaner with bag">永生花</a></h4>--%>

											<%--<span class="item-price">--%>
													<%--<ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol" style="color: red;font-size:18px;">33456</span>积分</span></ins>--%>
													<%--</span>--%>
										<%--</div>--%>
									<%--</div>--%>
								<%--</div>--%>
							<%--</li>--%>

							<%--<li class="item col-lg-3 col-md-3 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">--%>
								<%--<div class="products-entry item-wrap clearfix">--%>
									<%--<div class="item-detail">--%>
										<%--<div class="item-img products-thumb">--%>
											<%--<a href="simple_product.jsp">--%>
												<%--<div class="product-thumb-hover">--%>
													<%--<img width="300" height="300" src="image/126.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="image/126.jpg 300w, image/126.jpg 150w, image/126.jpg 180w, image/126.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">--%>
												<%--</div>--%>
											<%--</a>--%>
										<%--</div>--%>
										<%--<div class="item-content products-content" style="text-align: center;">--%>
											<%--<h4 style="width: 100%;"><a href="simple_product.jsp" title="Cleaner with bag">永生花</a></h4>--%>

											<%--<span class="item-price">--%>
													<%--<ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol" style="color: red;font-size:18px;">33456</span>积分</span></ins>--%>
													<%--</span>--%>
										<%--</div>--%>
									<%--</div>--%>
								<%--</div>--%>
							<%--</li>--%>

							<%--<li class="item col-lg-3 col-md-3 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">--%>
								<%--<div class="products-entry item-wrap clearfix">--%>
									<%--<div class="item-detail">--%>
										<%--<div class="item-img products-thumb">--%>
											<%--<a href="simple_product.jsp">--%>
												<%--<div class="product-thumb-hover">--%>
													<%--<img width="300" height="300" src="image/126.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="image/126.jpg 300w, image/126.jpg 150w, image/126.jpg 180w, image/126.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">--%>
												<%--</div>--%>
											<%--</a>--%>
										<%--</div>--%>
										<%--<div class="item-content products-content" style="text-align: center;">--%>
											<%--<h4 style="width: 100%;"><a href="simple_product.jsp" title="Cleaner with bag">永生花</a></h4>--%>

											<%--<span class="item-price">--%>
													<%--<ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol" style="color: red;font-size:18px;">33456</span>积分</span></ins>--%>
													<%--</span>--%>
										<%--</div>--%>
									<%--</div>--%>
								<%--</div>--%>
							<%--</li>--%>

							<%--<li class="item col-lg-3 col-md-3 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">--%>
								<%--<div class="products-entry item-wrap clearfix">--%>
									<%--<div class="item-detail">--%>
										<%--<div class="item-img products-thumb">--%>
											<%--<a href="simple_product.jsp">--%>
												<%--<div class="product-thumb-hover">--%>
													<%--<img width="300" height="300" src="image/126.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="image/126.jpg 300w, image/126.jpg 150w, image/126.jpg 180w, image/126.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">--%>
												<%--</div>--%>
											<%--</a>--%>
										<%--</div>--%>
										<%--<div class="item-content products-content" style="text-align: center;">--%>
											<%--<h4 style="width: 100%;"><a href="simple_product.jsp" title="Cleaner with bag">永生花</a></h4>--%>

											<%--<span class="item-price">--%>
													<%--<ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol" style="color: red;font-size:18px;">33456</span>积分</span></ins>--%>
													<%--</span>--%>
										<%--</div>--%>
									<%--</div>--%>
								<%--</div>--%>
							<%--</li>--%>
							<%--<li class="item col-lg-3 col-md-3 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">--%>
								<%--<div class="products-entry item-wrap clearfix">--%>
									<%--<div class="item-detail">--%>
										<%--<div class="item-img products-thumb">--%>
											<%--<a href="simple_product.jsp">--%>
												<%--<div class="product-thumb-hover">--%>
													<%--<img width="300" height="300" src="image/126.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="image/126.jpg 300w, image/126.jpg 150w, image/126.jpg 180w, image/126.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">--%>
												<%--</div>--%>
											<%--</a>--%>
										<%--</div>--%>
										<%--<div class="item-content products-content" style="text-align: center;">--%>
											<%--<h4 style="width: 100%;"><a href="simple_product.jsp" title="Cleaner with bag">永生花</a></h4>--%>

											<%--<span class="item-price">--%>
													<%--<ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol" style="color: red;font-size:18px;">33456</span>积分</span></ins>--%>
													<%--</span>--%>
										<%--</div>--%>
									<%--</div>--%>
								<%--</div>--%>
							<%--</li>--%>

							<%--<li class="item col-lg-3 col-md-3 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">--%>
								<%--<div class="products-entry item-wrap clearfix">--%>
									<%--<div class="item-detail">--%>
										<%--<div class="item-img products-thumb">--%>
											<%--<a href="simple_product.jsp">--%>
												<%--<div class="product-thumb-hover">--%>
													<%--<img width="300" height="300" src="image/126.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="image/126.jpg 300w, image/126.jpg 150w, image/126.jpg 180w, image/126.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">--%>
												<%--</div>--%>
											<%--</a>--%>
										<%--</div>--%>
										<%--<div class="item-content products-content" style="text-align: center;">--%>
											<%--<h4 style="width: 100%;"><a href="simple_product.jsp" title="Cleaner with bag">永生花</a></h4>--%>

											<%--<span class="item-price">--%>
													<%--<ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol" style="color: red;font-size:18px;">33456</span>积分</span></ins>--%>
													<%--</span>--%>
										<%--</div>--%>
									<%--</div>--%>
								<%--</div>--%>
							<%--</li>--%>

							<%--<li class="item col-lg-3 col-md-3 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">--%>
								<%--<div class="products-entry item-wrap clearfix">--%>
									<%--<div class="item-detail">--%>
										<%--<div class="item-img products-thumb">--%>
											<%--<a href="simple_product.jsp">--%>
												<%--<div class="product-thumb-hover">--%>
													<%--<img width="300" height="300" src="image/126.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="image/126.jpg 300w, image/126.jpg 150w, image/126.jpg 180w, image/126.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">--%>
												<%--</div>--%>
											<%--</a>--%>
										<%--</div>--%>
										<%--<div class="item-content products-content" style="text-align: center;">--%>
											<%--<h4 style="width: 100%;"><a href="simple_product.jsp" title="Cleaner with bag">永生花</a></h4>--%>

											<%--<span class="item-price">--%>
													<%--<ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol" style="color: red;font-size:18px;">33456</span>积分</span></ins>--%>
													<%--</span>--%>
										<%--</div>--%>
									<%--</div>--%>
								<%--</div>--%>
							<%--</li>--%>

							<%--<li class="item col-lg-3 col-md-3 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">--%>
								<%--<div class="products-entry item-wrap clearfix">--%>
									<%--<div class="item-detail">--%>
										<%--<div class="item-img products-thumb">--%>
											<%--<a href="simple_product.jsp">--%>
												<%--<div class="product-thumb-hover">--%>
													<%--<img width="300" height="300" src="image/126.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="image/126.jpg 300w, image/126.jpg 150w, image/126.jpg 180w, image/126.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">--%>
												<%--</div>--%>
											<%--</a>--%>
										<%--</div>--%>
										<%--<div class="item-content products-content" style="text-align: center;">--%>
											<%--<h4 style="width: 100%;"><a href="simple_product.jsp" title="Cleaner with bag">永生花</a></h4>--%>

											<%--<span class="item-price">--%>
													<%--<ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol" style="color: red;font-size:18px;">33456</span>积分</span></ins>--%>
													<%--</span>--%>
										<%--</div>--%>
									<%--</div>--%>
								<%--</div>--%>
							<%--</li>--%>
							<%--<li class="item col-lg-3 col-md-3 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">--%>
								<%--<div class="products-entry item-wrap clearfix">--%>
									<%--<div class="item-detail">--%>
										<%--<div class="item-img products-thumb">--%>
											<%--<a href="simple_product.jsp">--%>
												<%--<div class="product-thumb-hover">--%>
													<%--<img width="300" height="300" src="image/126.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="image/126.jpg 300w, image/126.jpg 150w, image/126.jpg 180w, image/126.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">--%>
												<%--</div>--%>
											<%--</a>--%>
										<%--</div>--%>
										<%--<div class="item-content products-content" style="text-align: center;">--%>
											<%--<h4 style="width: 100%;"><a href="simple_product.jsp" title="Cleaner with bag">永生花</a></h4>--%>

											<%--<span class="item-price">--%>
													<%--<ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol" style="color: red;font-size:18px;">33456</span>积分</span></ins>--%>
													<%--</span>--%>
										<%--</div>--%>
									<%--</div>--%>
								<%--</div>--%>
							<%--</li>--%>
							<%--<li class="item col-lg-3 col-md-3 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">--%>
								<%--<div class="products-entry item-wrap clearfix">--%>
									<%--<div class="item-detail">--%>
										<%--<div class="item-img products-thumb">--%>
											<%--<a href="simple_product.jsp">--%>
												<%--<div class="product-thumb-hover">--%>
													<%--<img width="300" height="300" src="image/126.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="image/126.jpg 300w, image/126.jpg 150w, image/126.jpg 180w, image/126.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">--%>
												<%--</div>--%>
											<%--</a>--%>
										<%--</div>--%>
										<%--<div class="item-content products-content" style="text-align: center;">--%>
											<%--<h4 style="width: 100%;"><a href="simple_product.jsp" title="Cleaner with bag">永生花</a></h4>--%>

											<%--<span class="item-price">--%>
													<%--<ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">33456</span>积分</span></ins>--%>
													<%--</span>--%>
										<%--</div>--%>
									<%--</div>--%>
								<%--</div>--%>
							<%--</li>--%>
						</ul>

						<div class="clear"></div>
					</div>
				</div>
				<!--  新品速递 -->
				<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
					<div class="wpb_column vc_column_container vc_col-sm-12">
						<div class="vc_column-inner ">
							<div class="wpb_wrapper">
								<div id="slider_sw_woo_slider_widget_1" class="responsive-slider woo-slider-default sw-child-cat clearfix" data-lg="3" data-md="3" data-sm="2" data-xs="2" data-mobile="1" data-speed="1000" data-scroll="1" data-interval="5000" data-autoplay="false">
									<div class="child-top clearfix" data-color="#ff9901">
										<div class="box-title pull-left" style="background-color:#efefef;border-top:4px solid #ff9901;">
											<h3 style="color:#fe9901;">新品速递</h3>
										</div>

										<div class="box-title-right clearfix" style="overflow:visible;">

											<div class="view-all">
												<a href="javascript:void(0);"><i class="fa  fa-caret-right" style="color:#EFEFEF;"></i></a>
											</div>
										</div>
									</div>

									<div class="content-slider">
										<div class="childcat-slider-content clearfix">

											<!-- slider content -->
											<div class="resp-slider-container">
												<div id="putongdiv" class="slider responsive">

												</div>
											</div>
										</div>

										<div class="best-seller-product">
											<div class="box-slider-title">
												<h2 class="page-title-slider">兑换推荐</h2>
											</div>
											<div id="tuijiandiv" class="wrap-content">
												<%--<div class="item">--%>
													<%--<div class="item-inner">--%>
														<%--<div class="item-img">--%>
															<%--<a href="simple_integral.jsp" title="iPad Mini 2 Retina">--%>
																<%--<img 	width="180" height="180" src="image/129.png" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt=""--%>
																		<%--srcset="image/129.png 180w, image/129.png 150w, image/129.png 300w, image/129.png 600w"--%>
																		<%--sizes="(max-width: 180px) 100vw, 180px" />--%>
															<%--</a>--%>
														<%--</div>--%>
														<%--<div class="item-content">--%>
															<%--<h4 style="line-height: 40px;">--%>
																<%--<a href="simple_integral.jsp" title="Sony BRAVIA 4K">水晶塔</a>--%>
																<%--<p><span class="woocommerce-Price-currencySymbol" style="color: red;font-size:16px;">2738</span>&nbsp;积分</p>--%>
															<%--</h4>--%>
														<%--</div>--%>
													<%--</div>--%>
												<%--</div>--%>

												<%--<div class="item">--%>
													<%--<div class="item-inner">--%>
														<%--<div class="item-img">--%>
															<%--<a href="simple_integral.jsp" title="iPad Mini 2 Retina">--%>
																<%--<img 	width="180" height="180" src="image/129.png" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt=""--%>
																		<%--srcset="image/129.png 180w, image/129.png 150w, image/129.png 300w, image/129.png 600w"--%>
																		<%--sizes="(max-width: 180px) 100vw, 180px" />--%>
															<%--</a>--%>
														<%--</div>--%>
														<%--<div class="item-content">--%>
															<%--<h4 style="line-height: 40px;">--%>
																<%--<a href="simple_integral.jsp" title="Sony BRAVIA 4K">水晶塔</a>--%>
																<%--<p><span class="woocommerce-Price-currencySymbol" style="color: red;font-size:16px;">2738</span>&nbsp;积分</p>--%>
															<%--</h4>--%>
														<%--</div>--%>
													<%--</div>--%>
												<%--</div>--%>

												<%--<div class="item">--%>
													<%--<div class="item-inner">--%>
														<%--<div class="item-img">--%>
															<%--<a href="simple_product.jsp" title="iPad Mini 2 Retina">--%>
																<%--<img 	width="180" height="180" src="image/129.png" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt=""--%>
																		<%--srcset="image/129.png 180w, image/129.png 150w, image/129.png 300w, image/129.png 600w"--%>
																		<%--sizes="(max-width: 180px) 100vw, 180px" />--%>
															<%--</a>--%>
														<%--</div>--%>
														<%--<div class="item-content">--%>
															<%--<h4 style="line-height: 40px;">--%>
																<%--<a href="simple_product.jsp" title="Sony BRAVIA 4K">水晶塔</a>--%>
																<%--<p><span class="woocommerce-Price-currencySymbol" style="color: red;font-size:16px;">2738</span>&nbsp;积分</p>--%>
															<%--</h4>--%>
														<%--</div>--%>
													<%--</div>--%>
												<%--</div>--%>
												<%--<div class="item">--%>
													<%--<div class="item-inner">--%>
														<%--<div class="item-img">--%>
															<%--<a href="simple_product.jsp" title="iPad Mini 2 Retina">--%>
																<%--<img 	width="180" height="180" src="image/129.png" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt=""--%>
																		<%--srcset="image/129.png 180w, image/129.png 150w, image/129.png 300w, image/129.png 600w"--%>
																		<%--sizes="(max-width: 180px) 100vw, 180px" />--%>
															<%--</a>--%>
														<%--</div>--%>
														<%--<div class="item-content">--%>
															<%--<h4 style="line-height: 40px;">--%>
																<%--<a href="simple_product.jsp" title="Sony BRAVIA 4K">水晶塔</a>--%>
																<%--<p><span class="woocommerce-Price-currencySymbol" style="color: red;font-size:16px;">2738</span>&nbsp;积分</p>--%>
															<%--</h4>--%>
														<%--</div>--%>
													<%--</div>--%>
												<%--</div>--%>
												<%--<div class="item">--%>
													<%--<div class="item-inner">--%>
														<%--<div class="item-img">--%>
															<%--<a href="simple_product.jsp" title="iPad Mini 2 Retina">--%>
																<%--<img 	width="180" height="180" src="image/129.png" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt=""--%>
																		<%--srcset="image/129.png 180w, image/129.png 150w, image/129.png 300w, image/129.png 600w"--%>
																		<%--sizes="(max-width: 180px) 100vw, 180px" />--%>
															<%--</a>--%>
														<%--</div>--%>
														<%--<div class="item-content">--%>
															<%--<h4 style="line-height: 40px;">--%>
																<%--<a href="simple_product.jsp" title="Sony BRAVIA 4K">水晶塔</a>--%>
																<%--<p><span class="woocommerce-Price-currencySymbol" style="color: red;font-size:16px;">2738</span>&nbsp;积分</p>--%>
															<%--</h4>--%>
														<%--</div>--%>
													<%--</div>--%>
												<%--</div>--%>
												<%--<div class="item">--%>
													<%--<div class="item-inner">--%>
														<%--<div class="item-img">--%>
															<%--<a href="simple_product.jsp" title="iPad Mini 2 Retina">--%>
																<%--<img 	width="180" height="180" src="image/129.png" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt=""--%>
																		<%--srcset="image/129.png 180w, image/129.png 150w, image/129.png 300w, image/129.png 600w"--%>
																		<%--sizes="(max-width: 180px) 100vw, 180px" />--%>
															<%--</a>--%>
														<%--</div>--%>
														<%--<div class="item-content">--%>
															<%--<h4 style="line-height: 40px;">--%>
																<%--<a href="simple_product.jsp" title="Sony BRAVIA 4K">水晶塔</a>--%>
																<%--<p><span class="woocommerce-Price-currencySymbol">2738</span>&nbsp;积分</p>--%>
															<%--</h4>--%>
														<%--</div>--%>
													<%--</div>--%>
												<%--</div>--%>

												<%--<div class="item">--%>
													<%--<div class="item-inner">--%>
														<%--<div class="item-img">--%>
															<%--<a href="simple_product.jsp" title="iPad Mini 2 Retina">--%>
																<%--<img 	width="180" height="180" src="image/129.png" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt=""--%>
																		<%--srcset="image/129.png 180w, image/129.png 150w, image/129.png 300w, image/129.png 600w"--%>
																		<%--sizes="(max-width: 180px) 100vw, 180px" />--%>
															<%--</a>--%>
														<%--</div>--%>
														<%--<div class="item-content">--%>
															<%--<h4 style="line-height: 40px;">--%>
																<%--<a href="simple_product.jsp" title="Sony BRAVIA 4K">水晶塔</a>--%>
																<%--<p><span class="woocommerce-Price-currencySymbol">2738</span>&nbsp;积分</p>--%>
															<%--</h4>--%>
														<%--</div>--%>
													<%--</div>--%>
												<%--</div>--%>
												<%--<div class="item">--%>
													<%--<div class="item-inner">--%>
														<%--<div class="item-img">--%>
															<%--<a href="simple_product.jsp" title="iPad Mini 2 Retina">--%>
																<%--<img 	width="180" height="180" src="image/129.png" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt=""--%>
																		<%--srcset="image/129.png 180w, image/129.png 150w, image/129.png 300w, image/129.png 600w"--%>
																		<%--sizes="(max-width: 180px) 100vw, 180px" />--%>
															<%--</a>--%>
														<%--</div>--%>
														<%--<div class="item-content">--%>
															<%--<h4 style="line-height: 40px;">--%>
																<%--<a href="simple_product.jsp" title="Sony BRAVIA 4K">水晶塔</a>--%>
																<%--<p><span class="woocommerce-Price-currencySymbol">2738</span>&nbsp;积分</p>--%>
															<%--</h4>--%>
														<%--</div>--%>
													<%--</div>--%>
												<%--</div>--%>

												<%--<div class="item">--%>
													<%--<div class="item-inner">--%>
														<%--<div class="item-img">--%>
															<%--<a href="simple_product.jsp" title="iPad Mini 2 Retina">--%>
																<%--<img 	width="180" height="180" src="image/129.png" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt=""--%>
																		<%--srcset="image/129.png 180w, image/129.png 150w, image/129.png 300w, image/129.png 600w"--%>
																		<%--sizes="(max-width: 180px) 100vw, 180px" />--%>
															<%--</a>--%>
														<%--</div>--%>
														<%--<div class="item-content">--%>
															<%--<h4 style="line-height: 40px;">--%>
																<%--<a href="simple_product.jsp" title="Sony BRAVIA 4K">水晶塔</a>--%>
																<%--<p><span class="woocommerce-Price-currencySymbol">2738</span>&nbsp;积分</p>--%>
															<%--</h4>--%>
														<%--</div>--%>
													<%--</div>--%>
												<%--</div>--%>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>











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

    $("#usernickname").html(usern);

    var uobj=new Object();
    uobj.id=userid;
    doData("sj_information/getMe",uobj,function (data) {
        $("#intenumber").html(data.obj.integral);

    })




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
            "<a href=\"<%=basePath%>/liyi_sj/stage/esclogin.jsp\" style=\"color: white;\">退出登陆</a>\n" +
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





    var limit=12;
    var start=0;

    xians();

    function xians() {
        var integralobj=new Object();
        integralobj.limit=limit;
        integralobj.start=start;
        integralobj.status="限时兑换";
        doData("yh_integralgoods/getintegralgooods",integralobj,function (data) {
            for (var i=0;i<data.obj.length;i++){
                $("#integraldiv").append("<li class=\"item col-lg-3 col-md-3 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple\">\n" +
                    "<div class=\"products-entry item-wrap clearfix\">\n" +
                    "<div class=\"item-detail\">\n" +
                    "<div class=\"item-img products-thumb\">\n" +
                    "<a href=\"<%=basePath%>/liyi_sj/stage/simple_integral.jsp?comid="+data.obj[i].str_id+"\">\n" +
                    "<div class=\"product-thumb-hover\">\n" +
                    "<img width=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\" " +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 300w,<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 150w,<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 180w,<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 600w\" sizes=\"(max-width: 300px) 100vw, 300px\">\n" +
                    "</div>\n" +
                    "</a>\n" +
                    "</div>\n" +
                    "<div class=\"item-content products-content\" style=\"text-align: center;\">\n" +
                    "<h4 style=\"width: 100%;\"><a href=\"<%=basePath%>/liyi_sj/stage/simple_integral.jsp?comid="+data.obj[i].str_id+"\" title=\"Cleaner with bag\">"+data.obj[i].commname+"</a></h4>\n" +
                    "\n" +
                    "<span class=\"item-price\">\n" +
                    "<ins><span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\" style=\"color: red;font-size:18px;\">"+data.obj[i].integral+"</span>积分</span></ins>\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</li>");
            }

        })

    }


    putong();
    function putong() {
        var integralobj=new Object();
        integralobj.limit=limit;
        integralobj.start=start;
        integralobj.status="普通兑换";
        doData("yh_integralgoods/getintegralgooods",integralobj,function (data) {
            for (var i=0;i<9;i+=3){
                $("#putongdiv").append("<div  class=\"item product\">\n" +
                    "<div class=\"item-wrap\">\n" +
                    "<div class=\"item-detail\">\n" +
                    "<div class=\"item-content\">\n" +
                    "<h4 style=\"text-align: center;width: 100%;\">\n" +
                    "<a href=\"<%=basePath%>/liyi_sj/stage/simple_integral.jsp?comid="+data.obj[i].str_id+"\">"+data.obj[i].commname+"</a>\n" +
                    "</h4>\n" +
                    "\n" +
                    "<div class=\"item-price\" style=\"text-align: center;\">\n" +
                    "<span>\n" +
                    "<ins>\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\" style=\"color: red;font-size:18px;\">"+data.obj[i].integral+"</span>积分\n" +
                    "</span>\n" +
                    "</ins>\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-img products-thumb\">\n" +
                    "<a href=\"<%=basePath%>/liyi_sj/stage/simple_integral.jsp?comid="+data.obj[i].str_id+"\">\n" +
                    "<div class=\"product-thumb-hover\">\n" +
                    "<img \twidth=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image2+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].image2+" 300w,<%=basePath%>/uploadfiles/"+data.obj[i].image2+" 150w,<%=basePath%>/uploadfiles/"+data.obj[i].image2+" 180w,<%=basePath%>/uploadfiles/"+data.obj[i].image2+" 600w\"\n" +
                    "sizes=\"(max-width: 300px) 100vw, 300px\" />\n" +
                    "</div>\n" +
                    "</a>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-wrap\">\n" +
                    "<div class=\"item-detail\">\n" +
                    "<div class=\"item-content\">\n" +
                    "<h4 style=\"text-align: center;width: 100%;\">\n" +
                    "<a href=\"<%=basePath%>/liyi_sj/stage/simple_integral.jsp\">"+data.obj[i+1].commname+"</a>\n" +
                    "</h4>\n" +
                    "\n" +
                    "<div class=\"item-price\" style=\"text-align: center;\">\n" +
                    "<span>\n" +
                    "<ins>\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\" style=\"color: red;font-size:18px;\">"+data.obj[i+1].integral+"</span>积分\n" +
                    "</span>\n" +
                    "</ins>\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-img products-thumb\">\n" +
                    "<a href=\"<%=basePath%>/liyi_sj/stage/simple_integral.jsp?comid="+data.obj[i+1].str_id+"\">\n" +
                    "<div class=\"product-thumb-hover\">\n" +
                    "<img \twidth=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i+1].image2+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i+1].image2+" 300w,<%=basePath%>/uploadfiles/"+data.obj[i+1].image2+" 150w,<%=basePath%>/uploadfiles/"+data.obj[i+1].image2+" 180w,<%=basePath%>/uploadfiles/"+data.obj[i+1].image2+" 600w\"\n" +
                    "sizes=\"(max-width: 300px) 100vw, 300px\" />\n" +
                    "</div>\n" +
                    "</a>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-wrap\">\n" +
                    "<div class=\"item-detail\">\n" +
                    "<div class=\"item-content\">\n" +
                    "<h4 style=\"text-align: center;width: 100%;\">\n" +
                    "<a href=\"<%=basePath%>/liyi_sj/stage/simple_integral.jsp?comid="+data.obj[i+2].str_id+"\">"+data.obj[i+2].commname+"</a>\n" +
                    "</h4>\n" +
                    "\n" +
                    "<div class=\"item-price\" style=\"text-align: center;\">\n" +
                    "<span>\n" +
                    "<ins>\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\" style=\"color: red;font-size:18px;\">"+data.obj[i+2].integral+"</span>积分\n" +
                    "</span>\n" +
                    "</ins>\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"item-img products-thumb\">\n" +
                    "<a href=\"<%=basePath%>/liyi_sj/stage/simple_integral.jsp?comid="+data.obj[i+2].str_id+"\">\n" +
                    "<div class=\"product-thumb-hover\">\n" +
                    "<img \twidth=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i+2].image1+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i+2].image1+" 300w,<%=basePath%>/uploadfiles/"+data.obj[i+2].image1+" 150w,<%=basePath%>/uploadfiles/"+data.obj[i+2].image1+" 180w,<%=basePath%>/uploadfiles/"+data.obj[i+2].image1+" 600w\"\n" +
                    "sizes=\"(max-width: 300px) 100vw, 300px\" />\n" +
                    "</div>\n" +
                    "</a>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>");
            }



            for (var j=10;j<data.obj.length;j++) {
                $("#tuijiandiv").append("<div class=\"item\">\n" +
                    "<div class=\"item-inner\">\n" +
                    "<div class=\"item-img\">\n" +
                    "<a href=\"<%=basePath%>/liyi_sj/stage/simple_integral.jsp?comid="+data.obj[j].str_id+"\" title=\"iPad Mini 2 Retina\">\n" +
                    "<img \twidth=\"180\" height=\"180\" src=\"<%=basePath%>/uploadfiles/"+data.obj[j].image1+"\" class=\"attachment-shop_thumbnail size-shop_thumbnail wp-post-image\" alt=\"\"\n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[j].image1+" 180w,<%=basePath%>/uploadfiles/"+data.obj[j].image1+" 150w,<%=basePath%>/uploadfiles/"+data.obj[j].image1+" 300w,<%=basePath%>/uploadfiles/"+data.obj[j].image1+" 600w\"\n" +
                    "sizes=\"(max-width: 180px) 100vw, 180px\" />\n" +
                    "</a>\n" +
                    "</div>\n" +
                    "<div class=\"item-content\">\n" +
                    "<h4 style=\"line-height: 40px;\">\n" +
                    "<a href=\"<%=basePath%>/liyi_sj/stage/simple_integral.jsp?comid="+data.obj[j].str_id+"\" title=\"Sony BRAVIA 4K\">"+data.obj[j].commname+"</a>\n" +
                    "<p><span class=\"woocommerce-Price-currencySymbol\" style=\"color: red;font-size:16px;\">"+data.obj[j].integral+"</span>&nbsp;积分</p>\n" +
                    "</h4>\n" +
                    "</div>\n" +
                    "</div>\n" +
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

<script type="text/javascript" src="js/woocommerce/country-select.min.js"></script>

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

