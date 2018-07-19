<%@ page import="java.util.Random" %>
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
	<title>支付页面</title>
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
	<link rel="stylesheet" href="css/myself.css">
	<script src="js/jquery-1.7.2.min.js"></script>
	<script src="js/sanjiliandong/address.js"></script>
	<script src="js/buy_product.js"></script>

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
		
		<!-- 中间部分 -->
		<div class="container">
			<div class="row" style="background-color: white;margin:40px  0px 40px 0px;">
				<div id="contents" role="main" class="main-page  col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div style="margin-left: 20px;">
					<p style="font-size: 18px;">
					请仔细核对订单信息,确认无误后提交</p>
					</div>
				  <hr />
				<div id="payinfo">
				<form class="form-horizontal">
                  <div class="form-group">
             <label class="control-label" style="font-size: 16px;">确认地址&nbsp;/
             	<a type="button"data-toggle="modal" data-target="#exampleModal" style="color: #428bca;">
					<span class="glyphicon glyphicon-map-marker">更换新地址</span></a>
               </label>
               <select onchange="addressid()" id="Address" class="form-control input-lg" style="font-size: 14px;">

			</select>
              </div>
            </form>
				</div>
	
	     <tr class="table-responsive" style="padding: 10px 10px 10px 15px;">
	     	<p style="font-size: 16px;">确认订单信息</p>
          <table class="table">
         <tr style="border-bottom:3px solid #b2d1ff;color:gray;">
         	<td>店铺宝贝</td>
         	<td>商品属性</td>
         	<td>单价(元)</td>
         	<td>数量</td>
         	<td>优惠(元)</td>
         	<td>小计(元)</td>
         </tr>
			<tbody id="dingdanorder">
         <tr>
         <td style="padding: 20px 10px 0px 8px;">店铺:<a id="sn1" class="store-pay" href="#"></a></td>
         </tr>
        <tr style="color:gray;font-size: 13px;background-color:#f2f7ff;">
         	<td style="border-top: 1px dotted #b2d1ff;">
         	<a id="styleimage12" href="simple_product.jsp"><img id="styleimage11" style="float: left;width:55px;" src=""></a>
         	<span style="float:left;line-height:65px;padding-left: 10px;">
         	<a id="store-thing" href="simple_product.jsp"></a>
         	</span>
         	</td>
         	<td style="border-top: 1px dotted #b2d1ff;">
				<p  style="line-height: 65px;">礼物颜色:<span id="stna1"></span></p>
         	</td>
         	<td style="border-top: 1px dotted #b2d1ff;line-height: 65px;">
         	<p id="pr1" style="line-height: 65px;"></p>
         	</td>
         	<td style="border-top: 1px dotted #b2d1ff;">
			<div class="input-group" style="width: 100px;margin-top: 18px;">
  		<span class="input-group-addon" onclick="numberjian()" id="jian">
  		<span class="glyphicon glyphicon-minus"><a href="javascript:void(0)"></a></span>
 		 </span>
  		<input readonly="readonly" id="shopn" type="text" class="form-control" value="1" style="text-align:center;">
  		<span class="input-group-addon" onclick="numberadd()" id="add">
  	<span class="glyphicon glyphicon-plus"><a href="javascript:void(0)"></a></span>
  			</span>
		</div>
         	</td>
         	<td style="border-top: 1px dotted #b2d1ff;">
         		<p id="pr2" style="line-height: 65px;"></p>
         	</td>
         	<td style="border-top: 1px dotted #b2d1ff;">
         		<p id="pr3" style="line-height: 65px;color: red;"></p>
         	</td>
         </tr>
          <tr style="background-color: #f2f7ff;">
          	<td rowspan="2" colspan="3" style="border-top:2px solid white;border-right:2px solid white;">
           给卖家留言:<textarea id="liuyan" class="form-control" rows="3"style="resize:none" placeholder="请留言...."></textarea>
          	 <p class="pull-right" style="font-size: 12px;">0/500</p>
          	</td>
          	<td colspan="3" style="border-top:2px solid white;">
          <p style="margin:20px 0px 0px 10px;color: gray;">运送方式:普通配送&nbsp;&nbsp;快递&nbsp;&nbsp;免邮</p>
          	</td>

          </tr>
          <tr style="background-color: #f2f7ff;">
          	<td colspan="3" style="border-top:2px solid white;">
         <p style="margin:20px 0px 0px 10px;color: gray;">购买时间:
         	<span id="datatime"></span></p>

          	</td>
          </tr>
         <tr style="background-color: #f2f7ff;">
         	<td style="border-top:2px solid white;"></td>
         	<td style="border-top:2px solid white;"></td>
         	<td style="border-top:2px solid white;"></td>
         	<td style="border-top:2px solid white;"></td>
         	<td style="border-top:2px solid white;">
         <p style="padding-top: 10px;" class="pull-right">店铺合计(含运费):<span id="pr4" style="color: red;font-size: 16px;"></span></p>
         	</td>
         	<td style="border-top:2px solid white;"></td>
         </tr>
