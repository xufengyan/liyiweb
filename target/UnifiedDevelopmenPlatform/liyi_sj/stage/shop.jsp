
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
    <title>Products Archive</title>
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

<body class="archive post-type-archive woocommerce post-type-archive-product">

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
                                            <a href="<%=basePath%>/liyi_sj/stageshop.jsp?category='创意礼品'&type=1">创意礼品</a>
                                            <a href="<%=basePath%>/liyi_sj/stageshop.jsp?category='送女友'&type=1">送女友</a>
                                            <a href="<%=basePath%>/liyi_sj/stageshop.jsp?category='送老师'&type=1">送老师</a>
                                            <a href="<%=basePath%>/liyi_sj/stageshop.jsp?category='送亲朋'&type=1">送亲朋</a>
                                            <a href="<%=basePath%>/liyi_sj/stageshop.jsp?category='送上司'&type=1">送上司</a>
                                            <a href="<%=basePath%>/liyi_sj/stageshop.jsp?category='情人节礼物'&type=1">情人节礼物</a>
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
        <div class="row" style="background-color: white; margin:40px  0px 40px 0px;padding-top: 10px;">
            <div id="contents" class="content col-lg-9 col-md-8 col-sm-8" role="main" style="margin-top:30px;">
                <div class="listing-top">
                    <div class="widget-1 widget-first widget rev-slider-widget-2 widget_revslider">
                        <div class="widget-inner">
                            <!-- OWL SLIDER -->
                            <div class="wpb_revslider_element wpb_content_element no-margin">
                                <div class="vc_column-inner ">
                                    <div class="wpb_wrapper">
                                        <div class="wpb_revslider_element wpb_content_element">
                                            <div id="main-slider" class="fullwidthbanner-container" style="position:relative; width:100%; height:auto; margin-top:0px; margin-bottom:0px">
                                                <ul class="my-catalogs">
                                                    <li style="border-bottom: 1px dotted darkgray;">
                                                        <span class="">热销礼品:</span>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?comname='爆炸盒子'">爆炸盒子</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?comname='走心口红礼盒'">走心口红礼盒</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?comname='创意花筒'">创意花筒</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?comname='光源照射吊坠'">光源照射吊坠</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?comname='ins花束'">ins花束</a>
                                                    </li>

                                                    <li style="border-bottom: 1px dotted darkgray;">
                                                        <span class="">创意礼品:</span>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?comname='diy漂流瓶'">diy漂流瓶</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?comname='萌宠咖啡杯'">萌宠咖啡杯</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?comname='diy台灯'">diy台灯</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?comname='ins糖果礼盒'">ins糖果礼盒</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?comname='软心捕梦网'">软心捕梦网</a>
                                                    </li>

                                                    <li style="border-bottom: 1px dotted darkgray;">
                                                        <span class="">专属定制:</span>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?comname='水晶球'">水晶球</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?comname='香水'">香水</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?comname='陶瓷'">陶瓷</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?comname='DIY马克杯'">DIY马克杯</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?comname='足银摆件'">足银摆件</a>
                                                    </li>

                                                    <li style="border-bottom: 1px dotted darkgray;">
                                                        <span class="">礼物用途:</span>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='送亲朋'&type=1">送亲朋</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='送好友'&type=1">送好友</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='送上司'&type=1">送上司</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='送同事'&type=1">送同事</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='送情侣'&type=1">送情侣</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='送老师'&type=1">送老师</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='生日'&type=1">生日</a>
                                                    </li>
                                                    <li style="border-bottom: 1px dotted darkgray;">
                                                        <span class="">节日庆典:</span>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='情人节'&type=1">情人节</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='圣诞节'&type=1">圣诞节</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='春节'&type=1">春节</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='女神节'&type=1">女神节</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='父(母)亲节'&type=1">父(母)亲节</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='教师节'&type=1">教师节</a>

                                                    </li>
                                                    <li>
                                                        <span class="">行业礼品:</span>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='IT行业'&type=1">IT行业</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='教育单位'&type=1">教育单位</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='金融单位'&type=1">金融单位</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='国企单位'&type=1">国企单位</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='房地产'&type=1">房地产</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='电商行业'&type=1">电商行业</a>
                                                        <a href="<%=basePath%>/liyi_sj/stage/shop.jsp?subcategory='娱乐行业'&type=1">娱乐行业</a>
                                                    </li>

                                                </ul>
                                                <div class="loadeding"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- OWL LIGHT SLIDER -->
                        </div>
                    </div>
                </div>

                <div id="container">
                    <div id="content" role="main">
                        <!--  产品中心 -->
                        <ul id="urlproducts" class="products-loop row grid clearfix">

                        </ul>

                        <div class="clear"></div>

                        <div class="products-nav clearfix">
                            <!-- 分页 -->
                            <nav style="margin-top:70px;" class="">
                                <ul class="pager">
                                    <li onclick="countsubtract()"><a href="javascript:void(0)">上一页</a></li>
                                    <li onclick="countadd()"><a href="javascript:void(0)">下一页</a></li>
                                    <li><a href="javascript:void(0)">当前页:&nbsp;<span id="dangpage" style="color: red;">1</span></a></li>
                                    <li><a href="javascript:void(0)">总页数:&nbsp;<span id="countpage" style="color: red;">1</span></a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>

            <aside id="right" class="sidebar col-lg-3 col-md-4 col-sm-4">
                <!-- 右边 价格筛选 -->
                <div class="widget-4 widget woocommerce_price_filter-3 woocommerce widget_price_filter">
                    <div class="widget-inner">
                        <div class="block-title-widget">
                            <h2><span>按价格</span></h2>
                        </div>

                        <form method="get" action="">
                            <div class="price_slider_wrapper">
                                <div class="price_slider" style="display:none;"></div>
                                <div class="price_slider_amount">
                                    <input type="text" id="min_price" name="min_price" value="100" data-min="150" placeholder="最低价">
                                    <input type="text" id="max_price" name="max_price" value="650" data-max="700" placeholder="最高价">

                                    <button type="submit" class="button">筛选</button>

                                    <div class="price_label" style="display:;">
                                        价格: <span class="from"></span> - <span class="to"></span>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <!-- 热卖中 -->
                <div class="widget-5 widget etrostore_best_seller_product-3 etrostore_best_seller_product">
                    <div class="widget-inner">
                        <div class="block-title-widget">
                            <h2><span>热卖中</span></h2>
                        </div>
                        <div id="best-seller-01" class="sw-best-seller-product">
                            <ul id="listrexiao" class="list-unstyled">

                            </ul>
                        </div>
                    </div>
                </div>
                <!-- 猜你喜欢 -->
                <div class="widget-5 widget etrostore_best_seller_product-3 etrostore_best_seller_product">
                    <div class="widget-inner">
                        <div class="block-title-widget">
                            <h2><span>猜你喜欢</span></h2>
                        </div>
                        <div id="best-seller-01" class="sw-best-seller-product">
                            <ul id="listlove" class="list-unstyled">

                            </ul>
                        </div>
                    </div>
                </div>
            </aside>
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

    //登陆信息展示
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





    var start=0;
    var limit=16;
    var count=1;
    var model1=new Object()
    var commname=null;
    var category=null;
    var subcategory=null;
    var type=getURLParamValue("type");
    if(type==1) {
        commname = getUrlParam("commname");
        if (commname != null) {
            commname = commname.substr(1);
            commname = commname.substring(0, commname.length - 1);
            model1.commname = commname;
        }
        category = getUrlParam("category");
        if (category != null) {
            category = category.substr(1);
            category = category.substring(0, category.length - 1);
            model1.category = category;
        }
        subcategory = getUrlParam("subcategory");
        if (subcategory != null) {
            subcategory = subcategory.substr(1);
            subcategory = subcategory.substring(0, subcategory.length - 1);
            model1.subcategory = subcategory;
        }

    }else {

        model1.commname=getUrlParam("commname");

    }

    doDataappend(model1,count);



    function doDataappend(model1,count){
        model1.start=(count-1)*limit;
        model1.limit=limit;
        $("#urlproducts").html("");
        doData("sj_commodity/commfandbyPage",model1,function (data) {
            total=parseInt(data.total/limit);
            if(data.total%limit==0){
                total=total;
            }else{
                total=total+1;
            }

            $("#dangpage").html(count);

            $("#countpage").html(total);

            for (var i=0;i<data.obj.length;i++) {
                $("#urlproducts").append("<li class=\"item col-lg-3 col-md-3 col-sm-4 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple\">\n" +
                    "<div class=\"products-entry item-wrap clearfix\">\n" +
                    "<div class=\"item-wrap\">\n" +
                    "<div class=\"item-detail\">\n" +
                    "<div class=\"item-img products-thumb\">\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\">\n" +
                    "<div class=\"product-thumb-hover\">\n" +
                    "<img width=\"300\" height=\"300\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+"\" class=\"attachment-shop_catalog size-shop_catalog wp-post-image\" alt=\"\" \n" +
                    "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 300w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 150w,<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 180w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 600w\" \n" +
                    "sizes=\"(max-width: 300px) 100vw, 300px\" />\n" +
                    "</div>\n" +
                    "</a>\n" +
                    "" +
                    "<!-- add to cart, wishlist, compare -->\n" +
                    "<div class=\"item-bottom clearfix\">\n" +
                    "<a rel=\"nofollow\" href=\"#\" class=\"button product_type_simple add_to_cart_button ajax_add_to_cart\" title=\"Add to Cart\">加入购物车</a>\n" +
                    "<a href=\"javascript:void(0)\" class=\"compare button\" rel=\"nofollow\" title=\"Add to Compare\">Compare</a>\n" +
                    "<div class=\"yith-wcwl-add-to-wishlist add-to-wishlist-248\">\n" +
                    "<div class=\"yith-wcwl-add-button show\" style=\"display:block\">\n" +
                    "<a href=\"#\" rel=\"nofollow\" class=\"add_to_wishlist\">Add to Wishlist</a>\n" +
                    "<img src=\"images/wpspin_light.gif\" class=\"ajax-loading\" alt=\"loading\" width=\"16\" height=\"16\" style=\"visibility:hidden\" />\n" +
                    "</div>\n" +
                    "<div class=\"yith-wcwl-wishlistaddedbrowse hide\" style=\"display:none;\">\n" +
                    "<span class=\"feedback\">Product added!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "<div class=\"yith-wcwl-wishlistexistsbrowse hide\" style=\"display:none\">\n" +
                    "<span class=\"feedback\">The product is already in the wishlist!</span>\n" +
                    "<a href=\"#\" rel=\"nofollow\">Browse Wishlist</a>\n" +
                    "</div>\n" +
                    "<div style=\"clear:both\"></div>\n" +
                    "<div class=\"yith-wcwl-wishlistaddresponse\"></div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"clear\"></div>\n" +
                    "<a href=\"#\" class=\"sm_quickview_handler-list fancybox \">Quick View </a>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "<div class=\"item-content\" style=\"text-align: center\">\n" +
                    "<h5>\n" +
                    "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\" title=\""+data.obj[i].commname+"\">"+data.obj[i].commname+"</a>\n" +
                    "</h5>\n" +
                    "<div class=\"item-price\">\n" +
                    "<span>\n" +
                    "<span class=\"woocommerce-Price-amount amount\">\n" +
                    "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i].price+"\n" +
                    "</span>\n" +
                    "</span>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</div>\n" +
                    "</li>");
            }
        })
    }


    function countadd() {
        count+=1;

        if (count > total) {
            count=total;
            alert("已经是最后一页了")
        }
        else {
            doDataappend(model1,count);
        }
    }

    function countsubtract() {
        count -= 1;
        if (count < 1) {
            count=1;
            alert("已经是最后一页了")
        }
        else {
            doDataappend(model1,count);
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

    //点击搜索的事件


    //热销排行连接数据库
    var start2=0;
    var limit2=6;
    var subcategory="";
    var model2=new Object();
    model2.limit=limit2;
    model2.start=start2;
    model2.subcategory=subcategory;
    doData("sj_commodity/getcomm",model2,function(data) {
        for (var i = 0; i < 6; i++) {
            $("#listrexiao").append("<li class=\"clearfix\">\n" +
                "<div class=\"item-inner\">\n" +
                "<div class=\"item-img\">\n" +
                "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\" >\n" +
                "<img \twidth=\"180\" height=\"180\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+"\" class=\"attachment-shop_thumbnail size-shop_thumbnail wp-post-image\" alt=\"\" \n" +
                "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 180w,<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 150w,<%=basePath%>/uploadfiles/"+data.obj[i].image1+" 300w, <%=basePath%>/uploadfiles/"+data.obj[i].image1+" 600w\" \n" +
                "sizes=\"(max-width: 180px) 100vw, 180px\" />\n" +
                "</a>\n" +
                "</div>\n" +
                "<div class=\"item-content\">\n" +
                "<div class=\"reviews-content\">\n" +
                "<div class=\"star\"></div>\n" +
                "<div class=\"item-number-rating\">"+data.obj[i].evcount+" 条评论(s)</div>\n" +
                "</div>\n" +
                "<h4><a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\">"+data.obj[i].commname+"</a></h4>\t\n" +
                "<div class=\"item-price\">\n" +
                "<span class=\"woocommerce-Price-amount amount\">\n" +
                "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i].price+"</span>\n" +
                "</div>\n" +
                "</div>\n" +
                "</div>\n" +
                "</li>");
        }
    });

    model2.subcategory="礼物用途";
    doData("sj_commodity/getcomm",model2,function(data) {
        for (var i = 0; i < 5; i++) {

            $("#listlove").append("<li class=\"clearfix\">\n" +
                "<div class=\"item-inner\">\n" +
                "<div class=\"item-img\">\n" +
                "<a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\" >\n" +
                "<img \twidth=\"180\" height=\"180\" src=\"<%=basePath%>/uploadfiles/"+data.obj[i].image2+"\" class=\"attachment-shop_thumbnail size-shop_thumbnail wp-post-image\" alt=\"\" \n" +
                "srcset=\"<%=basePath%>/uploadfiles/"+data.obj[i].image2+" 180w, <%=basePath%>/uploadfiles/"+data.obj[i].image2+" 150w, <%=basePath%>/uploadfiles/"+data.obj[i].image2+" 300w, <%=basePath%>/uploadfiles/"+data.obj[i].image2+" 600w\" \n" +
                "sizes=\"(max-width: 180px) 100vw, 180px\" />\n" +
                "</a>\n" +
                "</div>\n" +
                "<div class=\"item-content\">\n" +
                "<div class=\"reviews-content\">\n" +
                "<div class=\"star\"></div>\n" +
                "<div class=\"item-number-rating\">"+data.obj[i].evcount+" 条评论(s)</div>\n" +
                "</div>\n" +
                "<h4><a href=\"simple_product.jsp?comid="+data.obj[i].comid+"&type=2\">"+data.obj[i].commname+"</a></h4>\t\n" +
                "<div class=\"item-price\">\n" +
                "<span class=\"woocommerce-Price-amount amount\">\n" +
                "<span class=\"woocommerce-Price-currencySymbol\">￥</span>"+data.obj[i].price+"</span>\n" +
                "</div>\n" +
                "</div>\n" +
                "</div>\t\n" +
                "</li>");


        }


    });


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
</body>
</html>
