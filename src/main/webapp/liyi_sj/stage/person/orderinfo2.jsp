﻿


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
	<title>订单详情</title>
	<meta charset="utf-8" />
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<!-- GOOGLE WEB FONTS -->
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	
	<!-- BOOTSTRAP 3.3.7 CSS -->
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"/>
	<!--<link rel="stylesheet" href="../css/bootstrap.min.css" />-->
	
	<link rel="stylesheet" href="../css/js_composer/js_composer.min.css" />
	
	<link rel="stylesheet" href="../css/custom.css" />
	<link rel="stylesheet" href="../css/app-orange.css" id="theme_color" />
	<!--<link rel="stylesheet" href="" id="rtl" />-->
	<link rel="stylesheet" href="../css/app-responsive.css" /> 
	
	
	
	<link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="../personcss/personal.css" rel="stylesheet" type="text/css">
		<link href="../personcss/orstyle.css" rel="stylesheet" type="text/css">
		<script src="../AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
		<script src="../AmazeUI-2.4.2/assets/js/amazeui.js"></script>
</head>

<body class="page has-right-sidebar has-right-product-sidebar">
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
								<div class="account-title" style="font-size: 14px;">买家中心<span class="glyphicon glyphicon-chevron-down"></span></div>
                        
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
								<div class="account-title" style="font-size: 14px;">联系客服<span class="glyphicon glyphicon-chevron-down"></span></div>
                        
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
						<div id="main-menu" class="main-menu col-lg-offset-2 col-md-off1" style="font-weight: 900;">
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
												<li><a href="<%=basePath%>/liyi_sj/stage/index.jsp">首页</a></li>
												<li><a href="<%=basePath%>/liyi_sj/photobook/new_file.html">相册书</a></li>
												<li><a href="<%=basePath%>/liyi_sj/stage/integration.jsp">积分商城</a></li>
												<li><a href="<%=basePath%>/liyi_sj/stage/strategy.jsp">礼品攻略</a></li>
												<li><a href="<%=basePath%>/liyi_sj/stage/about_us.jsp">关于我们</a></li>
											</ul>
										</div>
									</div>



									<ul id="menu-primary-menu-1" class="nav nav-pills nav-mega etrostore-mega etrostore-menures">
										<li><a href="<%=basePath%>/liyi_sj/stage/index.jsp">首页</a></li>
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
											<input type="text" value="" name="s" class="search-query" placeholder="查询你想要的礼品" style="font-size: 12px;"/>
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
			
		<b class="line"></b>

		<div id="content" class="center">
			<div class="col-main">
				<div class="main-wrap">

					<div class="user-orderinfo">

						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单详情</strong></div>
						</div>
						<hr/>
						<!--进度条-->
						<div id="jindutiao1" class="m-progress">
							<div class="m-progress-list">
								<span class="step-1 step">
                                   <em class="u-progress-stage-bg"></em>
                                   <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                                   <p class="stage-name">拍下商品</p>
                                </span>
								<span class="step-2 step">
                                   <em class="u-progress-stage-bg"></em>
                                   <i class="u-stage-icon-inner">2<em class="bg"></em></i>
                                   <p class="stage-name">卖家发货</p>
                                </span>
								<span class="step-3 step">
                                   <em class="u-progress-stage-bg"></em>
                                   <i class="u-stage-icon-inner">3<em class="bg"></em></i>
                                   <p class="stage-name">确认收货</p>
                                </span>
								<span class="step-4 step">
                                   <em class="u-progress-stage-bg"></em>
                                   <i class="u-stage-icon-inner">4<em class="bg"></em></i>
                                   <p class="stage-name">交易完成</p>
                                </span>
								<span class="u-progress-placeholder"></span>
							</div>
							<div class="u-progress-bar total-steps-2">
								<div class="u-progress-bar-inner"></div>
							</div>
						</div>
						<div id="jindutiao2" class="m-progress">
							<div class="m-progress-list">
								<span class="step-1 step">
                                   <em class="u-progress-stage-bg"></em>
                                   <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                                   <p class="stage-name">拍下商品</p>
                                </span>

								<span class="step-2 step">
                                   <em class="u-progress-stage-bg"></em>
                                   <i class="u-stage-icon-inner">2<em class="bg"></em></i>
                                   <p class="stage-name">交易关闭</p>
                                </span>
								<span class="u-progress-placeholder"></span>
							</div>
							<div class="u-progress-bar total-steps-2" style="background-color: #23c279">
								<div class="u-progress-bar-inner" ></div>
							</div>
						</div>
						<div id="wuliu1" class="order-infoaside">
							<div class="order-logistics">
								<a href="logistics.jsp">
									<div class="icon-log">
										<i><img src="../image/receive.png"></i>
									</div>
									<div class="latest-logistics">
										<p class="text">已签收,签收人是青年城签收，感谢使用天天快递，期待再次为您服务</p>
										<div class="time-list">
											<span class="date">2015-12-19</span><span class="week">周六</span><span class="time">15:35:42</span>
										</div>
										<div class="inquire">
											<span class="package-detail">物流：天天快递</span>
											<span class="package-detail">快递单号: </span>
											<span class="package-number">373269427868</span>
											<a href="logistics.jsp">查看</a>
										</div>
									</div>
									<span class="am-icon-angle-right icon"></span>
								</a>
								<div class="clear"></div>
							</div>

						</div>
						<div class="order-infomain">

							<div class="order-top">
								<div class="th th-item">
									<td class="td-inner">商品</td>
								</div>
								<div class="th th-price">
									<td class="td-inner">单价</td>
								</div>
								<div class="th th-number">
									<td class="td-inner">数量</td>
								</div>
								<div class="th th-operation">
									<td class="td-inner">商品操作</td>
								</div>
								<div class="th th-amount">
									<td class="td-inner">合计</td>
								</div>
								<div class="th th-status">
									<td class="td-inner">交易状态</td>
								</div>
								<div class="th th-change">
									<td class="td-inner">交易操作</td>
								</div>
							</div>

							<div id="ordercontent" class="order-main">


							</div>
						</div>
					</div>
				</div>
			</div>
				
