<%--
  Created by IntelliJ IDEA.
  User: 鹏
  Date: 2018-05-17
  Time: 下午 2:44
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
        <%--<button class="layui-btn layui-btn-small" id="btnLoadData" >--%>
        <%--<i class="layui-icon">&#xe608;</i> 导入--%>
        <%--</button>--%>
    </div>
    <input type="text"  style="width: 300px; height: 28px;" name="name" id="txtName" required  placeholder="请输入需要查找礼品名" autocomplete="off"/>
    <div class="layui-btn-group">
        <button class="layui-btn layui-btn-small" id="btnFind">
            <i class="layui-icon">&#xe615;</i> 搜索
        </button>
        <%--<button class="layui-btn layui-btn-small layui-btn-warm" id="btnDeleteAll">--%>
        <%--<i class="layui-icon">&#xe640;</i> 批量删除--%>
        <%--</button>--%>
    </div>
    <%--<button class="layui-btn layui-btn-small" id="btnDownLoad" >--%>
    <%--<i class="layui-icon">&#xe61e;</i> 下载--%>
    <%--</button>--%>
    <button class="layui-btn layui-btn-small" id="btnfhjf" >
        <a href="<%=basePath%>/admin/ht/p_integral/integralManage.jsp" >返回积分礼品</a>
    </button>
</div>
<table class="easyui-datagrid" title="积分礼品信息管理" style="height:auto" id="dgdiscount"
       data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tb'">
    <thead>
    <tr>
        <th data-options="field:'id1',checkbox:true"></th>
        <th data-options="field:'id',width:80" hidden="hidden">优惠券id</th>
        <th data-options="field:'amount',width:180" hidden>优惠金额</th>
        <th data-options="field:'title',width:180">活动名称</th>
        <th data-options="field:'begining',width:100,formatter: Date.prototype.getShortDate">开始时间</th>
        <th data-options="field:'ending',width:100,formatter: Date.prototype.getShortDate">结束时间</th>
        <th data-options="field:'ranges',width:70">指定范围</th>
        <th data-options="field:'term',width:70">使用条件</th>
        <th data-options="field:'status',width:70">状态</th>
        <th data-options="field:'integraldhs',width:70">兑换所需积分</th>

        <th data-options="field:'ids',formatter:formthree" width="150"
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
<form  style="display: none;"  id="frmDownloadExcel" method="post" action="<%=basePath%>/integral/loadout">
    <input type="hidden" id="txtHName" name="commname"/>
</form>
<script src="<%=basePath%>/script/business/ht/p_discount.js"></script>

</body>
</html>

