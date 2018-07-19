

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE html>
<html lang="en">
<head>	
	<title>About us</title>
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
	
	
	<link rel="stylesheet" href="css/custom.css" />
	<link rel="stylesheet" href="css/app-orange.css" id="theme_color" />
	<link rel="stylesheet" href="" id="rtl" />
	<link rel="stylesheet" href="css/app-responsive.css" /> 
</head>

<body class="page has-right-sidebar has-right-product-sidebar">
     

	<div class="body-wrapper theme-clearfix">
		<header id="header" class="header header-style1">
			<div class="header-top clearfix">
				<div class="container">
					<div class="rows">
						<!-- 最顶部布局 -->
						<div class="pull-left top1">						
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
											<a href="" style="color: white;">注册</a>
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
													<a onclick="maijiarukou()" class="item-link" href="my_account.jsp">
														<span class="menu-title">卖家中心</span>
													</a>
												</li>
												
												<li class="menu-cart">
													<a class="item-link" href="cart.jsp">
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
												<a class="item-link" href="checkout.jsp">
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
											<form method="get" action="">
												<div>
												   <input type="text" value="" name="s" placeholder="输入你要的礼品">	
													<button type="submit" title="Search" class="fa fa-search button-search-pro form-button"></button>
												</div>
											</form>
										<p id="top-p" style="padding: 12px 0px 0px 20px;"><a href="#">热销礼品</a>
											<a href="#">创意礼品</a> 
											<a href="#">送女友</a> 
											<a href="#">送老师</a> 
										   <a href="#">送亲朋</a>
										   <a href="#">送上司</a>
										   <a href="#">情人节礼物</a>
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
											<a class="cart-contents" href="cart.jsp" title="View your shopping cart">
												<span class="minicart-number">2</span>
											</a>
										</div>
										
										<div class="wrapp-minicart">
											<div class="minicart-padding">
												<div class="number-item">
													您的购物车里有<span>2</span>样物品
												</div>
												<!--购物车触摸事件,显示的购物车里面的信息-->
												<ul class="minicart-content">
													<li>
														<a href="simple_product.jsp" class="product-image">
															<img 	width="100" height="100" src="image/129.png" class="attachment-100x100 size-100x100 wp-post-image" alt="" 
																	srcset="image/129.png 150w, image/129.png 300w, image/129.png 180w, image/129.png 600w" 
																	sizes="(max-width: 100px) 100vw, 100px" />
														</a>
														
														<div class="detail-item">
															<div class="product-details">
																<h4>
																	<a class="title-item" href="simple_product.jsp">永生花</a>
																</h4>
																
																<div class="product-price">
																	<span class="price">
																		<span class="woocommerce-Price-amount amount">
																			<span class="woocommerce-Price-currencySymbol">￥</span>190.00
																		</span>
																	</span>
																	
																	<div class="qty">
																		<span class="qty-number">1</span>									
																	</div>
																</div>
																<!--删除购物车里面的单个商品-->
																<div class="product-action clearfix">
																	<a href="#" class="btn-remove" title="Remove this item">
																		<span class="fa fa-trash-o"></span>
																	</a>
																	<!--修改-->
																	<a class="btn-edit" href="cart.jsp" title="View your shopping cart">
																		<span class="fa fa-pencil"></span>
																	</a>    
																</div>
															</div>
														</div>
													</li>
													
													<li>
														<a href="simple_product.jsp" class="product-image">
															<img 	width="100" height="100" src="image/125.jpg" class="attachment-100x100 size-100x100 wp-post-image" alt="" 
																	srcset="image/125.jpg 150w, image/125.jpg 300w,  image/125.jpg 180w, images/1903/22.jpg 600w" 
																	sizes="(max-width: 100px) 100vw, 100px" />
														</a>
														
														<div class="detail-item">
															<div class="product-details">
																<h4>
																	<a class="title-item" href="simple_product.jsp">多功能吸尘器</a>
																</h4>
																
																<div class="product-price">
																	<span class="price">
																		<span class="woocommerce-Price-amount amount">
																			<span class="woocommerce-Price-currencySymbol">￥</span>350.00
																		</span>
																	</span>
																	
																	<div class="qty">
																		<span class="qty-number">1</span>									
																	</div>
																</div>
																
																<div class="product-action clearfix">
																	<a href="#" class="btn-remove" title="Remove this item">
																		<span class="fa fa-trash-o"></span>
																	</a>
																	
																	<a class="btn-edit" href="cart.jsp" title="View your shopping cart">
																		<span class="fa fa-pencil"></span>
																	</a>
																</div>
															</div>
														</div>
													</li>
												</ul>
												
												<div class="cart-checkout">
													<div class="price-total">
														<span class="label-price-total">总计</span>
														
														<span class="price-total-w">
															<span class="price">
																<span class="woocommerce-Price-amount amount">
																	<span class="woocommerce-Price-currencySymbol">￥</span>540.00
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
											<a class="item-link" href="#">
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
										
										<div id="ResMenuprimary_menu" class="collapse menu-responsive-wrapper">
											<ul id="menu-primary-menu" class="etrostore_resmenu">
												<li><a href="index.jsp">首页</a></li>
												<li><a href="<%=basePath%>/liyi_sj/photobook/new_file.html">相册书</a></li>
												<li><a href="checkout.jsp">积分商城</a></li>
												<li><a href="my_account.jsp">礼品攻略</a></li>
												<li><a href="shop.jsp">关于我们</a></li>
											</ul>
										</div>
									</div>
									
									<ul id="menu-primary-menu-1" class="nav nav-pills nav-mega etrostore-mega etrostore-menures col-lg-offset-2">
										<li><a href="index.jsp">首页</a></li>
										<li><a href="<%=basePath%>/liyi_sj/photobook/new_file.html">相册书</a></li>
										<li><a href="checkout.jsp">积分商城</a></li>
										<li><a href="my_account.jsp">礼品攻略</a></li>
										<li><a href="shop.jsp">关于我们</a></li>
										
									</ul>
								</div>
							</nav>
						</div>
						
						<!-- 购物车 -->
						<div class="top-form top-form-minicart etrostore-minicart pull-right">
							<div class="top-minicart-icon pull-right">
								<i style="padding:8px;" class="fa fa-shopping-cart"></i>
								<a class="cart-contents" href="cart.jsp" title="View your shopping cart">
									<span class="minicart-number">2</span>
								</a>
							</div>
						 
							<div class="wrapp-minicart">
								<div class="minicart-padding">
									<div class="number-item">
										您的购物车里有 <span>2</span>样物品
									</div>
									
									<ul class="minicart-content">
										<li>
											<a href="simple_product.jsp" class="product-image">
												<img 	width="100" height="100" src="image/126.jpg" class="attachment-100x100 size-100x100 wp-post-image" alt="" 
														srcset="image/126.jpg 150w, image/126.jpg 300w, image/126.jpg 180w, image/126.jpg 600w" 
														sizes="(max-width: 100px) 100vw, 100px" />
											</a>
											
											<div class="detail-item">
												<div class="product-details">
													<h4>
														<a class="title-item" href="simple_product.jsp">永生花</a>
													</h4>
													
													<div class="product-price">
														<span class="price">														
															<span class="woocommerce-Price-amount amount">
																<span class="woocommerce-Price-currencySymbol">￥</span>190.00
															</span>
														</span>	      
														
														<div class="qty">
															<span class="qty-number">1</span>									
														</div>
													</div>
													
													<div class="product-action clearfix">
														<a href="#" class="btn-remove" title="Remove this item">
															<span class="fa fa-trash-o"></span>
														</a>
														
														<a class="btn-edit" href="cart.jsp" title="View your shopping cart">
															<span class="fa fa-pencil"></span>
														</a>    
													</div>
												</div>
											</div>
										</li>
									  
										<li>
											<a href="simple_product.jsp" class="product-image">
												<img	 width="100" height="100" src="image/129.png" class="attachment-100x100 size-100x100 wp-post-image" alt="" 
														srcset="image/129.png 150w, image/129.png 300w, image/129.png 180w,image/129.png 600w" 
														sizes="(max-width: 100px) 100vw, 100px" />
											</a>
											
											<div class="detail-item">
												<div class="product-details">
													<h4>
														<a class="title-item" href="simple_product.jsp">永生花</a>
													</h4>
													
													<div class="product-price">
														<span class="price">
															<span class="woocommerce-Price-amount amount">
																<span class="woocommerce-Price-currencySymbol">￥</span>350.00
															</span>
														</span>
														
														<div class="qty">
															<span class="qty-number">1</span>									
														</div>
													</div>
													
													<div class="product-action clearfix">
														<a href="#" class="btn-remove" title="Remove this item">
															<span class="fa fa-trash-o"></span>
														</a>           
														
														<a class="btn-edit" href="cart.jsp" title="View your shopping cart">
															<span class="fa fa-pencil"></span>
														</a>
													</div>
												</div>
											</div>
										</li>
										
										<li>
											<a href="simple_product.jsp" class="product-image">
												<img	 width="100" height="100" src="images/1903/22-150x150.jpg" class="attachment-100x100 size-100x100 wp-post-image" alt="" 
														srcset="images/1903/22-150x150.jpg 150w, images/1903/22-300x300.jpg 300w, images/1903/22-180x180.jpg 180w, images/1903/22.jpg 600w" 
														sizes="(max-width: 100px) 100vw, 100px" />
											</a>
											
											<div class="detail-item">
												<div class="product-details">
													<h4>
														<a class="title-item" href="simple_product.jsp">小熊</a>
													</h4>
													
													<div class="product-price">
														<span class="price">
															<span class="woocommerce-Price-amount amount">
																<span class="woocommerce-Price-currencySymbol">￥</span>350.00
															</span>
														</span>
														
														<div class="qty">
															<span class="qty-number">1</span>									
														</div>
													</div>
													
													<div class="product-action clearfix">
														<a href="#" class="btn-remove" title="Remove this item">
															<span class="fa fa-trash-o"></span>
														</a>           
														
														<a class="btn-edit" href="cart.jsp" title="View your shopping cart">
															<span class="fa fa-pencil"></span>
														</a>
													</div>
												</div>
											</div>
										</li>
									</ul>
									
									<div class="cart-checkout">
										<div class="price-total">
											<span class="label-price-total">总计</span>
											
											<span class="price-total-w">
												<span class="price">
													<span class="woocommerce-Price-amount amount">
														<span class="woocommerce-Price-currencySymbol">$</span>540.00
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
				<div id="contents" role="main" class="main-page  col-lg-12 col-md-12 col-sm-12 col-xs-12" style="background-color: white;margin-top: 60px;">
					<div class="post-6 page type-page status-publish hentry">
						<div class="entry-content">
							<div class="entry-summary">
								<div class="vc_row wpb_row vc_row-fluid top-about margin-30">
									<div class="wpb_column vc_column_container vc_col-sm-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_text_column wpb_content_element ">
													<div class="wpb_wrapper">
														<p>
															<img class="alignnone size-full wp-image-454" src="images/1903/aboutus.jpg" alt="aboutus" width="1170" height="450" srcset="images/1903/aboutus.jpg 1170w, images/1903/aboutus-300x115.jpg 300w, images/1903/aboutus-768x295.jpg 768w, images/1903/aboutus-1024x394.jpg 1024w" sizes="(max-width: 1170px) 100vw, 1170px">
														</p>
														
														<h3>欢迎来到礼意平台</h3>
														
														<p>
															萌动的心语，谁打湿了眼眶？惊喜与感动是生活的调味品，然而想要送个独一无二的、有创意的、有个性的礼品是不是会让你头疼交加？但如今这些的问题都不再是问题，只要通过礼意礼品平台，就能轻松挑选到令你满意的礼品，礼意礼品平台将会为广大礼品需求爱好者，提供优质的产品预订服务，确保价格透明；礼意礼品平台不仅为个人也为企业在瞬息万变的商海中搭建了全新的，快捷、稳定的沟通平台，同时，也为企业在移动互联网上树立形象，拓展经营渠道，扩大对外交流，开展电子商务开辟了一条省时省力而又方便快捷的途径，创造了无限商机的可能。礼意礼品平台热忱欢迎广大商业人士和各界朋友与我们进行全方位的友好合作。想让他或她，他们感受到你花了很多心思、很多精力给他准备这份礼物吗？礼意礼品平台是你最佳的选择！
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							  
								<center><div class="vc_row wpb_row vc_row-fluid mid-about margin-bottom-60">
									<div class="wpb_column vc_column_container vc_col-sm-4">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_text_column wpb_content_element ">
													<div class="wpb_wrapper">
														<p>
															<img class="alignnone size-full wp-image-455" src="images/1903/icon-ab1.png" alt="icon-ab1" width="38" height="34">
														</p>
														
														<h3>支付安全</h3>
														
														<p>保证每一位客户的支付安全</p>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<div class="wpb_column vc_column_container vc_col-sm-4">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_text_column wpb_content_element ">
													<div class="wpb_wrapper">
														<p>
															<img class="alignnone size-full wp-image-457" src="images/1903/icon-ab2.png" alt="icon-ab2" width="30" height="36">
														</p>
														
														<h3>优良的品质</h3>
														
														<p>我们遵循给用户最好的宗旨</p>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<div class="wpb_column vc_column_container vc_col-sm-4">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_text_column wpb_content_element ">
													<div class="wpb_wrapper">
														<p>
															<img class="alignnone size-full wp-image-456" src="images/1903/icon-ab3.png" alt="icon-ab3" width="40" height="32">
														</p>
														
														<h3>物流快</h3>
														
														<p>给用户提供安全快速的物流</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								</center>
								<div class="vc_row-full-width vc_clearfix"></div>
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
         
			<form action="" method="post" class="login">
				<div class="block-content">
					<div class="col-reg registered-account">
						<div class="email-input">
							<input type="text" class="form-control input-text username" name="username" id="username" placeholder="账号" />
						</div>
						
						<div class="pass-input">
							<input class="form-control input-text password" type="password" placeholder="密码" name="password" id="password" />
						</div>
						
						<div class="ft-link-p">
							<a href="#" title="Forgot your password">忘记密码?</a>
						</div>
						
						<div class="actions">
							<div class="submit-login">
								<input type="submit" class="button btn-submit-login" name="login" value="登陆" />
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
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
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

