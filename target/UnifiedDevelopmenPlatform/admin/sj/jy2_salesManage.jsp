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
    <title>资金管理</title>
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet" />
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>
    <style>
        table{border-collapse:collapse;}
        td {height:40px;       /*单元格高度*/
            text-align:center; /*单元格文字居中对齐*/
        }
    </style>
</head>
<body>
<div class="layui-table-tool" id="tb">
    <div class="layui-btn-group">
        <%--<button class="layui-btn layui-btn-small" id="btnAdd" >--%>
            <%--<i class="layui-icon">&#xe608;</i> 添加--%>
        <%--</button>--%>
        <button class="layui-btn layui-btn-small" id="btnLoadData" style="background-color:#008AE5">
            <i class="layui-icon">&#xe608;</i> 导入
        </button>
    </div>
    <input type="text"  style="width: 300px; height: 28px;" name="name" id="txtName" required  placeholder="请输入商品名称" autocomplete="off"/>
    <div class="layui-btn-group">
        <button class="layui-btn layui-btn-small" id="btnFind" style="background-color:#008AE5">
            <i class="layui-icon">&#xe615;</i> 搜索
        </button>
        <%--<button class="layui-btn layui-btn-small layui-btn-warm" id="btnDeleteAll">--%>
            <%--<i class="layui-icon">&#xe640;</i> 批量删除--%>
        <%--</button>--%>
    </div>
    <button class="layui-btn layui-btn-small" id="btnDownLoad" style="background-color:#008AE5">
        <i class="layui-icon">&#xe61e;</i> 下载
    </button>
</div>
<table class="easyui-datagrid" title="资金管理" style="height:auto;" id="dgSales"
       data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tb'">
    <thead>
    <tr>
        <th data-options="field:'id1',checkbox:true"></th>
        <th data-options="field:'commname',width:285">商品名称</th>
        <th data-options="field:'price',width:285">总销售额</th>
        <th data-options="field:'reality',width:285">成交额</th>

        <!--此处可以继续增加列设置-->
        <%--<th data-options="field:'ids',formatter:format" width="120"--%>
            <%--align="center">操作</th>--%>
    </tr>
    </thead>
</table>
<!--导入数据上传-->
<form  style="display: none;" enctype="multipart/form-data" id="frmUploadExcel">
    <input id="uploadExcelFile" type="file" name="file" onchange="doUploadExcel()"
           accept=".xls,.xlsx"/>
</form>
<!--导入数据导出-->
<form  style="display: none;"  id="frmDownloadExcel" method="post" action="<%=basePath%>/sales/loadout">
    <input type="hidden" id="txtHName" name="name"/>
</form>
<script src="<%=basePath%>/script/business/sj/jy2_sales.js"></script>
<script>
    layui.use(['layer','element'],function () {
        var layer=layui.layer,
            element = layui.element,
            $ = layui.jquery;
    });



    var jxmstc=new KBOperate("sales");
    var usid=${sessionScope.get("users_id")};
    function getCondition() {
        var obj = new Object();
        obj.condition= $("#txtName").val();
        obj.s_id=usid.toString();
        //这里可以给obj添加属性,给它赋页面输入的值
        return obj;
    }
    function find()
    {

        jxmstc.findForEasyui("dgSales",getCondition());
    }

    $("#btnDownLoad").click(function () {
        $("#txtHName").val("");
        $("#frmDownloadExcel").form().submit();
        find();
    });


</script>
</body>
</html>
