

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
	
	<meta charset="utf-8" />
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<!-- GOOGLE WEB FONTS -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	
	<!-- BOOTSTRAP 3.3.7 CSS -->
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
	<!--<link rel="stylesheet" href="../css/bootstrap.min.css" />-->
	
	<link rel="stylesheet" href="css/js_composer/js_composer.min.css" />
	
	<link rel="stylesheet" href="css/custom.css" />
	<link rel="stylesheet" href="css/app-orange.css" id="theme_color" />
	<link rel="stylesheet" href="css/app-responsive.css" /> 
	
       <link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="personcss/personal.css" rel="stylesheet" type="text/css">
		<script src="AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
		<script src="AmazeUI-2.4.2/assets/js/amazeui.js"></script>	
		<style>
			.am-input-group{
				margin-bottom: 20px;
			}
		</style>
</head>

<body class="page has-right-sidebar has-right-product-sidebar" style="margin: 0px">
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
											<div  id="lang_sel">
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
		</header>
		
      <div class="register-div">
      	<div class="col-lg-4 col-md-5  col-sm-6  col-lg-offset-2 col-md-offset-1">
      		<form action="" class="am-form register-form" data-am-validator>
       <fieldset>
      <center><p style="font-size:22px;">注册账号</p></center>
    <hr style="margin-bottom: 40px;border: 1px solid red;"/>
    
    <div class="am-input-group am-input-group-primary">
  <span class="am-input-group-label" style="padding: 0px 10px 0px 10px;font-size: 1rem;"><i class="am-icon-phone am-icon-fw"></i></span>
  <input type="text" id="phone123" class="am-form-field"  maxlength="11" placeholder="请输入手机号" required/>
</div>

 <div class="am-input-group am-input-group-primary">
  <span class="am-input-group-label" style="padding: 0px 10px 0px 10px;font-size: 1rem;"><i class="am-icon-user am-icon-fw"></i></span>
  <input id="newnickname" type="text" class="am-form-field" id="doc-vld-name-2" minlength="3" placeholder="请输入用户名（至少 3 个字符)" required/>
</div>

<div class="am-input-group am-input-group-primary">
  <span class="am-input-group-label" style="padding: 0px 10px 0px 10px;font-size: 1rem;"><i class="am-icon-lock am-icon-fw"></i></span>
  <input id="newpassword" type="password" class="am-form-field" id="doc-vld-pwd-1" placeholder="请输入6位数字的密码" pattern="^\d{6}$" required />
</div>

<div class="am-input-group am-input-group-primary">
  <span class="am-input-group-label" style="padding: 0px 10px 0px 10px;font-size: 1rem;"><i class="am-icon-lock am-icon-fw"></i></span>
  <input type="password" id="newquepassword" class="am-form-field" id="doc-vld-pwd-2" placeholder="请确认密码" data-equal-to="#doc-vld-pwd-1" required />
</div>

<div class="am-input-group am-input-group-primary">
  <input id="yanzma" type="text" class="am-form-field" minlength="6" placeholder="输入验证码" required/>
  <a href="javascript:void(0)" onclick="yanz()" class="am-input-group-label" style="padding: 0px 10px 0px 10px;font-size: 1rem;" id="huoquyanz">获取验证码</a>
</div>

    <button onclick="zhuc()" class="am-btn am-btn-secondary am-btn-block" type="submit">注册</button>
  </fieldset>
