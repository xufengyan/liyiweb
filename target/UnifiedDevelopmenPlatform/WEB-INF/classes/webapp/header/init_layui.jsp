<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<html>
<head>
    <title>礼意礼品网站-专注为你打造符合您心意的礼物</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0">
    <link href="<%= basePath %>/plugins/layui/css/layui.css" rel="stylesheet" />
    <link href="<%=basePath%>/css/history.css" rel="stylesheet" />
    <script src="<%= basePath %>/script/common/jquery-1.8.2.min.js"></script>
    <script src="<%= basePath %>/plugins/easyui/jquery.easyui.min.js"></script>
    <script src="<%= basePath %>/plugins/layui/layui.js"></script>
    <script src="<%= basePath %>/script/common/public.js"></script>
    <script src="<%= basePath %>/script/common/kb.js"></script>

</head>
<body>

</body>
</html>
