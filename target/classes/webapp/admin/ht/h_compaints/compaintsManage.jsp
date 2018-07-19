<%--
  Created by IntelliJ IDEA.
  User: wph-pc
  Date: 2017/10/9
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init.jsp"%>
<html>
<head>
    <title>投诉管理</title>
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet" />
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>
</head>
<style>
    td{height: 35px}
</style>
<body>
<div class="layui-table-tool" id="tb">
    <input type="text"  style="width: 300px; height: 28px;" name="name" id="txtName" required  placeholder="请输入投诉人名称" autocomplete="off"/>
    <div class="layui-btn-group">
        <button class="layui-btn layui-btn-small" id="btnFind">
            <i class="layui-icon">&#xe615;</i> 搜索
        </button>

        <button class="layui-btn layui-btn-small" id="btnFinda">
            <i class="layui-icon"></i>已处理
        </button>
        <button class="layui-btn layui-btn-small" id="btnFindb">
            <i class="layui-icon"></i>未处理
        </button>

        <button class="layui-btn layui-btn-small layui-btn-warm" id="btnDeleteAll">
            <i class="layui-icon">&#xe640;</i> 批量删除
        </button>
    </div>
    <button class="layui-btn layui-btn-small" id="btnDownLoad" >
        <i class="layui-icon">&#xe61e;</i> 下载
    </button>
</div>
<table class="easyui-datagrid" title="投诉信息管理" style="height:auto" id="dgCompaints"
       data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tb'">
    <thead>
    <tr>
        <th data-options="field:'id1',checkbox:true"></th>
        <th data-options="field:'id',width:80">编号</th>
        <th data-options="field:'name',width:80">用户名</th>
        <th data-options="field:'phone',width:100">手机号</th>
        <th data-options="field:'storename',width:100">店铺名</th>
        <th data-options="field:'content',width:100">投诉内容</th>
        <th data-options="field:'complaintstime',width:100,formatter: Date.prototype.getLongDate ">投诉时间</th>
        <th data-options="field:'status',width:100">状态</th>
        <th data-options="field:'processed',width:100">投诉结果</th>
        <th data-options="field:'ids',formatter:form" width="120"
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
<form  style="display: none;"  id="frmDownloadExcel" method="post" action="<%=basePath%>/p_compaints/loadout">
    <input type="hidden" id="txtHName" name="name"/>
</form>




<script src="<%=basePath%>/script/business/ht/h_compaints.js"></script>

</body>
</html>
