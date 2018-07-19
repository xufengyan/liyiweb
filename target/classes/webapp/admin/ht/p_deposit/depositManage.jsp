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

    </div>
    <input type="text"  style="width: 300px; height: 28px;" name="name" id="txtName" required  placeholder="请输入店铺名" autocomplete="off"/>
    <div class="layui-btn-group">
        <button class="layui-btn layui-btn-small" id="btnFind">
            <i class="layui-icon">&#xe615;</i> 搜索
        </button>

    </div>

</div>
<table class="easyui-datagrid" title="押金信息管理" style="height:auto" id="dgdeposit"
       data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tb'">
    <thead>
    <tr data-options="frozen:true">
        <th data-options="field:'id1',checkbox:true"></th>
        <th data-options="field:'id',width:80" hidden="hidden">编号</th>
        <th data-options="field:'name',width:50">用户名</th>
        <th data-options="field:'storename',width:100">店铺名</th>
        <th data-options="field:'deposit',width:100">押金</th>
        <th data-options="field:'status',width:70,formatter:formatStatus">状态</th>
        <th data-options="field:'ids',formatter:formone" width="150"
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
<script src="<%=basePath%>/script/business/ht/p_deposit.js"></script>

</body>
</html>
