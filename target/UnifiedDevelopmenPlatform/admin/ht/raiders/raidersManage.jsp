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
    <title>攻略管理</title>
    <meta http-equiv="refresh" content="3000">
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet"/>
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>
</head>
<style>
    table{border-collapse:collapse;}
    td {height:40px;       /*单元格高度*/
        text-align:center; /*单元格文字居中对齐*/
    }
</style>
<body>
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" style="position: absolute">
    <ul class="layui-tab-title">
        <li  class="layui-this" onclick="stored()">所有审核</li>
        <li  onclick="unshipped()">待审核</li>
        <li  onclick="shipped()">已审核</li>
    </ul>
    <div class="layui-tab-content"  style="width:1200px">
        <%--所有审核--%>
        <div class="layui-tab-item layui-show" style="width:1200px;height:490px">
            <div class="layui-table-tool" id="tab">
                <input type="text"  style="width: 200px; height: 28px;" name="name" id="txtName" required  placeholder="请输入发布人名称" autocomplete="off" vaule=""/>
                <div class="layui-btn-group">
                    <button class="layui-btn layui-btn-small" id="btnFind">
                        <i class="layui-icon">&#xe615;</i> 搜索
                    </button>
                </div>
            </div>
            <table class="easyui-datagrid" title="攻略管理"  id="dgRaiders"
                   data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tab'">
                <thead>
                <tr>
                    <th data-options="field:'id1',checkbox:true"></th>
                    <th data-options="field:'id',width:100">编号</th>
                    <th data-options="field:'category',width:100">类别</th>
                    <th data-options="field:'name',width:100">发布人</th>
                    <th data-options="field:'time',width:100,formatter: formatDatebox">发布时间</th>
                    <th data-options="field:'likenum',width:100">点赞数</th>
                    <th data-options="field:'content',width:100" hidden="hidden">内容</th>
                    <th data-options="field:'status',width:100">审核状态</th>
                    <th data-options="field:'reason',width:150">待审核原因</th>
                    <th data-options="field:'ids',formatter:format" width="150"
                        align="center">操作</th>

                </tr>
                </thead>
            </table>

            <!--导入数据导出-->
            <form  style="display: none;"  id="formDownloadExcel" method="post" action="<%=basePath%>/raiders/loadout">
                <input type="hidden" id="txtHNameShip" name="name"/>
            </form>
        </div>
        <%--未审核--%>
        <div class="layui-tab-item" style="width:1200px;height: 490px">
            <div class="layui-table-tool" id="tb">
                <input type="text"  style="width: 200px; height: 28px;" name="name" id="txtName2" required  placeholder="请输入发布人名称" autocomplete="off" vaule=""/>
                <div class="layui-btn-group">
                    <button class="layui-btn layui-btn-small" id="btnFind2">
                        <i class="layui-icon">&#xe615;</i> 搜索
                    </button>
                </div>
            </div>
            <table class="easyui-datagrid" title="待审核攻略管理" style="width:1860px;height: 100px;" id="dgUnShipped"
                   data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tb'">
                <thead>
                <tr>
                    <th data-options="field:'id1',checkbox:true"></th>
                    <th data-options="field:'id',width:100">编号</th>
                    <th data-options="field:'category',width:100">类别</th>
                    <th data-options="field:'name',width:100">发布人</th>
                    <th data-options="field:'time',width:100,formatter: formatDatebox">发布时间</th>
                    <th data-options="field:'likenum',width:100">点赞数</th>
                    <th data-options="field:'content',width:100" hidden="hidden">内容</th>
                    <th data-options="field:'status',width:100">审核状态</th>
                    <th data-options="field:'reason',width:150">待审核原因</th>
                    <th data-options="field:'ids',formatter:format" width="120"
                        align="center">操作</th>
                </tr>
                </thead>
            </table>

            <!--导入数据导出-->
            <form  style="display: none;"  id="frmDownloadExcel" method="post" action="<%=basePath%>/raiders/loadout">
                <input type="hidden" id="txtHName" name="name"/>
            </form>

        </div>
        <%--已审核商品--%>
        <div class="layui-tab-item" style="width:1200px;height: 490px;">
            <div class="layui-table-tool" id="tbshiped">
                <input type="text"  style="width: 200px; height: 28px;" name="name" id="txtName3" required  placeholder="请输入发布人名称" autocomplete="off" vaule=""/>
                <div class="layui-btn-group">
                    <button class="layui-btn layui-btn-small" id="btnFind3">
                        <i class="layui-icon">&#xe615;</i> 搜索
                    </button>
                </div>
            </div>
            <table class="easyui-datagrid" title="已审核攻略管理" style="width:1860px;height:auto" id="dgShipped"
                   data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tbshiped'">
                <thead>
                <tr>
                    <th data-options="field:'id1',checkbox:true"></th>
                    <th data-options="field:'id',width:100">编号</th>
                    <th data-options="field:'category',width:100">类别</th>
                    <th data-options="field:'name',width:100">发布人</th>
                    <th data-options="field:'time',width:100,formatter: formatDatebox">发布时间</th>
                    <th data-options="field:'likenum',width:100">点赞数</th>
                    <th data-options="field:'content',width:100" hidden="hidden">内容</th>
                    <th data-options="field:'status',width:100">审核状态</th>
                    <th data-options="field:'ids',formatter:format2" width="120"
                        align="center">操作</th>

                </tr>
                </thead>
            </table>

            <!--导入数据导出-->
            <form  style="display: none;"  id="frmDownloadExcelUnship" method="post" action="<%=basePath%>/raiders/loadout">
                <input type="hidden" id="txtHNameUnship" name="name"/>
            </form>
        </div>
    </div>
</div>


<script src="<%=basePath%>/script/business/ht/raiders.js"></script>
<script>
    layui.use(['layer','element'],function () {
        var layer=layui.layer,
            element = layui.element,
            $ = layui.jquery;
    });
</script>
</body>
</html>