</tbody>
		  </table>



				</div>

					<div class="col-lg-offset-5 col-md-offset-6 pull-right" style="margin-top: 10px;">
						<table style="border:1px solid red;">
							<tr>
								<td>
									<p style="font-size: 14px;padding:20px 20px 0px 20px;" class="">实付款:
										<span style="color: darkgray;font-size: 30px;">￥</span>
										<span id="pr5" style="color: red;font-size: 25px;">158.00</span>
									</p>
									<p class="" style="padding:0px 20px 0px 20px;">送至:
										<span id="lianxiaddress" style="color: gray;">江西南昌新建红角洲管理处红角洲江西南昌新建红角洲管理处红角洲</span>
									</p>
									<p class="" style="padding:0px 20px 0px 20px;">手机号:
										<span id="lianxiphone" style="color: gray;">15307091234</span>
									</p>
									<p class="" style="padding:0px 20px 0px 20px;">收货人:
										<span id="lianxiname" style="color: gray;">公子无忧</span>
									</p>
								</td>
							</tr>
						</table>
						<a href="javascript:void(0);" class="btn btn-danger btn-lg pull-right" style="border-radius: 0 !important;margin-bottom:60px;" data-toggle="modal" data-target=".bs-example-modal-sm">提交订单</a>					</div>
			</div>
		</div>
   </div>
   
  <!-- 添加新地址弹框  -->
		<!-- 添加新地址弹框  -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4>添加新地址</h4>
					</div>
					<div class="modal-body">
						<form id="updateform">
							<div class="form-group">
								<label for="loginname" class="control-label">收货人:</label>
								<input type="text" class="form-control" id="loginname" name="loginname">
							</div>
							<div class="form-group">
								<label for="phone" class="control-label">电话:</label>
								<input type="text" class="form-control" id="phone" name="phone">
							</div>
							<div class="form-group" style="margin-left: -12px;font-size: 14px;">
								<label class="col-sm-12 control-label">所在地</label>
								<div class="col-sm-4">
									<select   name="input_province" id="input_province" class="form-control">
										<option value="">--请选择--</option></select>
								</div>
								<div class="col-sm-4">
									<select name="input_city" id="input_city" class="form-control">
										<option value=""></option>
									</select>
								</div>
								<div class="col-sm-4">
									<select name="input_area" id="input_area" class="form-control">
										<option value=""></option>
									</select>
								</div>
							</div>



							<div class="form-group">
								<label for="address" class="control-label">收货地址:</label>
								<textarea class="form-control" id="message-text" name="address"></textarea>
							</div>
							<div class="text-right">
								<span id="returnMessage" class="glyphicon"> </span>
								<button type="button" class="btn btn-default right" data-dismiss="modal">关闭</button>
								<button id="submitBtn" onclick="addressbtn()" type="button" class="btn btn-primary">确认</button>

							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
					 	
		
		<!-- 底部 -->
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

	<!-- 支付弹框 -->
	<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" style="padding-top: 5%;">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content" style="width: 50%;margin-left: 30%;">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span></button>
				<div style="padding:20px 0px 20px 0px;">
					<p style="text-align: center;font-size: 14px;">请输入支付密码!</p>
					<p style="color: red;font-size: 20px;text-align: center;">¥<span id="zfprice"></span></p>

					<p style="font-size:14px;">
					<center>
						<input id="zhifupassword" class="form-control" placeholder="请输入6位数密码" maxlength="6" type="password" style="width: 80%;"/>
					</center>
					</p>
				</div>
				<center><a type="button" onclick="ordersubmission()" class="btn btn-info"  style=";margin-bottom:20px;padding:5px 15px;">确认支付</a>
					<button type="button" class="btn btn-info" data-dismiss="modal" style=";margin-bottom:20px;padding:5px 15px;margin-left: 20px;">取消</button>
				</center>
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

        var usern='${sessionScope.get("usernick")}';
        var userid='${sessionScope.get("userid")}';
		if(userid!=''){
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
                "</div>"
            )

        }else{
            $("#contents").hide();
        }



        var comid=getURLParamValue("comid");
        var styleid=getURLParamValue("styleid");
        var shopnumber=getURLParamValue("shopnumber");
        var comid2=[];
        comid2=getURLParamValue("comid").split(",");
        var styleid2=[];
        styleid2=getURLParamValue("styleid").split(",");
        var shopnumber2=[];
        shopnumber2=getURLParamValue("shopnumber").split(",");

        var cartidshuz2=[];
		cartidshuz2=getURLParamValue("cartidshuz").split(",");



        var type=getURLParamValue("type");
        var cartid=getURLParamValue("cartid");
        var preice12=null;
        var ressid="";
        var obj=new Object();
        obj.user_id=userid;
        obj.addessid=ressid

        $(function () {
        if (userid!=''&&type==3){
            //查询当前用户地址
            doData("yh_address/getaddress",obj,function (data) {
                for (var i=0;i<data.obj.length;i++) {
                    if (data.obj[i].tacitly==1){
                        $("#Address").append("<option selected=\"selected\" value=\""+data.obj[i].id+"\" >\n" +
                            "<span>"+data.obj[i].receiver+"</span>&nbsp;&nbsp;&nbsp;&nbsp;\n" +
                            "<span>"+data.obj[i].phone+"</span>&nbsp;&nbsp;&nbsp;&nbsp;\n" +
                            "<span>地址： "+data.obj[i].province+" "+data.obj[i].city+" "+data.obj[i].area+" "+data.obj[i].address+"</span>\n" +
                            "</option>");

						$("#lianxiaddress").html(data.obj[i].province+" "+data.obj[i].city+" "+data.obj[i].area+" "+data.obj[i].address);
						$("#lianxiname").html(data.obj[i].receiver);
						$("#lianxiphone").html(data.obj[i].phone);


					}else{

                        $("#Address").append("<option value=\""+data.obj[i].id+"\" >\n" +
                            "<span>"+data.obj[i].receiver+"</span>&nbsp;&nbsp;&nbsp;&nbsp;\n" +
                            "<span>"+data.obj[i].phone+"</span>&nbsp;&nbsp;&nbsp;&nbsp;\n" +
                            "<span>地址： "+data.obj[i].province+" "+data.obj[i].city+" "+data.obj[i].area+" "+data.obj[i].address+"</span>\n" +
                            "</option>");
					}

                }
            })



			if (cartid==1){
                $("#dingdanorder").html("");
                for (var i=0;i<shopnumber2.length;i++){
					ordercart(shopnumber2[i],comid2[i],styleid2[i]);
                }

			}else{


                //查询购买商品信息
                obj.id=comid;
                obj.styleid=styleid;
                order(shopnumber,obj);


            }


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




		}

        })




        var sumprice=parseFloat(0);
        var countnumber=0;
		function ordercart(shopnumber2,comid2,styleid2) {
            var shopnu=shopnumber2;
            obj.id=comid2;
            obj.styleid=styleid2;
            doData("/sj_commodity/getmecommstyle2",obj,function (data) {
                var commprice=data.obj[0].price;
                commprice=parseFloat(commprice).toFixed(2);
                var price=commprice*shopnu;
                var shoptime=Date.prototype.getShortDate(Date.parse(new Date()));
                obj.u_id=userid;
                obj.s_id=data.obj[0].s_id;
                obj.requir1=commprice;
                doData("sj_commodity/getdiscount",obj,function (data2) {

                    var getcount=0;
                    var condition=0;
					if (data2.obj[0]==null){



					} else{

                        getcount=parseFloat(data2.obj[0].amount);
						condition=data2.obj[0].require1;

                    }

                    if (getcount!=null){
                        price=(price-getcount).toFixed(2);
                    }else{
                        getcount=0.00;
                    }
                    sumprice+=parseInt(price);
                    countnumber+=1;
                    $("#dingdanorder").append("<tr>\n" +
                        "         <td style=\"padding: 20px 10px 0px 8px;\">店铺:<a id=\"sn1\" class=\"store-pay\" href=\"#\">" + data.obj[0].storename + "</a></td>\n" +
                        "         </tr>\n" +
                        "        <tr style=\"color:gray;font-size: 13px;background-color:#f2f7ff;\">\n" +
                        "         \t<td style=\"border-top: 1px dotted #b2d1ff;\">\n" +
                        "         \t<a id=\"styleimage12\" href=\"simple_product.jsp?comid=" + data.obj[0].id + "&type=2\"><img id=\"styleimage11\" style=\"float: left;width:55px;\" src=\"<%=basePath%>/uploadfiles/" + data.obj[0].styleImage + "\"></a>\n" +
                        "         \t<span style=\"float:left;line-height:65px;padding-left: 10px;\">\n" +
                        "         \t<a id=\"store-thing\" href=\"simple_product.jsp\">" + data.obj[0].commname + "</a>\n" +
                        "         \t</span>\n" +
                        "         \t</td>\n" +
                        "         \t<td style=\"border-top: 1px dotted #b2d1ff;\">\n" +
                        "\t\t\t\t<p  style=\"line-height: 65px;\">礼物颜色:<span id=\"stna1\">" + data.obj[0].stylename + "</span></p>\n" +
                        "         \t</td>\n" +
                        "         \t<td style=\"border-top: 1px dotted #b2d1ff;line-height: 65px;\">\n" +
                        "         \t<p id=\"pr1"+countnumber+"\" style=\"line-height: 65px;\">" + commprice + "</p>\n" +
                        "         \t</td>\n" +
                        "         \t<td style=\"border-top: 1px dotted #b2d1ff;\">\n" +
                        "<p style=\"color: red;line-height: 65px\">X&nbsp;<span>" + shopnu + "</span></p>" +
                        "         \t</td>\n" +
                        "         \t<td style=\"border-top: 1px dotted #b2d1ff;\">\n" +
                        "         \t\t<p id=\"pr2\" style=\"line-height: 65px;\">"+getcount+"</p>\n" +
                        "         \t</td>\n" +
                        "         \t<td style=\"border-top: 1px dotted #b2d1ff;\">\n" +
                        "         \t\t<p id=\"pr3"+countnumber+"\" style=\"line-height: 65px;color: red;\">"+price+"</p>\n" +
                        "         \t</td>\n" +
                        "         </tr>\n" +
                        "          <tr style=\"background-color: #f2f7ff;\">\n" +
                        "          \t<td rowspan=\"2\" colspan=\"3\" style=\"border-top:2px solid white;border-right:2px solid white;\">\n" +
                        "           给卖家留言:<textarea id=\"liuyan"+countnumber+"\" class=\"form-control\" rows=\"3\"style=\"resize:none\" placeholder=\"请留言....\"></textarea>\n" +
                        "          \t <p class=\"pull-right\" style=\"font-size: 12px;\">0/500</p>\n" +
                        "          \t</td>\n" +
                        "          \t<td colspan=\"3\" style=\"border-top:2px solid white;\">\n" +
                        "          <p style=\"margin:20px 0px 0px 10px;color: gray;\">运送方式:普通配送&nbsp;&nbsp;快递&nbsp;&nbsp;免邮</p>\n" +
                        "          \t</td>\n" +
                        "\n" +
                        "          </tr>\n" +
                        "          <tr style=\"background-color: #f2f7ff;\">\n" +
                        "          \t<td colspan=\"3\" style=\"border-top:2px solid white;\">\n" +
                        "         <p style=\"margin:20px 0px 0px 10px;color: gray;\">购买时间:\n" +
                        "         \t<span id=\"datatime\">"+shoptime+"</span></p>\n" +
                        "\n" +
                        "          \t</td>\n" +
                        "          </tr>\n" +
                        "         <tr style=\"background-color: #f2f7ff;\">\n" +
                        "         \t<td style=\"border-top:2px solid white;\"></td>\n" +
                        "         \t<td style=\"border-top:2px solid white;\"></td>\n" +
                        "         \t<td style=\"border-top:2px solid white;\"></td>\n" +
                        "         \t<td style=\"border-top:2px solid white;\"></td>\n" +
                        "         \t<td style=\"border-top:2px solid white;\">\n" +
                        "         <p style=\"padding-top: 10px;\" class=\"pull-right\">店铺合计(含运费):<span id=\"pr4"+countnumber+"\" style=\"color: red;font-size: 16px;\">"+price+"</span></p>\n" +
                        "         \t</td>\n" +
                        "         \t<td style=\"border-top:2px solid white;\"></td>\n" +
                        "         </tr>"
                    );
                    $("#pr5").html(sumprice.toFixed(2));
                    $("#zfprice").html(sumprice.toFixed(2))
                });

            });
		}


        var comppp=null;
		function tjordercart() {
            var zhifuobj = new Object();
            zhifuobj.id = userid;
            var cartobj=new Object();

            for(var j=0;j<cartidshuz2.length;j++){
                cartobj.id=cartidshuz2[j];
                deletecart(cartobj);
            }
                doData("sj_information/getMe",zhifuobj,function (data) {
                    if(data.obj.paypassword==$("#zhifupassword").val()){
                        for (var i=0;i<shopnumber2.length;i++) {
                            comppp +=parseInt($("#pr1"+(i+1)).html()*0.2);
							var ordermodel = new Object();
                            var d = (new Date()).valueOf();
                            var radmo = ((1 + Math.random() * 0x1000000) | 0);
                            ordermodel.id = d + "" + radmo + "" + ((1 + Math.random() * 0x10000) | 0);
                            orderid2 = ordermodel.id;
                            ordermodel.c_id = comid2[i];
                            ordermodel.u_id = userid;
                            ordermodel.a_receiver = $("#lianxiname").html();
                            ordermodel.a_address = $("#lianxiaddress").html();
                            ordermodel.a_phone = $("#lianxiphone").html();
                            ordermodel.ordertime = Date.prototype.getLongDate(new Date());
                            ordermodel.goodsnumber = shopnumber2[i];
                            ordermodel.st_id = styleid2[i];
                            ordermodel.price = $("#pr1" + (i + 1)).html() * parseInt(shopnumber2[i]);
                            ordermodel.reality = $("#pr4" + (i + 1)).html();
                            ordermodel.status = "待发货";
                            ordermodel.note = $("#liuyan" + (i + 1)).val();
                            doData("sjyh_order/add", ordermodel, function (data) {
                                if (data.code > 0) {
                                    var userobj = new Object();
                                    userobj.id = userid;
                                    //查询用户信息
                                    doData("sj_information/getMe", userobj, function (data) {
                                        var integral = data.obj.integral;
                                        userobj.integral =""+(parseInt(integral)+comppp);
                                        doData("sj_information/edit", userobj, function (data) {
                                            if (data.code > 0) {
                                                window.location.href = "<%=basePath%>/liyi_sj/stage/paysuccessful.jsp?orderid=" + orderid2 + "&price=" + $("#pr5").html() + "&type=4";
                                            }
                                        })
                                    })
                                }
                            })

                        }
                    }else{
                        alert("支付密码错误");
                    }
                })

        }


        function deletecart(id) {
            doData("yh_shoppingcart/del",id,function (data) {





            })
        }




		function order(shopnumber,obj) {
    	doData("/sj_commodity/getmecommstyle2",obj,function (data) {
        var getcount=null;
        var condition=null;
        var price=data.obj[0].price*shopnumber;
        var price2=data.obj[0].price;
        preice12=price2;
        var storeid=data.obj[0].s_id;
		var styleimage=data.obj[0].styleImage;
		var commname=data.obj[0].commname;
		var stylename=data.obj[0].stylename;
		var storename=data.obj[0].storename;
        obj.u_id=userid;
        obj.s_id=storeid;
        obj.condition=price;
		$("#sn1").html(storename);
		//店铺待链接
		$("#sn1").attr("href","<%=basePath%>/liyi_sj/stage/simple_product.jsp?storeid="+storeid+"&type=6")
        $("#store-thing").html(commname);
        $("#store-thing").attr("href","<%=basePath%>/liyi_sj/stage/simple_product.jsp?comid="+comid+"&type=2")
        $("#stna1").html(stylename);
        $("#pr1").html(price2.toFixed(2));
        $("#pr3").html(price.toFixed(2));
        $("#pr4").html(price.toFixed(2));
        $("#pr5").html(price.toFixed(2));
        $("#shopn").val(shopnumber);
        $("#zfprice").html(price.toFixed(2));
		$("#datatime").html(Date.prototype.getShortDate(Date.parse(new Date())));
		$("#styleimage11").attr("src","<%=basePath%>/uploadfiles/"+styleimage);
		$("#styleimage12").attr("href","<%=basePath%>/liyi_sj/stage/simple_product.jsp?comid="+comid+"&type=2")
        doData("sj_commodity/getdiscount",obj,function (data) {
            getcount=data.obj[0].amount;
            condition=data.obj[0].require1;
            if (getcount!=null){
                price=price-getcount;
            }
            $("#pr2").html(getcount.toFixed(2));
			$("#pr3").html(price.toFixed(2));
			$("#pr4").html(price.toFixed(2));
            $("#pr5").html(price.toFixed(2));
			$("#zfprice").html(price.toFixed(2));
        });

    })


}


