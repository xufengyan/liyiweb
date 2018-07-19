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
    <title>订单管理</title>
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet" />
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>
</head>
<style>
    td{height: 35px}
</style>
<body>
<div class="layui-table-tool" id="tb">

        <input type="text"  style="width: 300px; height: 28px;" name="name" id="txtName" required  placeholder="请输入店铺名称" autocomplete="off"/>
    <div class="layui-btn-group">
        <button class="layui-btn layui-btn-small" id="btnFind">
            <i class="layui-icon">&#xe615;</i> 搜索
        </button>

            <button class="layui-btn layui-btn-small" id="btnFinda">
                <i class="layui-icon"></i>已签收
            </button>

            <button class="layui-btn layui-btn-small" id="btnFindc">
                <i class="layui-icon"></i>待发货
            </button>
            <button class="layui-btn layui-btn-small" id="btnFindd">
                <i class="layui-icon"></i>已发货
            </button>

        <button class="layui-btn layui-btn-small layui-btn-warm" id="btnDeleteAll">
            <i class="layui-icon">&#xe640;</i> 批量删除
        </button>
    </div>
    <button class="layui-btn layui-btn-small" id="btnDownLoad" >
        <i class="layui-icon">&#xe61e;</i> 下载
    </button>
    <%--</form>--%>
</div>
<table class="easyui-datagrid" title="订单信息管理" style="height:auto" id="dgOrders"
       data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tb'">
    <thead>
    <tr>
        <th data-options="field:'id1',checkbox:true"></th>
        <th data-options="field:'id',width:50" >编号</th>
        <th data-options="field:'orders_id',width:80">订单编号</th>
        <th data-options="field:'commname',width:80">商品名称</th>
        <th data-options="field:'stylename',width:80">样式名称</th>
        <th data-options="field:'goodsnumber',width:80">商品数量</th>
        <th data-options="field:'price',width:80" >商品价格</th>
        <th data-options="field:'reality',width:80" >商品总价</th>
        <th data-options="field:'storename',width:80">店铺名称</th>
        <th data-options="field:'status',width:80" >状态</th>
        <th data-options="field:'logisticsname',width:80">物流名称</th>
        <th data-options="field:'ordertime',width:150,formatter:Date.prototype.getLongDate">下单时间</th>
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
<form  style="display: none;"  id="frmDownloadExcel" method="post" action="<%=basePath%>/p_orders/loadout">
    <input type="hidden" id="txtHName" name="name"/>
</form>

<script src="<%=basePath%>/script/business/ht/h_orders.js"></script>
</body>
</html>
