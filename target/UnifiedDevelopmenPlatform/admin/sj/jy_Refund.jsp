<%--
  Created by IntelliJ IDEA.
  User: xiechangchun
  Date: 2018/6/7
  Time: 下午7:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init.jsp"%>
<html>
<head>
    <title>退款管理</title>
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet" />
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>
</head>
<body>

<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
    <ul class="layui-tab-title">
        <li class="layui-this">退款管理</li>
    </ul>
    <div class="layui-tab-content" style="height:auto;">
        <div class="layui-tab-item layui-show">
             <iframe src="<%=basePath%>/Refund/find" id="myiframe" width="100%" scrolling="yes" wmode="window" frameborder="0"  marginwidth="0" marginheight="0"> </iframe>
        </div>
    </div>
</div>

<!-----------------------------script------------------------------------>

<script>
    //选项卡
    layui.use('element', function() {
        var $ = layui.jquery
            , element = layui.element;
    });


    //iframe
    $(document).ready(function () {
        $("#myiframe").load(function () {
            $(this).height(0);
            var height = $(this).contents().height()+10;
            $(this).height(height < 669 ? 669 : height);
        });
    });


</script>

</body>
</html>
