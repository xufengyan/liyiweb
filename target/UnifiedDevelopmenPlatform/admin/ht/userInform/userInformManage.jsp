<%--
  Created by IntelliJ IDEA.
  User: xufeng
  Date: 2018/4/14
  Time: 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init.jsp"%>

<html>
<head>
    <title>用户管理</title>
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet" />
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>
</head>


<style>
    table{border-collapse:collapse;}
    td {height:40px;       /*单元格高度*/
        text-align:center; /*单元格文字居中对齐*/
    }
</style>

<body>
<div class="layui-table-tool" id="tb">
    <%--<div class="layui-btn-group">--%>
        <%--<button class="layui-btn layui-btn-small" id="btnAdd" >--%>
            <%--<i class="layui-icon">&#xe608;</i> 添加--%>
        <%--</button>--%>
        <%--<button class="layui-btn layui-btn-small" id="btnLoadData" >--%>
            <%--<i class="layui-icon">&#xe608;</i> 导入--%>
        <%--</button>--%>
    <%--</div>--%>
    <input type="text"  style="width: 300px; height: 28px;" name="name" id="txtName" required  placeholder="请输入用户名称" autocomplete="off"/>
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
</div>
<table class="easyui-datagrid" title="用户管理" style="height:auto" id="dgUserInform"
       data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tb'">
    <thead>
    <tr>
        <th data-options="field:'id1',checkbox:true"></th>
        <th data-options="field:'id',width:80">编号</th>
        <th data-options="field:'nickname',width:100">昵称</th>
        <th data-options="field:'name',width:100">姓名</th>
        <th data-options="field:'password',width:100">密码</th>
        <th data-options="field:'sex',width:100">性别</th>
        <th data-options="field:'phone',width:100">手机号</th>
        <th data-options="field:'email',width:100">邮箱</th>
        <th data-options="field:'address',width:100" >住址</th>
        <th data-options="field:'birthday',width:100, formatter:Date.prototype.getLongDate">出生日期</th>
        <th data-options="field:'integral',width:100">积分</th>
        <th data-options="field:'avatar',width:100">头像</th>
        <th data-options="field:'storename',width:100">店铺名称</th>
        <th data-options="field:'time',width:100,formatter:Date.prototype.getLongDate">注册时间</th>
        <th data-options="field:'status',width:100,formatter:formatStatus">状态</th>

        <!--此处可以继续增加列设置-->
        <th data-options="field:'ids',formatter:format" width="150"
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
<form  style="display: none;"  id="frmDownloadExcel" method="post" action="<%=basePath%>/userInform/loadout">
    <input type="hidden" id="txtHName" name="name"/>
</form>
<script src="<%=basePath%>/script/business/ht/userInform.js"></script>
<script>
    layui.use(['layer','element'],function () {
        var layer=layui.layer,
            element = layui.element,
            $ = layui.jquery;
    });
</script>
</body>
</html>