//获取选取的地址id
function addressid() {
    obj.ressid=$("#Address").val();
    doData("yh_address/getaddress",obj,function (data) {
        $("#lianxiaddress").html(data.obj[0].province+" "+data.obj[0].city+" "+data.obj[0].area+" "+data.obj[0].address);
        $("#lianxiname").html(data.obj[0].receiver);
        $("#lianxiphone").html(data.obj[0].phone);
    })


}


        //加的效果
 function  numberadd(){

    var num=$("#pr2").html();
    var pr1=$("#pr1").html();
    var n=null;

     if (parseInt($("#shopn").val())==10){

         n=parseInt($("#shopn").val());

     } else{
         n=parseInt($("#shopn").val())+1;
     }
    var sum=pr1*n-num
     $("#pr3").html(sum.toFixed(2));
     $("#pr4").html(sum.toFixed(2));
     $("#pr5").html(sum.toFixed(2));
     $("#zfprice").html(sum.toFixed(2));

     // var m=$("#shopnum").val();
    // var zongjia=preice12*m
	 // $("#zongjia").html(zongjia.toFixed(2));
            };
//减的效果
       function numberjian(){
           var num=$("#pr2").html();
           var pr1=$("#pr1").html();
           var n=null;
           if (parseInt($("#shopn").val())==1){
			   n=parseInt($("#shopn").val());
           } else{
               n=parseInt($("#shopn").val())-1;
           }
           var sum=pr1*n-num
           $("#pr3").html(sum.toFixed(2));
           $("#pr4").html(sum.toFixed(2));
           $("#pr5").html(sum.toFixed(2));
           $("#zfprice").html(sum.toFixed(2));

       };








