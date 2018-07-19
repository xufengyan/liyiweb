<%--
  Created by IntelliJ IDEA.
  User: xiechangchun
  Date: 2018/5/15
  Time: 下午5:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init.jsp"%>
<html>
<head>
    <title>订单管理</title>
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet">
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>
</head>
<body>

<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
    <ul class="layui-tab-title">
        <li  class="layui-this">所有订单</li>
        <li>未发货</li>
        <li>已发货</li>
        <li>已签收</li>
    </ul>
    <div class="layui-tab-content" style="height: 669px;">
        <%--所有订单--%>
        <div class="layui-tab-item layui-show" style="height:auto">
            <iframe src="<%=basePath%>/business/allOrders" id="myframe" name="myFrameName" width="100%" scrolling="yes" wmode="window" frameborder="0" marginwidth="0" marginheight="0"></iframe>
        </div>

        <%--未发货订单--%>
        <div class="layui-tab-item" style="height: auto">
            <iframe src="<%=basePath%>/business/unShipped" id="unshippedframe" name="myFrameName" width="100%" scrolling="yes" wmode="window" frameborder="0" marginwidth="0" marginheight="0"></iframe>
        </div>

        <%--已发货订单--%>
        <div class="layui-tab-item" style="width: 915px;height: 669px;" id="shipped">
            <iframe src="<%=basePath%>/business/shipped" id="shippedframe" name="myFrameName" width="100%" scrolling="yes" wmode="window" frameborder="0" marginwidth="0" marginheight="0"></iframe>
        </div>

        <%--已签收订单--%>
        <div class="layui-tab-item" style="height: auto">
            <iframe src="<%=basePath%>/business/haveBeen" id="myiframe" name="myFrameName" width="100%" scrolling="yes" wmode="window" frameborder="0" marginwidth="0" marginheight="0"></iframe>
        </div>
    </div>
</div>



<script>

    layui.use(['element','laypage'],function () {
        var $ = layui.jquery,
            element = layui.element,
            laypage = layui.laypage;
    });


        //iframe自适应
    $(document).ready(function(){
        $("#myframe").load(function(){
             $(this).height(0); //用于每次刷新时控制IFRAME高度初始化
                var height = $(this).contents().height() + 10;
                $(this).height( height < 669 ? 669 : height );
            });
    });

    $(document).ready(function(){
        $("#myiframe").load(function(){
            $(this).height(0); //用于每次刷新时控制IFRAME高度初始化
            var height = $(this).contents().height() + 10;
            $(this).height( height < 669 ? 669 : height );
        });
    });

    $(document).ready(function(){
        $("#unshippedframe").load(function(){
            $(this).height(0); //用于每次刷新时控制IFRAME高度初始化
            var height = $(this).contents().height() + 10;
            $(this).height( height < 669 ? 669 : height );
        });
    });

    $(document).ready(function(){
        $("#shippedframe").load(function(){
            $(this).height(0); //用于每次刷新时控制IFRAME高度初始化
            var height = $(this).contents().height() + 10;
            $(this).height( height < 669 ? 669 : height );
        });
    });




</script>


</body>
</html>
