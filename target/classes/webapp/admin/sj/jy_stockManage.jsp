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
    <title>库存管理</title>
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet" />
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>
</head>

<style>

    table{border-collapse:collapse;}
    td{
        height:45px;       /*单元格高度*/
        text-align:center; /*单元格文字居中对齐*/
    }

</style>

<body>

<div class="layui-table-tool" id="tb">
    <div class="layui-btn-group">


    <button class="layui-btn layui-btn-small" id="btnLoadData" style="background-color:#008AE5" >
        <i class="layui-icon">&#xe62f;</i> 导入
    </button>
    </div>
    <input type="text"  style="width: 300px; height: 28px;" name="name" id="txtName" required  placeholder="请输入商品名" autocomplete="off"/>
    <div class="layui-btn-group">
        <button class="layui-btn layui-btn-small" id="btnFind" style="background-color:#008AE5">
            <i class="layui-icon">&#xe615;</i> 搜索
        </button>
        <%--<button class="layui-btn layui-btn-small layui-btn-warm" id="btnDeleteAll">--%>
            <%--<i class="layui-icon">&#xe640;</i> 批量删除--%>
        <%--</button>--%>
    </div>
    <button class="layui-btn layui-btn-small" id="btnDownLoad" style="background-color:#008AE5" >
        <i class="layui-icon">&#xe61e;</i> 导出
    </button>
</div>
<table class="easyui-datagrid" title="库存管理" style="height:auto" id="dgStock"
       data-options="singleSelect:true,rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tb'">
    <thead>
    <tr>
        <th data-options="field:'id1',checkbox:true"></th>
        <th data-options="field:'id',width:225">货物编号</th>
        <th data-options="field:'s_id',width:100">店铺编号</th>
        <th data-options="field:'commname',width:180">商品名称</th>
        <th data-options="field:'stylename',width:80">商品样式</th>
        <th data-options="field:'price',width:100">商品售价</th>
        <th data-options="field:'stock',width:100">库存量</th>
        <%--<th data-options="field:'sales',width:60">销量</th>--%>
        <th data-options="field:'ids',formatter:stock" width="120"
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
<form  style="display: none;"  id="frmDownloadExcel" method="post" action="<%=basePath%>/stock/loadout">
     <input type="hidden" id="txtHName" name="name"/>
</form>
<script >

    var jxmstc=new KBOperate("stock");
    var user=<%=request.getSession().getAttribute("users_id")%>;
    function getCondition() {
        var obj = new Object();
        obj.condition = $("#txtName").val();
        obj.s_id=""+user;
        return obj;
    }

    function find() {
        jxmstc.findForEasyui("dgStock",getCondition());
    }

    function doUploadExcel() {
        doUploadFile("uploadfile","frmUploadExcel",null,function (path){
            jxmstc.do("loadData",path,function (data) {
                //编写上传的前后台代码
                //alert(data);
            });
        });
    }

    layui.use(['layer'],function () {
        var layer=layui.layer;
        find();


        jxmstc.editForEasyui2(function (obj) {
            var toUrl=getRootPath()+"/stock/index?type=1&id="+obj.id;
            layer.open({
                title:'库存信息修改',
                type: 2,
                area:["70%","70%"],
                content: toUrl
            });
        });


        $("#btnAdd").click(function () {
            var toUrl=getRootPath()+"/stock/index?type=0";
            layer.open({
                title:'货物信息新增',
                type: 2,
                area:["80%","80%"],
                content: toUrl
            });
        });


        $("#btnLoadData").click(function () {
            $("#uploadExcelFile").click();
        });


        $("#btnFind").click(function () {
            find();
        });

        $("#btnDownLoad").click(function () {
            $("#txtHName").val("");
            $("#frmDownloadExcel").form().submit();
        });
    });




</script>

<script>


</script>


</body>
</html>
