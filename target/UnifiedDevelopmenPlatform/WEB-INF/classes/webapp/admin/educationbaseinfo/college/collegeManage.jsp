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
    <title>高校管理</title>
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet" />
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>
</head>
<body>
<div class="layui-table-tool" id="tb">
    <div class="layui-btn-group">
    <button class="layui-btn layui-btn-small" id="btnAdd" >
        <i class="layui-icon">&#xe608;</i> 添加
    </button>
    <button class="layui-btn layui-btn-small" id="btnLoadData" >
        <i class="layui-icon">&#xe608;</i> 导入
    </button>
    </div>
    <input type="text"  style="width: 300px; height: 28px;" name="name" id="txtName" required  placeholder="请高校名称" autocomplete="off"/>
    <div class="layui-btn-group">
        <button class="layui-btn layui-btn-small" id="btnFind">
            <i class="layui-icon">&#xe615;</i> 搜索
        </button>
        <button class="layui-btn layui-btn-small layui-btn-warm" id="btnDeleteAll">
            <i class="layui-icon">&#xe640;</i> 批量删除
        </button>
    </div>
    <button class="layui-btn layui-btn-small" id="btnDownLoad" >
        <i class="layui-icon">&#xe61e;</i> 下载
    </button>
</div>
<table class="easyui-datagrid" title="高校信息管理" style="height:auto" id="dgCollege"
       data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tb'">
    <thead>
    <tr>
        <th data-options="field:'id1',checkbox:true"></th>
        <th data-options="field:'id',width:80">编号</th>
        <th data-options="field:'name',width:180">高校名称</th>
        <th data-options="field:'address',width:200">官网地址</th>
        <th data-options="field:'charger',width:100">负责人</th>
        <th data-options="field:'status',width:60">状态</th>
        <th data-options="field:'ids',formatter:jxmstc.formateOperateForEasyui" width="120"
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
<form  style="display: none;"  id="frmDownloadExcel" method="post" action="<%=basePath%>/college/loadout">
     <input type="hidden" id="txtHName" name="name"/>
</form>

<script src="<%=basePath%>/script/business/educationbaseinfo/college.js"></script>
</body>
</html>
