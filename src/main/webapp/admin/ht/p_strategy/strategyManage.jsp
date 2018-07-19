<%--
  Created by IntelliJ IDEA.
  User: wph-pc
  Date: 2018/05/15
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init.jsp"%>
<html>
<head>
    <title>礼品攻略管理</title>
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet" />
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>
</head>
<style>
    td{
        height: 35px;
    }
</style>
<body>
<div class="layui-table-tool" id="tb">

    <div class="layui-btn-group">
        <button class="layui-btn layui-btn-small" id="btnAdd" >
            <i class="layui-icon">&#xe608;</i> 添加
        </button>
        <%--<button class="layui-btn layui-btn-small" id="btnLoadData" hidden >--%>
            <%--<i class="layui-icon">&#xe608;</i> 导入--%>
        <%--</button>--%>
    </div>
    <input type="text"  style="width: 300px; height: 28px;" name="name" id="txtName" required  placeholder="请输入发布人姓名" autocomplete="off"/>
    <div class="layui-btn-group">
        <button class="layui-btn layui-btn-small" id="btnFind">
            <i class="layui-icon">&#xe615;</i> 搜索
        </button>
        <%--<button class="layui-btn layui-btn-small layui-btn-warm" id="btnDeleteAll" hidden>--%>
            <%--<i class="layui-icon">&#xe640;</i> 批量删除--%>
        <%--</button>--%>
    </div>
    <%--<button class="layui-btn layui-btn-small" id="btnDownLoad" hidden >--%>
        <%--<i class="layui-icon">&#xe61e;</i> 下载--%>
    <%--</button>--%>
</div>
<table class="easyui-datagrid" title="礼品攻略信息管理" style="height:auto" id="dgstrategy"
       data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tb'">
    <thead data-options="frozen:true">
    <tr >
        <th data-options="field:'id1',checkbox:true" ></th>
        <th data-options="field:'id',width:80" hidden="hidden">编号</th>
        <th data-options="field:'title',width:100">标题</th>
        <th data-options="field:'name',width:50">发布人</th>
        <th data-options="field:'time',width:150,formatter: formatDatebox">发布时间</th>
        <th data-options="field:'likenum',width:100">点赞数</th>
        <th data-options="field:'status',width:110">审核状态</th>
        <th data-options="field:'ids',formatter:form" width="150"
            align="center">操作</th>
    </tr>
    </thead>
</table>
<!--导入数据上传-->
<form  style="display: none;" enctype="multipart/form-data" id="frmUploadExcel">
    <input id="uploadExcelFile" type="file" name="file" onchange="doUploadExcel()"
           accept=".xls,.xlsx"/>
</form>
<!--导入数据导出-->
<form  style="display: none;"  id="frmDownloadExcel" method="post" action="<%=basePath%>/strategy/loadout">
    <input type="hidden" id="txtHName" name="name"/>
</form>
<script src="<%=basePath%>/script/business/ht/p_strategy.js"></script>

</body>
</html>