//订单提交,积分获取
var orderid2;
function ordersubmission() {


    if(cartid==1){
        tjordercart();
	}else{
        var zhifuobj=new Object();
        zhifuobj.id=userid;
        var ordermodel=new Object();
        var d= (new Date()).valueOf();
        var radmo=((1+Math.random()*0x1000000)|0);
        ordermodel.id=d+""+radmo+""+((1+Math.random()*0x10000)|0);
        orderid2=ordermodel.id;
        ordermodel.c_id=comid;
        ordermodel.u_id=userid;
        ordermodel.a_receiver=$("#lianxiname").html();
        ordermodel.a_address=$("#lianxiaddress").html();
        ordermodel.a_phone=$("#lianxiphone").html();
        ordermodel.ordertime=Date.prototype.getLongDate(new Date());
        ordermodel.goodsnumber=$("#shopn").val();
        ordermodel.st_id=styleid;
        ordermodel.price=$("#pr1").html()*parseInt($("#shopn").val());
        ordermodel.reality=$("#pr5").html();
        ordermodel.status="待发货";
        ordermodel.note=$("#liuyan").val();
        doData("sj_information/getMe",zhifuobj,function (data) {
            if(data.obj.paypassword==$("#zhifupassword").val()){
                doData("sjyh_order/add",ordermodel,function (data) {
                    if(data.code>0){
                        var userobj=new Object();
                        userobj.id=userid;
                        //查询用户信息
                        doData("sj_information/getMe",userobj,function (data) {
                            var integral =data.obj.integral
                            userobj.integral=""+(parseInt(integral)+parseInt(($("#pr1").html()*0.2)));
                            doData("sj_information/edit",userobj,function (data) {
                                if(data.code>0){
                                    window.location.href="<%=basePath%>/liyi_sj/stage/paysuccessful.jsp?orderid="+orderid2+"&price="+$("#pr5").html()+"&type=4";
                                }
                            })
                        })
                    }
                })
            }else{
                alert("支付密码错误");
            }
        })

	}





}


