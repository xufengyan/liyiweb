﻿
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE html>
<html lang="en">
<head>	
	
	<meta charset="utf-8" />
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<!-- GOOGLE WEB FONTS -->
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	
	<!-- BOOTSTRAP 3.3.7 CSS -->
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../css/bootstrap.min.css" />
	
	<link rel="stylesheet" href="../css/js_composer/js_composer.min.css" />
	
	<link rel="stylesheet" href="../css/custom.css" />
	<link rel="stylesheet" href="../css/app-orange.css" id="theme_color" />
	<link rel="stylesheet" href="../css/app-responsive.css" /> 
	
       <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="../personcss/personal.css" rel="stylesheet" type="text/css">
		<script src="../AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
		<script src="../AmazeUI-2.4.2/assets/js/amazeui.js"></script>	
		<style>
			.am-input-group{
				margin-bottom: 20px;
			}

			
 </style>
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
											<a href="<%=basePath%>/liyi_sj/stage/register.jsp" style="color: white;">注册</a>
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
		</header>
		
      <div class="register-div" style="height: 800px;background-image: url(../image/bgregister2.jpg);">
      	<div id="oneform" class="col-lg-5 col-sm-6  col-lg-offset-2" style="padding-right: 0px;margin-bottom: 90px;">
      	<form action="" class="am-form register-form am-form-horizontal" data-am-validator>
       <fieldset>
      <center><p style="font-size:22px;">申请开店</p></center>
    <hr style="margin-bottom: 40px;border: 1px solid red;"/>
    
    <div class="am-form-group am-input-group-primary">
    <label  class="am-form-label" style="font-weight:500;width: 18%;float: left;">用户名:&nbsp;</label>
    <div style="padding: 0px;width: 82%;float: left;">
      <input type="text" class="am-form-field" maxlength="20" style="padding: 10px;" required/>
    </div>
  </div>
  
   <div class="am-form-group am-input-group-primary">
    <label  class="am-form-label" style="font-weight:500;width: 18%;float: left;">手机号:&nbsp;</label>
    <div style="padding: 0px;width: 82%;float: left;">
      <input type="tel" class="am-form-field" maxlength="11" style="padding: 10px;" required/>
    </div>
  </div>

  <div class="am-form-group am-input-group-primary">
    <label  class="am-form-label" style="font-weight:500;width: 18%;float: left;">店铺名:&nbsp;</label>
    <div style="padding: 0px;width: 82%;float: left;">
      <input type="text" class="am-form-field" maxlength="20" style="padding: 10px;" required/>
    </div>
  </div>
  
  <div class="am-form-group am-input-group-primary">
    <label  class="am-form-label" style="font-weight:500;width: 22%;float: left;">店铺描述:&nbsp;</label>
    <div style="padding: 0px;width: 77%;float: left;">
   <textarea class="am-form-field" rows="3" required></textarea>
    </div>
  </div>
  <div class="am-form-group am-input-group-primary">
    <label  class="am-form-label" style="font-weight:500;width: 18%;float: left;">经营地:&nbsp;</label>
    <div style="padding: 0px;width: 82%;float: left;">
      <input type="text" class="am-form-field" maxlength="20" style="padding: 10px;" required/>
    </div>
  </div>
    <a href="register2.html" class="am-btn am-btn-secondary am-btn-block" style="color: white;">下一步</a>
  </fieldset>
</form>
      	</div>
      	<div id="oneform" class="col-lg-3 col-sm-6  col-lg-offset-1" style="padding-right: 0px;margin-bottom: 90px;background-color: white;background-color:rgba(255,255,255,0.9);">	
      	<div style="padding:30px;padding-bottom: 10px;color:red;text-align: center;">
      		<h4 style="font-size: 16px;">开店须知</h4>
      	</div>
      	<div style="padding: 20px;padding-top: 0px;">
      		<p style="font-size: 12px;">
      			1.我在礼意已经开了个店了，我用别人的身份证再开一个店可以吗？
      		</p>
      		<p style="font-size: 12px;color: grey;">
      		答：不可以。未经礼意平台同意，将本人礼意账号提供给他人作开店使用，否则由此导致相关争议、诉讼及因店铺经营中的违法违规行为导致一切人身、财产权益损害，均由本人自行承担全部民事、行政及刑事责任。	
      		</p>
      		<p style="font-size: 12px;">
      			2、我可以把店铺转租给其他人吗?
      		</p>
      		<p style="font-size: 12px;color: grey;">
      		答：不可以。未经礼意平台同意，将本人礼意账号提供给他人作开店使用，否则由此导致相关争议、诉讼及因店铺经营中的违法违规行为导致一切人身、财产权益损害，均由本人自行承担全部民事、行政及刑事责任。	
      		</p>
      		<p style="font-size: 12px;">
      			3、我可以开多个淘宝店吗?
      		</p>
      		<p style="font-size: 12px;color: gray;">
      		答：不可以。一张身份证（一张营业执照）只能开一个礼意店铺。开店后请保持营业执照存续状态，不得注销；如若发现营业执照被注销、吊销，礼意将会对店铺做出永久关闭的处置。	
      		</p>
      		<p style="font-size: 12px;">
      		4、我已经开过礼意店，现在想要注销原来的店铺重新开店，可以吗?	
      		</p>
      		<p style="font-size: 12px;color: gray;">
      		答：不可以，礼意暂时不提供注销店铺的服务。用户一但成功开店就无法再用身份证（营业执照）另开一家礼意店铺。	
      		</p>
      	   <p style="font-size: 14px;color: red;">
      	   	&nbsp;&nbsp;&nbsp;&nbsp;注意:在礼意平台申请店铺需交付2000元押金(支付宝支付)
      	   	
      	   </p>
      		
      	</div>      	
      	
      </div>
      </div>
		
		<!--底部-->
		<footer id="footer" class="footer default theme-clearfix" style="margin-top: -2px;">
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
						
						<a href="register.html" title="Register" class="btn-reg-popup">前往注册</a>
					</div>
				</div>
			</form>
			<div class="clear"></div>
		</div>
	</div>
   
   
	
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
   
   </body>
</html>

