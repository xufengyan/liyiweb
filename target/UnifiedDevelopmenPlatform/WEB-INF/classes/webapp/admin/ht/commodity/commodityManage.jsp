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
    <title>商品管理</title>
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet"/>
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>
</head>


<style>
    table{border-collapse:collapse;}
    td {height:50px;       /*单元格高度*/
        text-align:center; /*单元格文字居中对齐*/
    }
</style>
<body>
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" >
    <ul class="layui-tab-title">
        <li  class="layui-this" onclick="stored()">所有审核</li>
        <li  onclick="unshipped()">待审核</li>
        <li  onclick="shipped()">已审核</li>
    </ul>
    <div class="layui-tab-content"  style="width:auto">
        <%--所有审核--%>
        <div class="layui-tab-item layui-show" style="height:490px">
            <div class="layui-table-tool" id="tab">
                <input type="text"  style="width: 200px; height: 28px;" name="name" id="txtName" required  placeholder="请输入商品名称" autocomplete="off" vaule=""/>
                <div class="layui-btn-group">
                    <button class="layui-btn layui-btn-small" id="btnFind">
                        <i class="layui-icon">&#xe615;</i> 搜索
                    </button>
                </div>
            </div>
            <table class="easyui-datagrid" title="商品管理"  id="dgCommodity"
                   data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tab'">
                <thead>
                <tr>
                    <th data-options="field:'id1',checkbox:true"></th>
                    <th data-options="field:'id',width:80" hidden>商品编号</th>
                    <th data-options="field:'commname',width:100">商品名称</th>
                    <th data-options="field:'description',width:300"hidden>商品描述</th>
                    <th data-options="field:'sub_id',width:100" hidden>商品子分类</th>
                    <th data-options="field:'title',width:100" >商品标题</th>
                    <th data-options="field:'image1',width:100" hidden>商品图片1</th>
                    <th data-options="field:'image2',width:100" hidden>商品图片2</th>
                    <th data-options="field:'image3',width:100" hidden>商品图片3</th>
                    <th data-options="field:'image4',width:100" hidden>商品图片4</th>
                    <th data-options="field:'price',width:100"  >商品价格</th>
                    <th data-options="field:'stock',width:100" >商品库存</th>
                    <th data-options="field:'grade',width:100" >商品评分</th>
                    <th data-options="field:'s_id',width:100" hidden>店铺编号</th>
                    <th data-options="field:'integral',width:100" hidden>返还积分</th>
                    <th data-options="field:'sales',width:100"  hidden>商品销量</th>
                    <th data-options="field:'time',width:100,formatter:Date.prototype.getLongDate">上架时间</th>
                    <th data-options="field:'sstatus',width:100">审核状态</th>
                    <th data-options="field:'reason',width:150">未通过审核原因</th>
                    <th data-options="field:'status',width:100,formatter:formatStatus">商品状态</th>
                    <!--此处可以继续增加列设置-->
                    <th data-options="field:'ids',formatter:format" width="120"
                        align="center">操作</th>

                </tr>
                </thead>
            </table>

            <!--导入数据导出-->
            <form  style="display: none;"  id="formDownloadExcel" method="post" action="<%=basePath%>/commodity/loadout">
                <input type="hidden" id="txtHNameShip" name="name"/>
            </form>
        </div>
        <%--待审核--%>
        <div class="layui-tab-item" style="width:1200px;height:480px">
            <div class="layui-table-tool" id="tb">
                <input type="text"  style="width: 200px; height: 28px;" name="name" id="txtName2" required  placeholder="请输入商品名称" autocomplete="off" vaule=""/>
                <div class="layui-btn-group">
                    <button class="layui-btn layui-btn-small" id="btnFind2">
                        <i class="layui-icon">&#xe615;</i> 搜索
                    </button>
                </div>
            </div>
            <table class="easyui-datagrid" title="未审核商品管理" style="width:1860px;height: 100px;" id="dgUnShipped"
                   data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tb'">
                <thead>
                <tr>
                    <th data-options="field:'id1',checkbox:true"></th>
                    <th data-options="field:'id',width:80" hidden>商品编号</th>
                    <th data-options="field:'commname',width:100">商品名称</th>
                    <th data-options="field:'description',width:300"hidden>商品描述</th>
                    <th data-options="field:'sub_id',width:100" hidden>商品子分类</th>
                    <th data-options="field:'title',width:100" >商品标题</th>
                    <th data-options="field:'image1',width:100" hidden>商品图片1</th>
                    <th data-options="field:'image2',width:100" hidden>商品图片2</th>
                    <th data-options="field:'image3',width:100" hidden>商品图片3</th>
                    <th data-options="field:'image4',width:100" hidden>商品图片4</th>
                    <th data-options="field:'price',width:100"  >商品价格</th>
                    <th data-options="field:'stock',width:100" >商品库存</th>
                    <th data-options="field:'grade',width:100" >商品评分</th>
                    <th data-options="field:'s_id',width:100" hidden>店铺编号</th>
                    <th data-options="field:'integral',width:100" hidden>返还积分</th>
                    <th data-options="field:'sales',width:100"  hidden>商品销量</th>
                    <th data-options="field:'time',width:100,formatter:Date.prototype.getLongDate">上架时间</th>
                    <th data-options="field:'sstatus',width:100">审核状态</th>
                    <th data-options="field:'reason',width:150">未通过审核原因</th>
                    <th data-options="field:'status',width:100,formatter:formatStatus">商品状态</th>
                    <!--此处可以继续增加列设置-->
                    <th data-options="field:'ids',formatter:format" width="120" align="center">操作</th>

                </tr>
                </thead>
            </table>

            <!--导入数据导出-->
            <form  style="display: none;"  id="frmDownloadExcel" method="post" action="<%=basePath%>/commodity/loadout">
                <input type="hidden" id="txtHName" name="name"/>
            </form>

        </div>
        <%--已审核商品--%>
        <div class="layui-tab-item" style="width:1200px;height: 480px;">
            <div class="layui-table-tool" id="tbshiped">
                <input type="text"  style="width: 200px; height: 28px;" name="name" id="txtName3" required  placeholder="请输入商品名称" autocomplete="off" vaule=""/>
                <div class="layui-btn-group">
                    <button class="layui-btn layui-btn-small" id="btnFind3">
                        <i class="layui-icon">&#xe615;</i> 搜索
                    </button>
                </div>
            </div>
            <table class="easyui-datagrid" title="已审核商品管理" style="width:1860px;" id="dgShipped"
                   data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tbshiped'">
                <thead>
                <tr>
                    <th data-options="field:'id1',checkbox:true"></th>
                    <th data-options="field:'id',width:80" hidden>商品编号</th>
                    <th data-options="field:'commname',width:100">商品名称</th>
                    <th data-options="field:'description',width:300" hidden> 商品描述</th>
                    <th data-options="field:'sub_id',width:100" hidden>商品子分类</th>
                    <th data-options="field:'title',width:100" >商品标题</th>
                    <th data-options="field:'image1',width:100" hidden>商品图片1</th>
                    <th data-options="field:'image2',width:100" hidden>商品图片2</th>
                    <th data-options="field:'image3',width:100" hidden>商品图片3</th>
                    <th data-options="field:'image4',width:100" hidden>商品图片4</th>
                    <th data-options="field:'price',width:100"  >商品价格</th>
                    <th data-options="field:'stock',width:100" >商品库存</th>
                    <th data-options="field:'grade',width:100" >商品评分</th>
                    <th data-options="field:'s_id',width:100" hidden>店铺编号</th>
                    <th data-options="field:'integral',width:100" hidden>返还积分</th>
                    <th data-options="field:'sales',width:100"  hidden>商品销量</th>
                    <th data-options="field:'time',width:100,formatter:Date.prototype.getLongDate">上架时间</th>
                    <th data-options="field:'sstatus',width:100">审核状态</th>
                    <th data-options="field:'reason',width:150">未通过审核原因</th>
                    <th data-options="field:'status',width:100,formatter:formatStatus">商品状态</th>
                    <!--此处可以继续增加列设置-->
                    <th data-options="field:'ids',formatter:format2" width="120"
                        align="center">操作</th>

                </tr>
                </thead>
            </table>

            <!--导入数据导出-->
            <form  style="display: none;"  id="frmDownloadExcelUnship" method="post" action="<%=basePath%>/commodity/loadout">
                <input type="hidden" id="txtHNameUnship" name="name"/>
            </form>
        </div>


    </div>
</div>


<script src="<%=basePath%>/script/business/ht/commodity.js"></script>
<script>
    layui.use(['layer','element'],function () {
        var layer=layui.layer,
            element = layui.element,
            $ = layui.jquery;
    });
</script>

</body>
</html>