function addressbtn() {

    var addressfrom=new Object();
	addressfrom.province=$("#input_province").val();
	addressfrom.city=$("#input_city").val();
	addressfrom.area=$("#input_area").val();
	addressfrom.phone=$("#phone").val();
	addressfrom.receiver=$("#loginname").val();
	addressfrom.address=$("#message-text").val();
	addressfrom.tacitly="1";
	addressfrom.id="";
	addressfrom.user_id=userid;

	if(addressfrom.phone==''||addressfrom.province==''||addressfrom.city==''||addressfrom.area==''||addressfrom.receiver==''||addressfrom.address==''){
	    alert("请将填写完整信息");
		return false;
	}else{
        doData("yh_address/addaddress",addressfrom, function (data) {
            if (data!= 0) {
                window.location.reload();
            }
        });
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





	<script type="text/javascript" src="js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery/js.cookie.min.js"></script>
	<script type="text/javascript" src="js/jquery/jquery.blockUI.min.js"></script>
	
	<script type="text/javascript" src="js/select2/select2.min.js"></script>

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
   <script>
   $('#exampleModal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var recipient = button.data('whatever') // Extract info from data-* attributes
  var modal = $(this)
  modal.find('.modal-title').text('New message to ' + recipient)
  modal.find('.modal-body input').val(recipient)
})
  </script> 
  <!-- 联动 --> 
 <script>
    $(function () {
        var html = "";
        $("#input_city").append(html); $("#input_area").append(html);
        $.each(pdata,function(idx,item){
            if (parseInt(item.level) == 0) {
                html += "<option value='" + item.names + "' exid='" + item.code + "'>" + item.names + "</option>";
            }
        });
        $("#input_province").append(html);
        $("#input_province").change(function(){
            if ($(this).val() == "") return;
            $("#input_city option").remove(); $("#input_area option").remove();
            var code = $(this).find("option:selected").attr("exid"); code = code.substring(0,2);
            var html = "<option value=''>--请选择--</option>"; $("#input_area").append(html);
            $.each(pdata,function(idx,item){
                if (parseInt(item.level) == 1 && code == item.code.substring(0,2)) {
                    html += "<option value='" + item.names + "' exid='" + item.code + "'>" + item.names + "</option>";
                }
            });
            $("#input_city").append(html);
        });
        $("#input_city").change(function(){
            if ($(this).val() == "") return;
            $("#input_area option").remove();
            var code = $(this).find("option:selected").attr("exid"); code = code.substring(0,4);
            var html = "<option value=''>--请选择--</option>";
            $.each(pdata,function(idx,item){
                if (parseInt(item.level) == 2 && code == item.code.substring(0,4)) {
                    html += "<option value='" + item.names + "' exid='" + item.code + "'>" + item.names + "</option>";
                }
            });
            $("#input_area").append(html);
        });
});
</script>

	<script src="js/balanceform.js"></script>
	<script src="js/bootstrap-validator.js"></script>
	<script>
        var form = $('#updateform');
        $(document).ready(function () {

            form.bootstrapValidator({
                message: '输入值不合法',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    loginname: {
                        message: '用户名不合法',
                        validators: {
                            notEmpty: {
                                message: '用户名不能为空'
                            },
                            stringLength: {
                                min: 3,
                                max: 30,
                                message: '请输入3到30个字符'
                            },
                            regexp: {
                                regexp: /^[a-zA-Z0-9_\. \u4e00-\u9fa5 ]+$/,
                                message: '用户名只能由字母、数字、点、下划线和汉字组成 '
                            }
                        }
                    },
                    phone: {
                        validators: {
                            notEmpty: {
                                message: '手机号不能为空'
                            },
                            regexp: {
                                regexp: "^([0-9]{11})?$",
                                message: '手机号码格式错误'
                            }
                        }
                    }, address: {
                        validators: {
                            notEmpty: {
                                message: '地址不能为空'
                            }, stringLength: {
                                min: 5,
                                max: 60,
                                message: '请输入5到60个字符'
                            }
                        }
                    }
                }
            });
        });
        $("#submitBtn").click(function () {
            //进行表单验证
            var bv = form.data('bootstrapValidator');
            bv.validate();
            if (bv.isValid()) {
                console.log(form.serialize());
                //发送ajax请求
                $.ajax({
                    url: 'validator.json',
                    async: false,//同步，会阻塞操作
                    type: 'GET',//PUT DELETE POST
                    data: form.serialize(),
                    complete: function (msg) {
                        console.log('完成了');
                    },
                    success: function (result) {
                        console.log(result);
                        if (result) {
                            window.location.reload();
                        } else {
                            $("#returnMessage").hide().html('<label class="label label-danger">修改失败!</label>').show(300);
                        }
                    }, error: function () {
                        $("#returnMessage").hide().html('<label class="label label-danger">修改失败!</label>').show(300);
                    }
                })
            }
        });

	</script>


</body>
</html>

