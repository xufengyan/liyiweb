
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
#oneright {width:30%;height: 30%;margin-left:5px;float: left;}		
} 
</style>
</head>

<body class="product-template-default single single-product woocommerce woocommerce-page">    
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
		
		<div class="container">
			<div class="row"style="background-color: white;margin:40px  0px 40px 0px;padding-top:30px;">
				<div id="contents-detail" class="content col-lg-12 col-md-12 col-sm-12" role="main">
					<div id="container">
						<div id="content" role="main">
							<div class="single-product clearfix">
								<div id="product-01" class="product type-product status-publish has-post-thumbnail product_cat-accessories product_brand-global-voices first outofstock featured shipping-taxable purchasable product-type-simple">
									<div class="product_detail row">
										<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 clear_xs">
											<div class="slider_img_productd">
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
											<form>
											<div class="content_product_detail">

												<div id="commoditytitle">


												</div>


												
													<div class="product-info clearfix">
													<div class="product-color">
													<font id="color-title" style="color:gray;font-size:15px;float: left;">礼物颜色:</font>

																	
													</div>
													</div>
													
													<div class="product-info clearfix">
													<div class="product-count">
													<font style="color:gray;font-size:15px;float: left;line-height: 30px;">购买数量:</font>
														<div class="input-group" style="margin-right: 15px;">
  													<span class="input-group-addon" id="jian">
  													<span class="glyphicon glyphicon-minus"><a href="javascript:void(0)"></a></span>
 									 				</span>
												<input type="text" class="form-control" value="1" style="text-align:center;">
  											<span class="input-group-addon" id="add">
  											<span class="glyphicon glyphicon-plus"><a href="javascript:void(0)"></a></span>
  											</span>
												</div>
												<p style="font-size: 12px;color: darkgray;line-height: 30px;" id="kucun"></p>
													</div>
													</div>



													<!-- 购买或加入购物车  -->
													<div class="product-info clearfix">
													<div class="product-buy">
													<a href="balance.jsp" type="button" class="btn btn-info" style="margin-right: 20px;">立即兑换</a>
													</div>
													</div>
													</form>
													
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
                                 <table class="table" style="border:1px solid lightgrey;" id="giftright">
                                    <tr>
                                    	<td style="padding: 10px 0px 10px 0px;text-align: center;">
                                    	<a href="#" style="font-size: 16px;color: red;">猜你喜欢</a></td>
                                    </tr>
									 <tbody id="lovecomm">
                                    <%--<tr id="oneright">--%>
                                    	<%--<td><img src="image/126.jpg">--%>
                              <%--<p class="storeshow">--%>
                                    <%--¥ 145.0--%>
                                    <%--</p>--%>
                                    	<%--</td>--%>
                                    <%--</tr>--%>
                                     <%--<tr id="oneright">--%>
                                    	<%--<td><img src="image/126.jpg">--%>
                              <%--<p class="storeshow">--%>
                                    <%--¥ 145.0--%>
                                    <%--</p>--%>
                                    	<%--</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr id="oneright">--%>
                                    	<%--<td><img src="image/126.jpg">--%>
                              <%--<p class="storeshow">--%>
                                    <%--¥ 145.0--%>
                                    <%--</p>--%>
                                    	<%--</td>--%>
                                    <%--</tr>--%>
									 </tbody>
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
											<div class="tab-pane active" id="tab-description">
												<%--<img src="image/des2.jpg"/>--%>
												<%--<img src="image/des5.jpg"/>--%>
											    <%--<img src="image/des3.jpg"/>--%>
											    <%--<img src="image/des4.jpg"/>--%>
											    <%--<img src="image/des1.jpg"/>--%>
											</div>
											
											<div class="tab-pane " id="tab-reviews">
												<div id="reviews">
													<div id="comments">
														<h2>评价</h2>
													</div>
													
													<div id="review_form_wrapper">
														<div id="review_form">
															<div id="respond" class="comment-respond">
																<table class="table comment-table">
																	<tr>
																		<td><a href="javascript:void(0)">所有评价(2563)</a></td>
																		<td><a href="javascript:void(0)">好评(1212)</a></td>
																		<td><a href="javascript:void(0)">中评(23)</a></td>
																		<td><a href="javascript:void(0)">差评(89)</a></td>
																	</tr>
     																</table>
     																
     																<div class="table-responsive">
 																	 <table class="table">
    																<tr>
    																	<td><div class="list-group comment-group">
    																<div style="float:left;">
    																<div class="list-group-item-heading" style="float: left;">
    																<img src="image/pa3.jpg" style="width: 70%;height: 70%;" class="img-circle"/>	    															
    																</div>
    																	
    																<p style="color:darkgray;width:700px;">公子无忧smdhjdhejkej11255
    																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    																<font>2019-10-07</font>
    																</p>
    																<p class="list-group-item-text" >
    																	直接送给朋友的，很漂亮，很喜欢直接送给朋友的，很漂亮，很喜欢直接送给朋友的，很漂亮，很喜欢直接送给朋友的，很漂亮，很喜欢直接送给朋友的，很漂亮，很喜欢
    																</p>
    																</div>
																</div>
    																</td>
    															</tr>
    																		
 																		</table>
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
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
<!-- 购物车弹框 -->
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




        var integralobj=new Object();
        var category=null;
        var comid=getURLParamValue("comid");
        integralobj.str_id=comid;
        if(comid!=null){

            doData("yh_integralgoods/getintegralgooods",integralobj,function (data) {
                category=data.obj[0].sub_id;
                $("#kucun").html("库存("+data.obj[0].stock+")件");
                $("#tab-description").append("<center><font size='50px'>"+data.obj[0].description+"</font></center>");

                $("#aimage1").attr("href", "<%=basePath%>/uploadfiles/" + data.obj[0].image1);
                $("#Loginiamge1").attr("src", "<%=basePath%>/uploadfiles/" + data.obj[0].image1);
                $("#Loginiamge1").attr("srcset","<%=basePath%>/uploadfiles/"+data.obj[0].image1+" 600w,<%=basePath%>/uploadfiles/"+data.obj[0].image1+" 150w,<%=basePath%>/uploadfiles/"+data.obj[0].image1+" 300w,<%=basePath%>/uploadfiles/"+data.obj[0].image1+" 180w");
                $("#lueimage1").attr("src","<%=basePath%>/uploadfiles/" + data.obj[0].image1);
                $("#lueimage1").attr("srcset","<%=basePath%>/uploadfiles/"+data.obj[0].image1+" 180w,<%=basePath%>/uploadfiles/"+data.obj[0].image1+" 150w,<%=basePath%>/uploadfiles/"+data.obj[0].image1+" 300w,<%=basePath%>/uploadfiles/"+data.obj[0].image1+" 600w")

                $("#aimage2").attr("href", "<%=basePath%>/uploadfiles/" + data.obj[0].image2);
                $("#Loginiamge2").attr("src", "<%=basePath%>/uploadfiles/" + data.obj[0].image2);
                $("#Loginiamge2").attr("srcset","<%=basePath%>/uploadfiles/"+data.obj[0].image2+" 600w,<%=basePath%>/uploadfiles/"+data.obj[0].image2+" 150w,<%=basePath%>/uploadfiles/"+data.obj[0].image2+" 300w,<%=basePath%>/uploadfiles/"+data.obj[0].image2+" 180w");
                $("#lueimage2").attr("src","<%=basePath%>/uploadfiles/" + data.obj[0].image2);
                $("#lueimage2").attr("srcset","<%=basePath%>/uploadfiles/"+data.obj[0].image2+" 180w,<%=basePath%>/uploadfiles/"+data.obj[0].image2+" 150w,<%=basePath%>/uploadfiles/"+data.obj[0].image2+" 300w,<%=basePath%>/uploadfiles/"+data.obj[0].image2+" 600w")

                $("#aimage3").attr("href", "<%=basePath%>/uploadfiles/" + data.obj[0].image3);
                $("#Loginiamge3").attr("src", "<%=basePath%>/uploadfiles/" + data.obj[0].image3);
                $("#Loginiamge3").attr("srcset","<%=basePath%>/uploadfiles/"+data.obj[0].image3+" 600w,<%=basePath%>/uploadfiles/"+data.obj[0].image3+" 150w,<%=basePath%>/uploadfiles/"+data.obj[0].image3+" 300w,<%=basePath%>/uploadfiles/"+data.obj[0].image3+" 180w");
                $("#lueimage3").attr("src","<%=basePath%>/uploadfiles/" + data.obj[0].image3);
                $("#lueimage3").attr("srcset","<%=basePath%>/uploadfiles/"+data.obj[0].image3+" 180w,<%=basePath%>/uploadfiles/"+data.obj[0].image3+" 150w,<%=basePath%>/uploadfiles/"+data.obj[0].image3+" 300w,<%=basePath%>/uploadfiles/"+data.obj[0].image3+" 600w")

                $("#aimage4").attr("href", "<%=basePath%>/uploadfiles/" + data.obj[0].image4);
                $("#Loginiamge4").attr("src", "<%=basePath%>/uploadfiles/" + data.obj[0].image4);
                $("#Loginiamge4").attr("srcset","<%=basePath%>/uploadfiles/"+data.obj[0].image4+" 600w,<%=basePath%>/uploadfiles/"+data.obj[0].image4+" 150w,<%=basePath%>/uploadfiles/"+data.obj[0].image4+" 300w,<%=basePath%>/uploadfiles/"+data.obj[0].image4+" 180w");
                $("#lueimage4").attr("src","<%=basePath%>/uploadfiles/" + data.obj[0].image4);
                $("#lueimage4").attr("srcset","<%=basePath%>/uploadfiles/"+data.obj[0].image4+" 180w,<%=basePath%>/uploadfiles/"+data.obj[0].image4+" 150w,<%=basePath%>/uploadfiles/"+data.obj[0].image4+" 300w,<%=basePath%>/uploadfiles/"+data.obj[0].image4+" 600w")


				$("#commoditytitle").append("<h1 class=\"product_title entry-title\">"+data.obj[0].commname+"</h1>\n" +
                    "\n" +
                    "<div class=\"reviews-content\">\n" +
                    "<div class=\"star\"></div>\n" +
                    "<a href=\"#reviews\" class=\"woocommerce-review-link\" rel=\"nofollow\"><span class=\"count\">0</span> 评分</a>\n" +
                    "</div>\n" +
                    "<div class=\"description\" itemprop=\"description\">\n" +
                    "<p>"+data.obj[0].title+"</p>\n" +
                    "</div>\n" +
                    "<div class=\"product-info clearfix\">\n" +
                    "<div>\n" +
                    "<p class=\"price\"><span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\"></span>"+data.obj[0].integral+" 积分</span>\n" +
                    "<span class=\"pull-right\">有现货</span>\n" +
                    "</p>\n" +
                    "</div>\n" +
                    "</div>");




                var styleobj=new Object();
                styleobj.id=comid;
                doData("/sj_commodity/getmecommstyle",styleobj,function (data) {

                    for (var i=0;i<data.obj.length;i++){
                        $("#color-title").append("<div class=\"btn-group\"><button id=\"checo"+(i+1)+"\" onclick=\"stylebtn('"+data.obj[i].styleid+"')\" type=\"button\" class=\"btn btn-default\">"+data.obj[i].stylename+"</button></div>\n");
                    }
                })




                var model2=new Object();
                model2.limit=5;
                model2.start=0;
                var model3=new Object();
                model3.id=category;
                //执行相关推荐的查询
                doData("p_category/getMe",model3,function (data2) {
                    model2.subcategory=data2.obj.subcategory;
                    doData("sj_commodity/getcomm",model2,function (data) {
                        for (var i=0;i<data.obj.length;i++){
                            var commprice=data.obj[i].price;
                            commprice=commprice.toFixed();
                            $("#lovecomm").append("<tr id=\"oneright\">\n" +
                                "<td><a href=\"<%=basePath%>/liyi_sj/stage/simple_product.jsp?comid="+data.obj[i].comid+"&type=2\"><img src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+"\">\n" +
                                "<p class=\"storeshow\">\n" +
                                "¥ "+commprice+"\n" +
                                "</p></a>\n" +
                                "</td>\n" +
                                "</tr>")
                        }
                    });
                })

            })



            }else{
            alert("搜索的商品不存在")

		}


        function stylebtn(style) {
            styleid=style;
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
   
   <script>
   	$(document).ready(function(){
   		 $('#addcart').attr('data-traget', 'true');
   		
   		
   	});
   	
   	
   	
   </script>
   
   
   
   
   </body>
</html>