</form>
    
      	</div>
      
      </div>
		
		<!--底部-->
		<footer id="footer" class="footer default theme-clearfix" style="margin-top:0px;">
			<div class="footer-copyright style1">
				<div class="container">
					<!-- Copyright text -->
					<div class="copyright-text pull-left">
						<p>版权所有 &copy; 2018.礼意礼品网站，www.liyi.com</p>
					</div>
					
					<div class="sidebar-copyright pull-right">
						<div class="widget-1 widget-first widget text-4 widget_text">
							<div class="widget-inner">
								<div class="textwidget">
									<div class="payment">
										<a href="#">
											<img src="images/1903/paypal.png" alt="payment" title="payment" />
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
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


	<div  class="modal fade bs-example-modal-sm3" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" style="padding-top: 5%;">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content" style="width: 50%;margin-left: 30%;">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span></button>
				<div style="padding:40px 0px 20px 0px;">
					<p style="text-align: center;font-size: 14px;" id="xingxi"></p>

				</div>
				<center><button type="button" class="btn btn-info" data-dismiss="modal" style="margin-bottom:20px;padding:5px 15px;">确定</button></center>
			</div>
		</div>
	</div>

	<div  class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" style="padding-top: 5%;">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content" style="width: 50%;margin-left: 30%;">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span></button>
				<div style="padding:40px 0px 20px 0px;">
					<p style="text-align: center;font-size: 14px;" id="xingxi2"></p>

				</div>
				<center><button onclick="shux()" type="button" class="btn btn-info" data-dismiss="modal" style="margin-bottom:20px;padding:5px 15px;">确定</button></center>
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
            obj.phone = $("#phone11").val();
            obj.password = $("#password").val()
            doData("sj_information/useradmin2",obj,function (data) {
                if(data.code2>0){
                    window.location.href="<%=basePath%>/liyi_sj/stage/index.jsp";
                }else{
                    alert("账号或密码错误,请重新输入");
                }
            })
        }

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


        }








        var yanzma="";
        var yanztime=120;
        function yanz() {
			var obj=new Object();
			obj.phone=""+$("#phone123").val()
			obj.nickname=""+$("#newnickname").val();
			obj.password=""+$("#newpassword").val();
			if (obj.phone!=""&&obj.phone.length==11){
			    if (obj.nickname!=""){
			        if (obj.password!=""){
			            if ($("#newpassword").val()==$("#newquepassword").val()){
			                var ddddd=0;
			                doData("sj_information/getuser","",function (data) {

			                    for (var i=0;i<data.obj.length;i++){
			                        if (obj.phone==data.obj[i].phone){
										ddddd=1;
									}else{

									}
                                }
									if(ddddd!=1){
                                        var btn=$("#huoquyanz")
                                        btn.html(yanztime <= 0 ? "发送动态密码" : ("" + (yanztime) + "秒后可发送"));
                                        var hander = setInterval(function() {
                                            if (yanztime <= 0) {
                                                clearInterval(hander); //清除倒计时
                                                yanzma="";
                                                btn.html("发送动态密码");
                                                return false;
                                            }else {
                                                btn.attr("onclick","");
                                                btn.html("" + (yanztime--) + "秒后可重新发送");
                                            }
                                        }, 1000);

                                        doData("sj_commodity/duanxing",obj,function (data) {
                                            yanzma=data.yanzma;
                                            alert(data.yanzma);
                                        })
									}else{

                                        $("#xingxi").html("该账号已存在");
                                        $(".bs-example-modal-sm3").modal();

									}

                            })


						}else {

                            $("#xingxi").html("密码不一致,请确认密码");

                            $(".bs-example-modal-sm3").modal();

						}


					} else{

                        $("#xingxi").html("请设置您的密码");

                        $(".bs-example-modal-sm3").modal();
					}

				} else {
                    $("#xingxi").html("请输入用户名");

                    $(".bs-example-modal-sm3").modal();

				}

			}else{

			    $("#xingxi").html("请输入电话号码获取手机格式不正确");

			    $(".bs-example-modal-sm3").modal();

			}


        }


        function zhuc() {

            var obj=new Object();
            obj.phone=""+$("#phone123").val()
            obj.nickname=""+$("#newnickname").val();
            obj.password=""+$("#newpassword").val();
			obj.time="";
			obj.integral="1";
            obj.paypassword="123456";
            if (obj.phone!=""&&obj.phone.length==11){
                if (obj.nickname!=""){
                    if (obj.password!=""){
                        if ($("#newpassword").val()==$("#newquepassword").val()){

                            if($("#yanzma").val()==yanzma){

                                doData("sj_information/add",obj,function (data) {
                                    if(data.code>0){
                                        $("#xingxi2").html("注册成功,您可以去登陆了");
                                        $(".bs-example-modal-sm").modal();
									}

                                })


							}else{

                                $("#xingxi").html("验证码错误,请重新输入");
                                $(".bs-example-modal-sm3").modal();

							}

                        }else {

                            $("#xingxi").html("密码不一致,请确认密码");

                            $(".bs-example-modal-sm3").modal();

                        }


                    } else{

                        $("#xingxi").html("请设置您的密码");

                        $(".bs-example-modal-sm3").modal();
                    }

                } else {
                    $("#xingxi").html("请输入用户名");

                    $(".bs-example-modal-sm3").modal();

                }

            }else{

                $("#xingxi").html("请输入电话号码获取手机格式不正确");

                $(".bs-example-modal-sm3").modal();

            }
        }


        function shux() {

			window.location.reload();

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
   
   </body>
</html>

