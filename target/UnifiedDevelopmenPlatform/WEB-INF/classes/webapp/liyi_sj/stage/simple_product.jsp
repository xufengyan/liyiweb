
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
	<title></title>
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
	<link rel="stylesheet" href="css/woocommerce/woocommerce-layout.css" />
	<link rel="stylesheet" href="css/woocommerce/woocommerce-smallscreen.css" />
	<link rel="stylesheet" href="css/woocommerce/prettyPhoto.css" />
	<link rel="stylesheet" href="css/yith-woocommerce-wishlist/style.css" />
	
	
	<link rel="stylesheet" href="css/custom.css" />
	<link rel="stylesheet" href="css/app-orange.css" id="theme_color" />
	<link rel="stylesheet" href="" id="rtl" /> 
	<link rel="stylesheet" href="css/app-responsive.css" />
	<link rel="stylesheet" href="css/myself.css">
	<script src="basic/js/jquery-1.7.min.js"></script>
	<script src="js/buy_product.js"></script>


	<style>
		@media only screen and (min-width:400px) and (max-width:760px) {
			#giftright {float: left;}
			#oneright {width: 46%;height: 46%;margin-left: 10px;float: left;}
		}
	</style>
</head>

<body id="body11" class="product-template-default single single-product woocommerce woocommerce-page">
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
								<img  src="image/logoSmall.png" alt="Shoopy">
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
		
		<div class="container">
			<div class="row">
				<div id="contents-detail" class="content col-lg-12 col-md-12 col-sm-12" role="main">
					<div id="container" style="margin-top: 70px;">
						<div id="content" role="main">
							<div class="single-product clearfix">
								<div id="product-01" class="product type-product status-publish has-post-thumbnail product_cat-accessories product_brand-global-voices first outofstock featured shipping-taxable purchasable product-type-simple">
									<div class="product_detail row">
										<div id="productimages" class="col-lg-4 col-md-4 col-sm-12 col-xs-12 clear_xs">
											<div   class="slider_img_productd">
												<!-- woocommerce_show_product_images -->
												<div id="product_img_01" class="product-images loading" data-rtl="false">
													<div class="product-images-container clearfix thumbnail-bottom">
														<!-- Image Slider -->
														<div class="slider product-responsive">
															<div class="item-img-slider">
																<div class="images">
																	<a id="aimage1" href="" data-rel="prettyPhoto[product-gallery]" class="zoom">
																		<img id="Loginiamge1" width="600" height="600" src="" class="attachment-shop_single size-shop_single" alt="" srcset="" sizes="(max-width: 600px) 100vw, 600px">
																	</a>
																</div>
															</div>

															<div class="item-img-slider">
																<div class="images">
																	<a id="aimage2" href="" data-rel="prettyPhoto[product-gallery]" class="zoom">
																		<img id="Loginiamge2" width="600" height="600" src="" class="attachment-shop_single size-shop_single" alt="" srcset="" sizes="(max-width: 600px) 100vw, 600px">
																	</a>
																</div>
															</div>

															<div class="item-img-slider">
																<div class="images">
																	<a id="aimage3" href="" data-rel="prettyPhoto[product-gallery]" class="zoom">
																		<img id="Loginiamge3" width="600" height="600" src="" class="attachment-shop_single size-shop_single" alt="" srcset="" sizes="(max-width: 600px) 100vw, 600px">
																	</a>
																</div>
															</div>

															<div class="item-img-slider">
																<div class="images">
																	<a id="aimage4" href="" data-rel="prettyPhoto[product-gallery]" class="zoom">
																		<img id="Loginiamge4" width="600" height="600" src="" class="attachment-shop_single size-shop_single" alt="" srcset="" sizes="(max-width: 600px) 100vw, 600px">
																	</a>
																</div>
															</div>
														</div>

														<!--略缩图滑块 -->
														<div class="slider product-responsive-thumbnail" id="product_thumbnail_247">
															<div class="item-thumbnail-product">
																<div class="thumbnail-wrapper">
																	<img id="lueimage1" width="180" height="180" src="" class="attachment-shop_thumbnail size-shop_thumbnail" alt="" srcset="" sizes="(max-width: 180px) 100vw, 180px">
																</div>
															</div>

															<div class="item-thumbnail-product">
																<div class="thumbnail-wrapper">
																	<img id="lueimage2" width="180" height="180" src="" class="attachment-shop_thumbnail size-shop_thumbnail" alt="" srcset="" sizes="(max-width: 180px) 100vw, 180px">
																</div>
															</div>

															<div class="item-thumbnail-product">
																<div class="thumbnail-wrapper">
																	<img id="lueimage3" width="180" height="180" src="" class="attachment-shop_thumbnail size-shop_thumbnail" alt="" srcset="" sizes="(max-width: 180px) 100vw, 180px">
																</div>
															</div>

															<div class="item-thumbnail-product">
																<div class="thumbnail-wrapper">
																	<img id="lueimage4" width="180" height="180" src="" class="attachment-shop_thumbnail size-shop_thumbnail" alt="" srcset="" sizes="(max-width: 180px) 100vw, 180px">
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

										<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 clear_xs">
											<div class="content_product_detail">
												<div id="commoditytitle">

												</div>

												<div class="product-info clearfix discount-div">
												<p class="discount">优惠:</p>
												<div  class="couponli-div" id="coup-div1" onclick="getcouponli1()" style="background-image: url(image/couponli.png);">
											<center><p style="line-height: 50px;font-size: 14px;color: white;">满69减5</p></center>
												</div>
											<div  class="couponli-div" id="coup-div2" onclick="getcouponli2()" style="background-image: url(image/couponli.png);">
											<center><p style="line-height: 50px;font-size: 14px;color: white;">满109减10</p></center>
												</div>
												<div  class="couponli-div" id="coup-div3" onclick="getcouponli3()" style="background-image: url(image/couponli.png);">
											<center><p style="line-height: 50px;font-size: 14px;color: white;">满199减20</p></center>
												</div>
												<div  class="couponli-div" id="coup-div4" onclick="getcouponli4()" style="background-image: url(image/couponli.png);">
											<center><p style="line-height: 50px;font-size: 14px;color: white;">满299减30</p></center>
												</div>
												</div>

												<div class="product-info clearfix">
													<div class="product-color">
														<font id="color-title" style="color:gray;font-size:15px;float: left;">个性定制:</font>
												<div class="btn-group"><button id="checo1" type="button" class="btn btn-default">直接购买</button></div>
												<div class="btn-group"><button id="checo2" type="button" class="btn btn-default">定制</button></div>
													   </div>
													</div>

													<div class="product-info clearfix">
													<div class="product-color">
													<font id="color-title" style="color:gray;font-size:15px;float: left;">礼物颜色:</font>

														<%--商品样式--%>
												<div id="commstylebtn">

													</div>

													</div>
													</div>
													<div class="product-info clearfix">
													<div class="product-count">
													<font style="color:gray;font-size:15px;float: left;line-height: 30px;">购买数量:</font>
														<div class="input-group" style="margin-right: 15px;">
  													<span class="input-group-addon" id="jian">
  									<span class="glyphicon glyphicon-minus"><a href="javascript:void(0)"></a></span>
 									 </span>
  										<input readonly="readonly" id="shopnumber" type="text" class="form-control" value="1" style="text-align:center;">
  											<span class="input-group-addon" id="add">
  											<span class="glyphicon glyphicon-plus"><a href="javascript:void(0)"></a></span>
  											</span>
												</div>
														<div id="commkucun">
														</div>
													</div>
													</div>

												<!-- 购买或加入购物车  -->
													<div class="product-info clearfix">
													<div class="product-buy">
													<a  id="shopbtn" type="button" class="btn btn-info" style="margin-right: 30px;">立即购买</a>
													<a  id="shopbusbtn" type="button" class="btn btn-danger">加入购物车</a>
													</div>
													</div>


												<div class="social-share">
													<div class="title-share">分享</div>
													<div class="wrap-content">
														<a href="#" onClick="javascript:window.open(this.href,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><i class="fa fa-facebook"></i></a>
														<a href="http://twitter.com/" onClick="javascript:window.open(this.href,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><i class="fa fa-twitter"></i></a>
														<a href="#" onClick="javascript:window.open(this.href,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><i class="fa fa-google-plus"></i></a>
														<a href="#"><i class="fa fa-dribbble"></i></a>
														<a href="#"><i class="fa fa-instagram"></i></a>
													</div>
												</div>
											</div>
										</div>


							<div class="col-lg-2 col-md-2 col-sm-3 col-xs-12 clear_xs">
							<div class="table-responsive">
								<table id="storetable11" class="table" style="border:1px solid lightgrey;">


								</table>

                                 <table id="commtable" class="table" style="border:1px solid lightgrey;">


                                </table>
                               </div>
							</div>
						</div>
					</div>

								<div class="tabs clearfix">
									<div class="tabbable">
										<ul class="nav nav-tabs">
											<li class="description_tab active">
												<a href="#tab-description" data-toggle="tab">产品详情</a>
											</li>
											<li class="reviews_tab ">
												<a href="#tab-reviews" data-toggle="tab">评价</a>
											</li>
										</ul>

										<div class="clear"></div>

										<div class=" tab-content">
											<div  style="" class="tab-pane active" id="tab-description">

											</div>

											<div class="tab-pane " id="tab-reviews">
												<div id="reviews">
													<div id="comments">
														<h2>评价</h2>
													</div>

													<div id="review_form_wrapper">
														<div id="review_form">
															<div id="respond" class="comment-respond">
																<table id="evacount" class="table comment-table">

																</table>

																<div id="pingjia" class="table-responsive">

																</div>
																<nav aria-label="Page navigation">
																	<ul class="pager">
																		<li><a href="#">上一页</a></li>
																		<li><a href="#">下一页</a></li>
																	</ul>
																</nav>
															</div>
														</div>
													</div>

													<div class="clear"></div>
												</div>
											</div>
										</div>
									</div>
								</div>


								<div class="bottom-single-product theme-clearfix">
									<div class="widget-1 widget-first widget sw_related_upsell_widget-2 sw_related_upsell_widget" data-scroll-reveal="enter bottom move 20px wait 0.2s">
										<div class="widget-inner">
											<div id="slider_sw_related_upsell_widget-2" class="sw-woo-container-slider related-products responsive-slider clearfix loading" data-lg="4" data-md="3" data-sm="2" data-xs="2" data-mobile="1" data-speed="1000" data-scroll="1" data-interval="5000" data-autoplay="false">
												<div class="resp-slider-container">
													<div class="box-slider-title">
														<h2><span>相关推荐</span></h2>
													</div>
													<div  class="slider responsive">
														<div class="item-countdown product " id="product_sw_countdown_0">
															<div class="item-wrap">
																<div id="silder111" class="item-detail">


																</div>
															</div>
														</div>
										<div class="item-countdown product " id="product_sw_countdown_0">
															<div class="item-wrap">
																<div id="silder222" class="item-detail">

																</div>
															</div>
														</div>


														<div class="item-countdown product " id="product_sw_countdown_0">
															<div class="item-wrap">
																<div id="silder333" class="item-detail">

																</div>
															</div>
														</div>

														<div class="item-countdown product " id="product_sw_countdown_0">
															<div class="item-wrap">
																<div id="silder444" class="item-detail">

																</div>
															</div>
														</div>

													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="widget-2 widget-last widget sw_related_upsell_widget-3 sw_related_upsell_widget" data-scroll-reveal="enter bottom move 20px wait 0.2s">
										<div class="widget-inner"></div>
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
												<a class="item-link" href="about_us.html">
													<span class="menu-title">礼意首页</span>
												</a>
											</li>

											<li class="menu-customer-service">
												<a class="item-link" href="<%=basePath%>/liyi_sj/photobook/new_file.html">
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


	<div  class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" style="padding-top: 5%;">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content" style="width: 50%;margin-left: 30%;">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span></button>
				<div style="padding:40px 0px 20px 0px;">
					<p style="text-align: center;font-size: 14px;">已加入购物车!</p>
					<p style="text-align: center;font-size:40px;color: seagreen;">
						<i class="glyphicon glyphicon-ok"></i></p>
				</div>
				<center><button type="button" class="btn btn-info" data-dismiss="modal" style="margin-bottom:20px;padding:5px 15px;">确定</button></center>
			</div>
		</div>
	</div>

	<div  class="modal fade bs-example-modal-sm2" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" style="padding-top: 5%;">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content" style="width: 50%;margin-left: 30%;">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span></button>
				<div style="padding:40px 0px 20px 0px;">
					<p style="text-align: center;font-size: 14px;">请先选中样式哦!</p>

				</div>
				<center><button type="button" class="btn btn-info" data-dismiss="modal" style="margin-bottom:20px;padding:5px 15px;">确定</button></center>
			</div>
		</div>
	</div>
	<div  class="modal fade bs-example-modal-sm3" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" style="padding-top: 5%;">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content" style="width: 50%;margin-left: 30%;">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span></button>
				<div style="padding:40px 0px 20px 0px;">
					<p style="text-align: center;font-size: 14px;" id="yangs">请先登录哦!</p>

				</div>
				<center><button type="button" class="btn btn-info" data-dismiss="modal" style="margin-bottom:20px;padding:5px 15px;">确定</button></center>
			</div>
		</div>
	</div>

	<div  class="modal fade bs-example-modal-sm4" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" style="padding-top: 5%;">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content" style="width: 50%;margin-left: 30%;">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span></button>
				<div style="padding:40px 0px 20px 0px;">
					<p style="text-align: center;font-size: 14px;">购买前请先登录哦!否者小礼无法确认您的信息哦</p>
				</div>
				<center><button type="button" class="btn btn-info" data-dismiss="modal" style="margin-bottom:20px;padding:5px 15px;">确定</button></center>
			</div>
		</div>
	</div>




	<div class="modal fade bs-example-modal-sm5" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" style="padding-top: 5%;">
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





        var usern='${sessionScope.get("usernick")}';
        var userid='${sessionScope.get("userid")}';

        if(usern!=''){
            $("#toplogin").hide();
            $("#topname").append("<div class=\"pull-left top1\" >" +
                "<div class=\"widget text-3 widget_text pull-left\">\n" +
                "<div class=\"widget-inner\">\n" +
                "<div class=\"textwidget\">\n" +
                "<div id=\"lang_sel\">\n" +
                "<a href=\"#\" style=\"color: white;\">用户:"+usern+"</a>\n" +
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

        }




		var type=getURLParamValue("type");
        var comid=getUrlParam("comid")
		var model1=new Object()
		var styleid=null;
        var category=null;
        if(type==2&&comid!=null){
            model1.id=comid;
            doData("/sj_commodity/getMe",model1,function (data) {
                //获取当前商品的展示的图片
                $("#aimage1").attr("href", "<%=basePath%>/uploadfiles/" + data.obj.image1);
                $("#Loginiamge1").attr("src", "<%=basePath%>/uploadfiles/" + data.obj.image1);
                $("#Loginiamge1").attr("srcset","<%=basePath%>/uploadfiles/"+data.obj.image1+" 600w,<%=basePath%>/uploadfiles/"+data.obj.image1+" 150w,<%=basePath%>/uploadfiles/"+data.obj.image1+" 300w,<%=basePath%>/uploadfiles/"+data.obj.image1+" 180w");
                $("#lueimage1").attr("src","<%=basePath%>/uploadfiles/" + data.obj.image1);
                $("#lueimage1").attr("srcset","<%=basePath%>/uploadfiles/"+data.obj.image1+" 180w,<%=basePath%>/uploadfiles/"+data.obj.image1+" 150w,<%=basePath%>/uploadfiles/"+data.obj.image1+" 300w,<%=basePath%>/uploadfiles/"+data.obj.image1+" 600w")

                $("#aimage2").attr("href", "<%=basePath%>/uploadfiles/" + data.obj.image2);
                $("#Loginiamge2").attr("src", "<%=basePath%>/uploadfiles/" + data.obj.image2);
                $("#Loginiamge2").attr("srcset","<%=basePath%>/uploadfiles/"+data.obj.image2+" 600w,<%=basePath%>/uploadfiles/"+data.obj.image2+" 150w,<%=basePath%>/uploadfiles/"+data.obj.image2+" 300w,<%=basePath%>/uploadfiles/"+data.obj.image2+" 180w");
                $("#lueimage2").attr("src","<%=basePath%>/uploadfiles/" + data.obj.image2);
                $("#lueimage2").attr("srcset","<%=basePath%>/uploadfiles/"+data.obj.image2+" 180w,<%=basePath%>/uploadfiles/"+data.obj.image2+" 150w,<%=basePath%>/uploadfiles/"+data.obj.image2+" 300w,<%=basePath%>/uploadfiles/"+data.obj.image2+" 600w")

                $("#aimage3").attr("href", "<%=basePath%>/uploadfiles/" + data.obj.image3);
                $("#Loginiamge3").attr("src", "<%=basePath%>/uploadfiles/" + data.obj.image3);
                $("#Loginiamge3").attr("srcset","<%=basePath%>/uploadfiles/"+data.obj.image3+" 600w,<%=basePath%>/uploadfiles/"+data.obj.image3+" 150w,<%=basePath%>/uploadfiles/"+data.obj.image3+" 300w,<%=basePath%>/uploadfiles/"+data.obj.image3+" 180w");
                $("#lueimage3").attr("src","<%=basePath%>/uploadfiles/" + data.obj.image3);
                $("#lueimage3").attr("srcset","<%=basePath%>/uploadfiles/"+data.obj.image3+" 180w,<%=basePath%>/uploadfiles/"+data.obj.image3+" 150w,<%=basePath%>/uploadfiles/"+data.obj.image3+" 300w,<%=basePath%>/uploadfiles/"+data.obj.image3+" 600w")

                $("#aimage4").attr("href", "<%=basePath%>/uploadfiles/" + data.obj.image4);
                $("#Loginiamge4").attr("src", "<%=basePath%>/uploadfiles/" + data.obj.image4);
                $("#Loginiamge4").attr("srcset","<%=basePath%>/uploadfiles/"+data.obj.image4+" 600w,<%=basePath%>/uploadfiles/"+data.obj.image4+" 150w,<%=basePath%>/uploadfiles/"+data.obj.image4+" 300w,<%=basePath%>/uploadfiles/"+data.obj.image4+" 180w");
                $("#lueimage4").attr("src","<%=basePath%>/uploadfiles/" + data.obj.image4);
                $("#lueimage4").attr("srcset","<%=basePath%>/uploadfiles/"+data.obj.image4+" 180w,<%=basePath%>/uploadfiles/"+data.obj.image4+" 150w,<%=basePath%>/uploadfiles/"+data.obj.image4+" 300w,<%=basePath%>/uploadfiles/"+data.obj.image4+" 600w")

				var comprice=data.obj.price;
                comprice=comprice.toFixed(2);
				$("#commoditytitle").append("<h1 class=\"product_title entry-title\">"+data.obj.commname+"</h1>\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\">" +
                    "<span style=\"width:35px\"></span>\n" +
                    "</div>\n" +
                    "<a href=\"#reviews\" class=\"woocommerce-review-link\" rel=\"nofollow\"><span class=\"count\">6.6</span> 评分</a>\n" +
                    "</div>\n" +
                    "<div class=\"description\" itemprop=\"description\">\n" +
                    "<p>"+data.obj.title+"</p>\n" +
                    "</div>\n" +
                    "<div class=\"product-info clearfix\">\n" +
                    "<div>\n" +
                    "<p class=\"price\"><span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\"></span>"+comprice+"元</span>\n" +
                    "<span class=\"pull-right\">有现货</span>\n" +
                    "</p>\n" +
                    "</div>\n" +
                    "</div>");

				$("#commkucun").append("<p style=\"font-size: 12px;color: darkgray;line-height: 30px;\">库存("+data.obj.stock+"件)</p>\n")


				$("#tab-description").append("<center><font size='50px'>"+data.obj.description+"</font></center>");




            })

			//商品样式连接数据库
            doData("/sj_commodity/getmecommstyle",model1,function (data) {

				for (var i=0;i<data.obj.length;i++){
				    $("#commstylebtn").append("<div class=\"btn-group\"><button id=\"checo"+(i+1)+"\" onclick=\"stylebtn('"+data.obj[i].styleid+"')\" type=\"button\" class=\"btn btn-default\">"+data.obj[i].stylename+"</button></div>\n");
				}
            })

			//店铺查询
			var storeid=null;
			doData("/sj_commodity/getmecommstore",model1,function (data) {
                storeid=data.obj[0].s_id;
                category=data.obj[0].category;
				$("#storetable11").append("<tr>\n" +
                    "<td style=\"padding: 10px 0px 10px 0px;text-align: center;\">\n" +
                    "<a href=\"#\" style=\"font-size: 16px;color: red;\">"+data.obj[0].storename+"</a></td>\n" +
                    "</tr>\n" +
                    "<tr>\n" +
                    "<td>\n" +
					"<p style=\"margin-left:15px;\">信誉:&nbsp;<span style=\"color: red;\">"+(data.obj[0].credit/10)+"</span>&nbsp;&nbsp;\n" +
                    "<div class=\"heart\" style=\"color: red;margin-left:15px;\">\n" +
                    "<span style=\"width:"+(data.obj[0].credit-25)+"px;\"></span>\n" +
                    "</div>\n" +
                    "</p>" +

                    "\n" +
                    "<p style=\"margin-left: 10px;\">\n" +
                    "<span style=\"margin-right: 10px;\">描述</span>\n" +
                    "<span style=\"margin-right: 10px;\">服务</span>\n" +
                    "<span>物流</span>\n" +
                    "</p>\n" +
                    "<p style=\"margin-left: 10px;\">\n" +
                    "<span>4.9\n" +
                    "<i class=\"glyphicon glyphicon-arrow-up\" style=\"color: red;\"></i></span>\n" +
                    "<span style=\"margin-right: 2px;\">4.9\n" +
                    "<i class=\"glyphicon glyphicon-arrow-up\" style=\"color: red;\"></i></span>\n" +
                    "<span style=\"margin-right: 2px;\">4.9\n" +
                    "<i class=\"glyphicon glyphicon-arrow-up\" style=\"color: red;\"></i></span>\n" +
                    "</p>\n" +
                    "<a href=\"<%=basePath%>/liyi_sj/stage/business/index.jsp?storeid="+data.obj[0].s_id+"\" type=\"button\" class=\"btn btn-primary btn-xs\" style=\"margin-left: 10px;\">进店逛逛</a>\n" +
                    "<button type=\"button\" onclick=\"shoucdianpu('"+storeid+"')\"  value=\""+storeid+"\" class=\"btn btn-primary btn-xs\" style=\"margin-left: 5px;\">收藏店铺</button>\n" +
                    "</td>\n" +
                    "</tr>");
				model1.storeid=storeid
				model1.id="";
				//店铺推荐查询
				doData("/sj_commodity/getmecommstore",model1,function (data) {
				    $("#commtable").append("<tr>\n" +
                        "<td style=\"padding: 10px 0px 10px 0px;text-align: center;\">\n" +
                        "<a href=\"#\" style=\"font-size: 16px;color: red;\">店铺推荐</a></td>\n" +
                        "</tr>\n" +
                        "<tr>\n" +
                        "<td><a href=\"<%=basePath%>/liyi_sj/stage/simple_product.jsp?type=2&comid="+data.obj[4].comid+"\"><img src=\"<%=basePath%>/uploadfiles/"+data.obj[4].image2+"\">\n" +
                        "<p class=\"storeshow\">￥"+data.obj[4].price+".00</p>\n" +
                        "</td></a>\n" +
                        "</tr>\n" +
                        "<tr>\n" +
                        "<td><a href=\"<%=basePath%>/liyi_sj/stage/simple_product.jsp?type=2&comid="+data.obj[6].comid+"\"><img src=\"<%=basePath%>/uploadfiles/"+data.obj[6].image2+"\">\n" +
                        "<p class=\"storeshow\">￥"+data.obj[6].price+".00</p>\n" +
                        "</td></a>\n" +
                        "</tr>");
                });


                model1.type='';
                evaluationbtn(model1.type,model1.storeid,0);
				var model2=new Object();
                model2.limit=6;
                model2.start=0;
                model2.subcategory=category;
                //执行相关推荐的查询
                doData("sj_commodity/getcomm",model2,function (data) {
                    $("#silder111").append("<div class=\"item-img products-thumb\">\n" +
                        "<a href=\"simple_product.jsp?comid="+data.obj[0].comid+"&type=2\">\n" +
                        "<div class=\"product-thumb-hover\">\n" +
                        "<img width=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[0].image2+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\" srcset=\"<%=basePath%>/uploadfiles/"+data.obj[0].image2+" 300w,<%=basePath%>/uploadfiles/"+data.obj[0].image2+" 150w,<%=basePath%>/uploadfiles/"+data.obj[0].image2+" 180w,<%=basePath%>/uploadfiles/"+data.obj[0].image2+" 600w\" sizes=\"(max-width: 300px) 100vw, 300px\">\n" +
                        "</div>\n" +
                        "</a>\n" +
                        "<!-- add to cart, wishlist, compare -->\n" +
                        "<div class=\"item-bottom clearfix\">\n" +
                        "<a rel=\"nofollow\" href=\"#\" class=\"button product_type_simple add_to_cart_button ajax_add_to_cart\" title=\"Add to Cart\">加入购物车</a>\n" +
                        "\n" +
                        "<a href=\"javascript:void(0)\" class=\"compare button\" rel=\"nofollow\" title=\"Add to Compare\">找相似</a>\n" +
                        "\n" +
                        "<div class=\"yith-wcwl-add-to-wishlist add-to-wishlist-248\">\n" +
                        "<div class=\"yith-wcwl-add-button show\" style=\"display:block\">\n" +
                        "<a href=\"#\" rel=\"nofollow\" class=\"add_to_wishlist\">添加购物车</a>\n" +
                        "<img src=\"images/wpspin_light.gif\" class=\"ajax-loading\" alt=\"loading\" width=\"16\" height=\"16\" style=\"visibility:hidden\" />\n" +
                        "</div>\n" +
                        "\n" +
                        "<div class=\"yith-wcwl-wishlistaddedbrowse hide\" style=\"display:none;\">\n" +
                        "<span class=\"feedback\">收藏</span>\n" +
                        "<a href=\"#\" rel=\"nofollow\">查找</a>\n" +
                        "</div>\n" +
                        "\n" +
                        "<div style=\"clear:both\"></div>\n" +
                        "<div class=\"yith-wcwl-wishlistaddresponse\"></div>\n" +
                        "</div>\n" +
                        "\n" +
                        "<div class=\"clear\"></div>\n" +
                        "<a href=\"#\"  class=\"sm_quickview_handler-list fancybox \">"+data.obj[0].commname+"</a>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "\n" +
                        "<div class=\"item-content\">\n" +
                        "<!-- rating  -->\n" +
                        "<div class=\"reviews-content\">\n" +
                        "<div class=\"star\"></div>\n" +
                        "<div class=\"item-number-rating\">\n" +
                        "评论(10)\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "<!-- end rating  -->\n" +
                        "\n" +
                        "<h4><a href=\"simple_product.html?comid="+data.obj[0].comid+"&type=2\" title=\"turkey qui\">"+data.obj[0].commname+"</a></h4>\n" +
                        "\n" +
                        "<!-- price -->\n" +
                        "<div class=\"item-price\">\n" +
                        "<span>\n" +
                        "<span class=\"woocommerce-Price-amount amount\">\n" +
                        "<span class=\"woocommerce-Price-currencySymbol\">$</span>"+data.obj[0].price+"\n" +
                        "</span>\n" +
                        "</span>\n" +
                        "</div>\n" +
                        "</div>")

                    $("#silder222").append("<div class=\"item-img products-thumb\">\n" +
                        "<a href=\"simple_product.jsp?comid="+data.obj[1].comid+"&type=2\">\n" +
                        "<div class=\"product-thumb-hover\">\n" +
                        "<img width=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[1].image2+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\" srcset=\"<%=basePath%>/uploadfiles/"+data.obj[1].image2+" 300w,<%=basePath%>/uploadfiles/"+data.obj[1].image2+" 150w,<%=basePath%>/uploadfiles/"+data.obj[1].image2+" 180w,<%=basePath%>/uploadfiles/"+data.obj[1].image2+" 600w\" sizes=\"(max-width: 300px) 100vw, 300px\">\n" +
                        "</div>\n" +
                        "</a>\n" +
                        "<!-- add to cart, wishlist, compare -->\n" +
                        "<div class=\"item-bottom clearfix\">\n" +
                        "<a rel=\"nofollow\" href=\"#\" class=\"button product_type_simple add_to_cart_button ajax_add_to_cart\" title=\"Add to Cart\">加入购物车</a>\n" +
                        "\n" +
                        "<a href=\"javascript:void(0)\" class=\"compare button\" rel=\"nofollow\" title=\"Add to Compare\">找相似</a>\n" +
                        "\n" +
                        "<div class=\"yith-wcwl-add-to-wishlist add-to-wishlist-248\">\n" +
                        "<div class=\"yith-wcwl-add-button show\" style=\"display:block\">\n" +
                        "<a href=\"#\" rel=\"nofollow\" class=\"add_to_wishlist\">添加购物车</a>\n" +
                        "<img src=\"images/wpspin_light.gif\" class=\"ajax-loading\" alt=\"loading\" width=\"16\" height=\"16\" style=\"visibility:hidden\" />\n" +
                        "</div>\n" +
                        "\n" +
                        "<div class=\"yith-wcwl-wishlistaddedbrowse hide\" style=\"display:none;\">\n" +
                        "<span class=\"feedback\">收藏</span>\n" +
                        "<a href=\"#\" rel=\"nofollow\">查找</a>\n" +
                        "</div>\n" +
                        "\n" +
                        "<div style=\"clear:both\"></div>\n" +
                        "<div class=\"yith-wcwl-wishlistaddresponse\"></div>\n" +
                        "</div>\n" +
                        "\n" +
                        "<div class=\"clear\"></div>\n" +
                        "<a href=\"#\" class=\"sm_quickview_handler-list fancybox \">"+data.obj[1].commname+"</a>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "\n" +
                        "<div class=\"item-content\">\n" +
                        "<!-- rating  -->\n" +
                        "<div class=\"reviews-content\">\n" +
                        "<div class=\"star\"></div>\n" +
                        "<div class=\"item-number-rating\">\n" +
                        "评论(10)\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "<!-- end rating  -->\n" +
                        "\n" +
                        "<h4><a href=\"simple_product.html?comid="+data.obj[1].comid+"&type=2\" title=\"turkey qui\">"+data.obj[1].commname+"</a></h4>\n" +
                        "\n" +
                        "<!-- price -->\n" +
                        "<div class=\"item-price\">\n" +
                        "<span>\n" +
                        "<span class=\"woocommerce-Price-amount amount\">\n" +
                        "<span class=\"woocommerce-Price-currencySymbol\">$</span>"+data.obj[1].price+"\n" +
                        "</span>\n" +
                        "</span>\n" +
                        "</div>\n" +
                        "</div>")

                    $("#silder333").append("<div class=\"item-img products-thumb\">\n" +
                        "<a href=\"simple_product.jsp?comid="+data.obj[2].comid+"&type=2\">\n" +
                        "<div class=\"product-thumb-hover\">\n" +
                        "<img width=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[2].image2+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\" srcset=\"<%=basePath%>/uploadfiles/"+data.obj[2].image2+" 300w,<%=basePath%>/uploadfiles/"+data.obj[2].image2+" 150w,<%=basePath%>/uploadfiles/"+data.obj[2].image2+" 180w,<%=basePath%>/uploadfiles/"+data.obj[2].image2+" 600w\" sizes=\"(max-width: 300px) 100vw, 300px\">\n" +
                        "</div>\n" +
                        "</a>\n" +
                        "<!-- add to cart, wishlist, compare -->\n" +
                        "<div class=\"item-bottom clearfix\">\n" +
                        "<a rel=\"nofollow\" href=\"#\" class=\"button product_type_simple add_to_cart_button ajax_add_to_cart\" title=\"Add to Cart\">加入购物车</a>\n" +
                        "\n" +
                        "<a href=\"javascript:void(0)\" class=\"compare button\" rel=\"nofollow\" title=\"Add to Compare\">找相似</a>\n" +
                        "\n" +
                        "<div class=\"yith-wcwl-add-to-wishlist add-to-wishlist-248\">\n" +
                        "<div class=\"yith-wcwl-add-button show\" style=\"display:block\">\n" +
                        "<a href=\"#\" rel=\"nofollow\" class=\"add_to_wishlist\">添加购物车</a>\n" +
                        "<img src=\"images/wpspin_light.gif\" class=\"ajax-loading\" alt=\"loading\" width=\"16\" height=\"16\" style=\"visibility:hidden\" />\n" +
                        "</div>\n" +
                        "\n" +
                        "<div class=\"yith-wcwl-wishlistaddedbrowse hide\" style=\"display:none;\">\n" +
                        "<span class=\"feedback\">收藏</span>\n" +
                        "<a href=\"#\" rel=\"nofollow\">查找</a>\n" +
                        "</div>\n" +
                        "\n" +
                        "<div style=\"clear:both\"></div>\n" +
                        "<div class=\"yith-wcwl-wishlistaddresponse\"></div>\n" +
                        "</div>\n" +
                        "\n" +
                        "<div class=\"clear\"></div>\n" +
                        "<a href=\"#\" class=\"sm_quickview_handler-list fancybox \">"+data.obj[2].commname+"</a>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "\n" +
                        "<div class=\"item-content\">\n" +
                        "<!-- rating  -->\n" +
                        "<div class=\"reviews-content\">\n" +
                        "<div class=\"star\"></div>\n" +
                        "<div class=\"item-number-rating\">\n" +
                        "评论(10)\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "<!-- end rating  -->\n" +
                        "\n" +
                        "<h4><a href=\"simple_product.html?comid="+data.obj[2].comid+"&type=2\" title=\"turkey qui\">"+data.obj[2].commname+"</a></h4>\n" +
                        "\n" +
                        "<!-- price -->\n" +
                        "<div class=\"item-price\">\n" +
                        "<span>\n" +
                        "<span class=\"woocommerce-Price-amount amount\">\n" +
                        "<span class=\"woocommerce-Price-currencySymbol\">$</span>"+data.obj[2].price+"\n" +
                        "</span>\n" +
                        "</span>\n" +
                        "</div>\n" +
                        "</div>")
                    $("#silder444").append("<div class=\"item-img products-thumb\">\n" +
                        "<a href=\"simple_product.jsp?comid="+data.obj[3].comid+"&type=2\">\n" +
                        "<div class=\"product-thumb-hover\">\n" +
                        "<img width=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[3].image2+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\" srcset=\"<%=basePath%>/uploadfiles/"+data.obj[3].image2+" 300w,<%=basePath%>/uploadfiles/"+data.obj[3].image2+" 150w,<%=basePath%>/uploadfiles/"+data.obj[3].image2+" 180w,<%=basePath%>/uploadfiles/"+data.obj[3].image2+" 600w\" sizes=\"(max-width: 300px) 100vw, 300px\">\n" +
                        "</div>\n" +
                        "</a>\n" +
                        "<!-- add to cart, wishlist, compare -->\n" +
                        "<div class=\"item-bottom clearfix\">\n" +
                        "<a rel=\"nofollow\" href=\"#\" class=\"button product_type_simple add_to_cart_button ajax_add_to_cart\" title=\"Add to Cart\">加入购物车</a>\n" +
                        "\n" +
                        "<a href=\"javascript:void(0)\" class=\"compare button\" rel=\"nofollow\" title=\"Add to Compare\">找相似</a>\n" +
                        "\n" +
                        "<div class=\"yith-wcwl-add-to-wishlist add-to-wishlist-248\">\n" +
                        "<div class=\"yith-wcwl-add-button show\" style=\"display:block\">\n" +
                        "<a href=\"#\" rel=\"nofollow\" class=\"add_to_wishlist\">添加购物车</a>\n" +
                        "<img src=\"images/wpspin_light.gif\" class=\"ajax-loading\" alt=\"loading\" width=\"16\" height=\"16\" style=\"visibility:hidden\" />\n" +
                        "</div>\n" +
                        "\n" +
                        "<div class=\"yith-wcwl-wishlistaddedbrowse hide\" style=\"display:none;\">\n" +
                        "<span class=\"feedback\">收藏</span>\n" +
                        "<a href=\"#\" rel=\"nofollow\">查找</a>\n" +
                        "</div>\n" +
                        "\n" +
                        "<div style=\"clear:both\"></div>\n" +
                        "<div class=\"yith-wcwl-wishlistaddresponse\"></div>\n" +
                        "</div>\n" +
                        "\n" +
                        "<div class=\"clear\"></div>\n" +
                        "<a href=\"#\" class=\"sm_quickview_handler-list fancybox \">"+data.obj[3].commname+"</a>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "\n" +
                        "<div class=\"item-content\">\n" +
                        "<!-- rating  -->\n" +
                        "<div class=\"reviews-content\">\n" +
                        "<div class=\"star\"></div>\n" +
                        "<div class=\"item-number-rating\">\n" +
                        "评论(10)\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "<!-- end rating  -->\n" +
                        "\n" +
                        "<h4><a href=\"simple_product.html?comid="+data.obj[2].comid+"&type=2\" title=\"turkey qui\">"+data.obj[3].commname+"</a></h4>\n" +
                        "\n" +
                        "<!-- price -->\n" +
                        "<div class=\"item-price\">\n" +
                        "<span>\n" +
                        "<span class=\"woocommerce-Price-amount amount\">\n" +
                        "<span class=\"woocommerce-Price-currencySymbol\">$</span>"+data.obj[3].price+"\n" +
                        "</span>\n" +
                        "</span>\n" +
                        "</div>\n" +
                        "</div>")



                })
            });

			model1.id=comid;
			//评价查询
            doData("/sj_evaluation/evaluationcount",model1,function (data) {
                var haop=0;
                var zhongp=0;
                var chap=0;
                var sum=0;
                for (var i=0;i<data.obj.length;i++){
                    if(data.obj[i].type=='好评'){
                        haop=data.obj[i].typecount;
                    } else  if (data.obj[i].type=='中评'){

                        zhongp=data.obj[i].typecount;
					}else {

                        chap=data.obj[i].typecount;
					}

				}
				sum=haop+zhongp+chap;
                $("#evacount").append("<tr>\n" +
                    "<td><a onclick=\"evaluationbtn('','"+data.obj[0].storeid+"',11)\" href=\"javascript:void(0)\">所有评价("+sum+")</a></td>\n" +
                    "<td><a onclick=\"evaluationbtn('好评','"+data.obj[0].storeid+"',11)\" href=\"javascript:void(0)\">好评("+haop+")</a></td>\n" +
                    "<td><a onclick=\"evaluationbtn('中评','"+data.obj[0].storeid+"',11)\" href=\"javascript:void(0)\">中评("+zhongp+")</a></td>\n" +
                    "<td><a onclick=\"evaluationbtn('差评','"+data.obj[0].storeid+"',11)\" href=\"javascript:void(0)\">差评("+chap+")</a></td>\n" +
                    "</tr>");
            })


		}else {

			alert("您搜索的商品不存在,请重新搜索");

		}

		//
        function evaluationbtn(tyoe,storeid,ddd) {
			model1.type=tyoe;
			model1.storeid=storeid;
			model1.id=comid;
			$("#pingjia").html("");
            doData("/sj_evaluation/evaluationgetme2",model1,function (data) {
                for (var i=0;i<data.obj.length;i++) {
                    data.obj[i].assesstime=Date.prototype.getShortDate(data.obj[i].assesstime);
                    $("#pingjia").append("<table class=\"table\">\n" +
                        "<tr>\n" +
                        "<td><div class=\"list-group comment-group\">\n" +
                        "<div style=\"float:left;\">\n" +
                        "<div class=\"list-group-item-heading\" style=\"float: left;\">\n" +
                        "<img src=\"image/pa3.jpg\" style=\"width: 70%;height: 70%;\" class=\"img-circle\"/>\n" +
                        "</div>\n" +
                        "\n" +
                        "<p style=\"color:darkgray;width:700px;\">"+data.obj[i].nickname+"\n" +
                        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n" +
                        "<font>"+data.obj[i].assesstime+"</font>\n" +
                        "</p>\n" +
                        "<p class=\"list-group-item-text\" >"+data.obj[i].assess+"</p>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "</td>\n" +
                        "</tr>\n" +
                        "\n" +
                        "</table>");
                }
            })




        }

//点击选择样式的方法
        function stylebtn(style) {
            styleid=style;
        }


        $("#shopbtn").click(function () {
            var nickuser='${sessionScope.get("usernick")}';
            if(nickuser==''){
                $(".bs-example-modal-sm4").modal();
				return false;
			}else{
                var id1=comid;
                var styleid1=styleid;
                var shopnumber=$("#shopnumber").val();
                if(styleid1==null){
                    $(".bs-example-modal-sm2").modal();
                    return false;
                }else{
                    window.location.href="<%=basePath%>/liyi_sj/stage/balance.jsp?comid="+id1+"&styleid="+styleid1+"&type=3&shopnumber="+shopnumber+"&cartidshuz='0,0'";
                }
            }
        })

        $("#shopbusbtn").click(function () {
			var st_id=styleid;
            var acount=$("#shopnumber").val();
            var model3=new Object();
            var uu_id='${sessionScope.get("userid")}';
            if (uu_id==''){
                $(".bs-example-modal-sm3").modal();
                return false;
			}else{
				model3.c_id=comid;
				model3.st_id=st_id;
				model3.acount=acount;
				model3.u_id=uu_id;
				model3.id="";
                if(st_id==null){
                    $(".bs-example-modal-sm2").modal();
                    return false;
                }else{
                    doData("yh_shoppingcart/add",model3,function (data) {
						if (data.code>0){
							$(".bs-example-modal-sm").modal();
	                        }

                    })
                }

			}




        });

        function shoucdianpu(storeid) {

            if(usern!='') {
				var collectobj=new Object();
				collectobj.s_id=storeid;
				collectobj.u_id=userid;
			doData("yh_collect/getcollect",collectobj,function (data) {
			    if (data.obj==""){
				collectobj.u_id=userid;
				doData("yh_collect/add",collectobj,function (data) {
				    if (data.code>0){
                        $("#yangs").html("店铺收藏成功!");
                        $(".bs-example-modal-sm3").modal();
                    }

                })
				}else{

				    $("#yangs").html("该店铺已收藏,是否<a style='color:red' href='<%=basePath%>/liyi_sj/stage/business/index.jsp?storeid="+storeid+"'>前往</a>该店铺");
                    $(".bs-example-modal-sm3").modal();

                }
            })

            }else{
                $(".bs-example-modal-sm3").modal();
			}





        }





        function getUrlParam(key) {
            // 获取参数
            var url = window.location.search;
            // 正则筛选地址栏
            var reg = new RegExp("(^|&)" + key + "=([^&]*)(&|$)");
            // 匹配目标参数
            var result = url.substr(1).match(reg);
            //返回参数值
            return result ? decodeURIComponent(result[2]) : null;
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
                    $(".bs-example-modal-sm5").modal();
                }
            });
        }


	</script>




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