<aside class="menu">
				<ul>
					<li class="person">
						<a  style="color:#ffaa00;font-size:18px;">全部功能</a>
					</li>
					<li class="person">
						<a style="color:#DE0669;font-size:17px;">个人资料</a>
						<ul>
							<li> <a href="information2.jsp">个人信息</a></li>
							<li> <a href="safety2.jsp">安全设置</a></li>
							<li> <a href="address2.jsp">收货地址</a></li>
						</ul>
					</li>
					
					<li class="person">
						<a style="color:#DE0669;font-size:17px;">订单管理</a>
						<ul>
							<li> <a href="order2.jsp">我的订单</a></li>
						</ul>
					</li>

					<li class="person">
						<a style="color:#DE0669;font-size:17px;">退款维权</a>
						<ul>
							<li> <a href="change2.jsp">退款/售后管理</a></li>
							<li> <a href="#">投诉管理</a></li>
							<li> <a href="#">举报管理</a></li>
						</ul>
					</li>
					<li class="person">
						<a style="color:#DE0669;font-size:17px;">我的资产</a>
						<ul>
							<li> <a href="coupon2.jsp">优惠券 </a></li>
							<li> <a href="billist2.jsp">我的账单</a></li>
							<li> <a href="integral2.jsp">我的积分</a></li>
						</ul>
					</li>

					<li class="person">
						<a  style="color:#DE0669;font-size:17px;">我的小窝</a>
						<ul>
							<li> <a href="../cart.jsp">购物车</a></li>
							<li> <a href="../collection.jsp">我的收藏</a></li>
							<li> <a href="foot2.jsp">足迹</a></li>
							<li> <a href="comment2.jsp">评价</a></li>
							<li class="active"> <a href="news2.jsp">消息</a></li>
						</ul>
					</li>
					<li class="person">
						<a  style="color:#DE0669;font-size:17px;">攻略管理</a>
						<ul>
							<li> <a href="myselfstrage.jsp">我的攻略</a></li>
							<li> <a href="stragecollect.jsp">攻略收藏</a></li>
						</ul>
					</li>
				</ul>
	</li>
				</ul>

			</aside>
		</div>

		<!--底部-->
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
							<input type="text" class="form-control input-text username" name="phone" id="phone11" placeholder="账号" />
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
	<script src="<%= basePath %>/script/common/jquery-1.8.2.min.js"></script>
	<script src="<%= basePath %>/script/common/public.js"></script>
	<script src="<%= basePath %>/script/common/project.js"></script>

	<script>
        function btnlogin() {
            var obj = new Object();
            obj.phone = $("#phone11").val();
            obj.password = $("#password").val()
            doData("sj_information/useradmin2",obj,function (data) {

                if(data.code2>0){
                    window.location.reload();
                }else{
                    alert("账号或密码错误,请重新输入");
                }
            })
        }
		$("#jindutiao2").hide();
        $("#jindutiao1").hide();
        $("#wuliu1").hide();
	</script>
	<script>
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
                "<a href=\"<%=basePath%>/liyi_sj/stage/esclogin.jsp\" style=\"color: white;\">退出登陆</a>\n" +
                "</div>\n" +
                "</div>\n" +
                "</div>\n" +
                "</div>" +
                "</div>")


			var orderobj=new Object();
            orderobj.id=getURLParamValue("orderid");
			doData("sjyh_order/ordersviewgetMe",orderobj,function (data) {
                data.obj[0].ordertime=Date.prototype.getLongDate(data.obj[0].ordertime);
                var pricejia=data.obj[0].price;
                var commprice=data.obj[0].commprice;
                var realityjia= data.obj[0].reality;
                pricejia=pricejia.toFixed(2);
                commprice=commprice.toFixed(2);
                realityjia=realityjia.toFixed(2);

                if (data.obj[0].status=="待发货"){
                    $("#ordercontent").append("<div class=\"order-status2\">\n" +
                        "<div class=\"order-title\">\n" +
                        "<div class=\"dd-num\">订单编号：<a href=\"javascript:;\">"+data.obj[0].id+"</a></div>\n" +
                        "<span>成交时间："+data.obj[0].ordertime+"</span>\n" +
                        "</div>\n" +
                        "<div class=\"order-content\">\n" +
                        "<div class=\"order-left\">\n" +
                        "<ul class=\"item-list\">\n" +
                        "<li class=\"td td-item\">\n" +
                        "<div class=\"item-pic\">\n" +
                        "<a href=\"../simple_product.jsp?comid="+data.obj[0].c_id+"&type=2\" class=\"J_MakePoint\">\n" +
                        "<img src=\"<%=basePath%>/uploadfiles/"+data.obj[0].styleImage+"\" class=\"itempic J_ItemImg\">\n" +
                        "</a>\n" +
                        "</div>\n" +
                        "<div class=\"item-info\">\n" +
                        "<div class=\"item-basic-info\">\n" +
                        "<a href=\"../simple_product.jsp?comid="+data.obj[0].c_id+"&type=2\">\n" +
                        "<p>"+data.obj[0].commname+"</p>\n" +
                        "<p class=\"info-little\">颜色："+data.obj[0].stylename+"</p>\n" +
                        "</a>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "</li>\n" +
                        "<li class=\"td td-price\">\n" +
                        "<div class=\"item-price\">"+commprice+"</div>\n" +
                        "</li>\n" +
                        "<li class=\"td td-number\">\n" +
                        "<div class=\"item-number\">\n" +
                        "<span>×</span>"+data.obj[0].goodsnumber+"\n" +
                        "</div>\n" +
                        "</li>\n" +
                        "<li class=\"td td-operation\">\n" +
                        "<div class=\"item-operation\">\n" +
                        "<a href=\"refund2.jsp?orderid="+data.obj[0].id+"\">退款</a>\n" +
                        "</div>\n" +
                        "</li>\n" +
                        "</ul>\n" +
                        "</div>\n" +
                        "<div class=\"order-right\">\n" +
                        "<li class=\"td td-amount\">\n" +
                        "<div class=\"item-amount\">合计："+realityjia+"<p>优惠：<span>"+(pricejia-realityjia)+"</span></p>\n" +
                        "</div>\n" +
                        "</li>\n" +
                        "<div class=\"move-right\">\n" +
                        "<li class=\"td td-status\">\n" +
                        "<div class=\"item-status\">\n" +
                        "<p class=\"Mystatus\">买家已付款</p>\n" +
                        "<p class=\"order-info\"><a href=\"orderinfo2.jsp?orderid="+data.obj[0].id+"\">订单详情</a></p>\n" +
                        "</div>\n" +
                        "</li>\n" +
                        "<li class=\"td td-change\">\n" +
                        "<div onclick=\"tixing()\" class=\"am-btn am-btn-danger anniu\">提醒发货</div>\n" +
                        "</li>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "</div>")
					$("#jindutiao1").show();
                    $("#wuliu1").show();
                    //待发货

                }else if (data.obj[0].status=="待收货"){

                    $("#ordercontent").append("<div class=\"order-status2\">\n" +
                        "<div class=\"order-title\">\n" +
                        "<div class=\"dd-num\">订单编号：<a href=\"javascript:;\">"+data.obj[0].id+"</a></div>\n" +
                        "<span>成交时间："+data.obj[0].ordertime+"</span>\n" +
                        "</div>\n" +
                        "<div class=\"order-content\">\n" +
                        "<div class=\"order-left\">\n" +
                        "<ul class=\"item-list\">\n" +
                        "<li class=\"td td-item\">\n" +
                        "<div class=\"item-pic\">\n" +
                        "<a href=\"../simple_product.jsp?comid="+data.obj[0].c_id+"&type=2\" class=\"J_MakePoint\">\n" +
                        "<img src=\"<%=basePath%>/uploadfiles/"+data.obj[0].styleImage+"\" class=\"itempic J_ItemImg\">\n" +
                        "</a>\n" +
                        "</div>\n" +
                        "<div class=\"item-info\">\n" +
                        "<div class=\"item-basic-info\">\n" +
                        "<a href=\"../simple_product.jsp?comid="+data.obj[0].c_id+"&type=2\">\n" +
                        "<p>"+data.obj[0].commname+"</p>\n" +
                        "<p class=\"info-little\">颜色："+data.obj[0].stylename+"</p>\n" +
                        "</a>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "</li>\n" +
                        "<li class=\"td td-price\">\n" +
                        "<div class=\"item-price\">"+commprice+"</div>\n" +
                        "</li>\n" +
                        "<li class=\"td td-number\">\n" +
                        "<div class=\"item-number\">\n" +
                        "<span>×</span>"+data.obj[0].goodsnumber+"\n" +
                        "</div>\n" +
                        "</li>\n" +
                        "<li class=\"td td-operation\">\n" +
                        "<div class=\"item-operation\">\n" +
                        "<a href=\"refund2.jsp?orderid="+data.obj[0].id+"\">退款/退货</a>\n" +
                        "</div>\n" +
                        "</li>\n" +
                        "</ul>\n" +
                        "</div>\n" +
                        "<div class=\"order-right\">\n" +
                        "<li class=\"td td-amount\">\n" +
                        "<div class=\"item-amount\">合计："+realityjia+"<p>优惠：<span>"+(pricejia-realityjia)+"</span></p>\n" +
                        "</div>\n" +
                        "</li>\n" +
                        "<div class=\"move-right\">\n" +
                        "<li class=\"td td-status\">\n" +
                        "<div class=\"item-status\">\n" +
                        "<p class=\"Mystatus\">买家已付款</p>\n" +
                        "<p class=\"order-info\"><a href=\"orderinfo2.jsp?orderid="+data.obj[0].id+"\">订单详情</a></p>\n" +
                        "<p class=\"order-info\"><a href=\"logistics2.jsp?\">查看物流</a></p>\n" +
                        "<p class=\"order-info\"><a href=\"#\">延长收货</a></p>" +
                        "</div>\n" +
                        "</li>\n" +
                        "<li class=\"td td-change\">\n" +
                        "<div class=\"am-btn am-btn-danger anniu\">确认收货</div>\n" +
                        "</li>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "</div>");
                    $("#jindutiao1").show();
                    $("#wuliu1").show();
                    //已发货

                }else if(data.obj[0].status=="已签收"){
                    if (data.obj[0].evalustatus=="待评价"){
                        $("#ordercontent").append("<div class=\"order-status2\">\n" +
                            "<div class=\"order-title\">\n" +
                            "<div class=\"dd-num\">订单编号：<a href=\"javascript:;\">"+data.obj[0].id+"</a></div>\n" +
                            "<span>成交时间："+data.obj[0].ordertime+"</span>\n" +
                            "</div>\n" +
                            "<div class=\"order-content\">\n" +
                            "<div class=\"order-left\">\n" +
                            "<ul class=\"item-list\">\n" +
                            "<li class=\"td td-item\">\n" +
                            "<div class=\"item-pic\">\n" +
                            "<a href=\"../simple_product.jsp?comid="+data.obj[0].c_id+"&type=2\" class=\"J_MakePoint\">\n" +
                            "<img src=\"<%=basePath%>/uploadfiles/"+data.obj[0].styleImage+"\" class=\"itempic J_ItemImg\">\n" +
                            "</a>\n" +
                            "</div>\n" +
                            "<div class=\"item-info\">\n" +
                            "<div class=\"item-basic-info\">\n" +
                            "<a href=\"../simple_product.jsp?comid="+data.obj[0].c_id+"&type=2\">\n" +
                            "<p>"+data.obj[0].commname+"</p>\n" +
                            "<p class=\"info-little\">颜色："+data.obj[0].stylename+"</p>\n" +
                            "</a>\n" +
                            "</div>\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "<li class=\"td td-price\">\n" +
                            "<div class=\"item-price\">"+commprice+"</div>\n" +
                            "</li>\n" +
                            "<li class=\"td td-number\">\n" +
                            "<div class=\"item-number\">\n" +
                            "<span>×</span>"+ data.obj[0].goodsnumber+"\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "</ul>\n" +
                            "</div>\n" +
                            "<div class=\"order-right\">\n" +
                            "<li class=\"td td-amount\">\n" +
                            "<div class=\"item-amount\">合计："+realityjia+"<p>优惠：<span>"+(pricejia-realityjia)+"</span></p>\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "<div class=\"move-right\">\n" +
                            "<li class=\"td td-status\">\n" +
                            "<div class=\"item-status\">\n" +
                            "<p class=\"Mystatus\">交易成功</p>\n" +
                            "<p class=\"order-info\"><a href=\"orderinfo2.jsp?orderid="+data.obj[0].id +"\">订单详情</a></p>\n" +
                            "<p class=\"order-info\"><a href=\"logistics2.jsp?\">查看物流</a></p>\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "<li class=\"td td-change\">\n" +
                            "<div class=\"am-btn am-btn-danger anniu\">评价商品</div>\n" +
                            "</li>\n" +
                            "</div>\n" +
                            "</div>\n" +
                            "</div>\n" +
                            "</div>")

                        $("#jindutiao1").show();
                        $("#wuliu1").show();


                    } else {
                        //已评价
                        $("#ordercontent").append("<div class=\"order-status2\">\n" +
                            "<div class=\"order-title\">\n" +
                            "<div class=\"dd-num\">订单编号：<a href=\"javascript:;\">"+ data.obj[0].id+"</a></div>\n" +
                            "<span>成交时间："+ data.obj[0].ordertime+"</span>\n" +
                            "</div>\n" +
                            "<div class=\"order-content\">\n" +
                            "<div class=\"order-left\">\n" +
                            "<ul class=\"item-list\">\n" +
                            "<li class=\"td td-item\">\n" +
                            "<div class=\"item-pic\">\n" +
                            "<a href=\"../simple_product.jsp?comid="+ data.obj[0].c_id +"&type=2\" class=\"J_MakePoint\">\n" +
                            "<img src=\"<%=basePath%>/uploadfiles/"+ data.obj[0].styleImage+"\" class=\"itempic J_ItemImg\">\n" +
                            "</a>\n" +
                            "</div>\n" +
                            "<div class=\"item-info\">\n" +
                            "<div class=\"item-basic-info\">\n" +
                            "<a href=\"../simple_product.jsp?comid="+ data.obj[0].c_id+"&type=2\">\n" +
                            "<p>"+ data.obj[0].commname+"</p>\n" +
                            "<p class=\"info-little\">颜色："+ data.obj[0].stylename+"</p>\n" +
                            "</a>\n" +
                            "</div>\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "<li class=\"td td-price\">\n" +
                            "<div class=\"item-price\">"+realityjia+"</div>\n" +
                            "</li>\n" +
                            "<li class=\"td td-number\">\n" +
                            "<div class=\"item-number\">\n" +
                            "<span>×</span>"+ data.obj[0].goodsnumber+"\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "</ul>\n" +
                            "</div>\n" +
                            "<div class=\"order-right\">\n" +
                            "<li class=\"td td-amount\">\n" +
                            "<div class=\"item-amount\">合计："+realityjia+"<p>优惠：<span>"+(pricejia-realityjia)+"</span></p>\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "<div class=\"move-right\">\n" +
                            "<li class=\"td td-status\">\n" +
                            "<div class=\"item-status\">\n" +
                            "<p class=\"Mystatus\">交易成功</p>\n" +
                            "<p class=\"order-info\"><a href=\"orderinfo2.jsp?orderid="+ data.obj[0].id+"\">订单详情</a></p>\n" +
                            "<p class=\"order-info\"><a href=\"logistics2.jsp\">查看物流</a></p>\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "<li class=\"td td-change\">\n" +
                            "<div class=\"am-btn am-btn-danger anniu\">删除订单</div>\n" +
                            "</li>\n" +
                            "</div>\n" +
                            "</div>\n" +
                            "</div>\n" +
                            "</div>")
                        $("#jindutiao1").show();
                        $("#wuliu1").show();
                    }
                }else {
                    if (data.obj[0].status == "退款中") {
                        $("#ordercontent").append("<div class=\"order-status2\">\n" +
                            "<div class=\"order-title\">\n" +
                            "<div class=\"dd-num\">订单编号：<a href=\"javascript:;\">" + data.obj[0].id + "</a></div>\n" +
                            "<span>成交时间：" + data.obj[0].ordertime + "</span>\n" +
                            "</div>\n" +
                            "<div class=\"order-content\">\n" +
                            "<div class=\"order-left\">\n" +
                            "<ul class=\"item-list\">\n" +
                            "<li class=\"td td-item\">\n" +
                            "<div class=\"item-pic\">\n" +
                            "<a href=\"../simple_product.jsp?comid=" + data.obj[0].c_id + "&type=2\" class=\"J_MakePoint\">\n" +
                            "<img src=\"<%=basePath%>/uploadfiles/" + data.obj[0].styleImage + "\" class=\"itempic J_ItemImg\">\n" +
                            "</a>\n" +
                            "</div>\n" +
                            "<div class=\"item-info\">\n" +
                            "<div class=\"item-basic-info\">\n" +
                            "<a href=\"../simple_product.jsp?comid=" + data.obj[0].c_id + "&type=2\">\n" +
                            "<p>" + data.obj[0].commname + "</p>\n" +
                            "<p class=\"info-little\">颜色：" + data.obj[0].stylename + "</p>\n" +
                            "</a>\n" +
                            "</div>\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "<li class=\"td td-price\">\n" +
                            "<div class=\"item-price\">" + commprice + "</div>\n" +
                            "</li>\n" +
                            "<li class=\"td td-number\">\n" +
                            "<div class=\"item-number\">\n" +
                            "<span>×</span>" + data.obj[0].goodsnumber + "\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "</ul>\n" +
                            "</div>\n" +
                            "<div class=\"order-right\">\n" +
                            "<li class=\"td td-amount\">\n" +
                            "<div class=\"item-amount\">合计：" + realityjia + "<p>优惠：<span>" + (pricejia - realityjia) + "</span></p>\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "<div class=\"move-right\">\n" +
                            "<li class=\"td td-status\">\n" +
                            "<div class=\"item-status\">\n" +
                            "<p class=\"order-info\">" + data.obj[0].status + "</p>\n" +
                            "<p class=\"Mystatus\">交易关闭</p>\n" +
                            "<p class=\"order-info\"><a href=\"orderinfo2.jsp?orderid=" + data.obj[0].id + "\">订单详情</a></p>\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "<li class=\"td td-change\">\n" +
                            "<div  class=\"am-btn am-btn-danger anniu\">取消退款</div>\n" +
                            "</li>\n" +
                            "</div>\n" +
                            "</div>\n" +
                            "</div>\n" +
                            "</div>")

                        $("#jindutiao2").show();

                    } else {
                        $("#ordercontent").append("<div class=\"order-status2\">\n" +
                            "<div class=\"order-title\">\n" +
                            "<div class=\"dd-num\">订单编号：<a href=\"javascript:;\">" + data.obj[0].id + "</a></div>\n" +
                            "<span>成交时间：" + data.obj[0].ordertime + "</span>\n" +
                            "</div>\n" +
                            "<div class=\"order-content\">\n" +
                            "<div class=\"order-left\">\n" +
                            "<ul class=\"item-list\">\n" +
                            "<li class=\"td td-item\">\n" +
                            "<div class=\"item-pic\">\n" +
                            "<a href=\"../simple_product.jsp?comid=" + data.obj[0].c_id + "&type=2\" class=\"J_MakePoint\">\n" +
                            "<img src=\"<%=basePath%>/uploadfiles/" + data.obj[0].styleImage + "\" class=\"itempic J_ItemImg\">\n" +
                            "</a>\n" +
                            "</div>\n" +
                            "<div class=\"item-info\">\n" +
                            "<div class=\"item-basic-info\">\n" +
                            "<a href=\"../simple_product.jsp?comid=" + data.obj[0].c_id + "&type=2\">\n" +
                            "<p>" + data.obj[0].commname + "</p>\n" +
                            "<p class=\"info-little\">颜色：" + data.obj[0].stylename + "</p>\n" +
                            "</a>\n" +
                            "</div>\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "<li class=\"td td-price\">\n" +
                            "<div class=\"item-price\">" + commprice + "</div>\n" +
                            "</li>\n" +
                            "<li class=\"td td-number\">\n" +
                            "<div class=\"item-number\">\n" +
                            "<span>×</span>" + data.obj[0].goodsnumber + "\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "</ul>\n" +
                            "</div>\n" +
                            "<div class=\"order-right\">\n" +
                            "<li class=\"td td-amount\">\n" +
                            "<div class=\"item-amount\">合计：" + realityjia + "<p>优惠：<span>" + (pricejia - realityjia) + "</span></p>\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "<div class=\"move-right\">\n" +
                            "<li class=\"td td-status\">\n" +
                            "<div class=\"item-status\">\n" +
                            "<p class=\"order-info\" style=\"color=\"red\"\">" + data.obj[0].status + "</p>\n" +
                            "<p class=\"Mystatus\">交易关闭</p>\n" +
                            "<p class=\"order-info\"><a href=\"orderinfo2.jsp?orderid=" + data.obj[0].id + "\">订单详情</a></p>\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "<li class=\"td td-change\">\n" +
                            "<div class=\"am-btn am-btn-danger anniu\">删除订单</div>\n" +
                            "</li>\n" +
                            "</div>\n" +
                            "</div>\n" +
                            "</div>\n" +
                            "</div>")

						$("#jindutiao2").show();
                    }

                }

                })


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




        }else{

			$("#content").hide();

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



            <script type="text/javascript" src="../js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="../js/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
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
   
   </body>
</html>

