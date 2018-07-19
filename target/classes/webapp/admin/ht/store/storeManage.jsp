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
    <title>店铺管理</title>
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
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" width="1200px" >
    <ul class="layui-tab-title">
        <li  class="layui-this" onclick="stored()">所有审核</li>
        <li  onclick="unshipped()">待审核</li>
        <li  onclick="shipped()">已审核</li>
    </ul>
    <div class="layui-tab-content" style="width:auto">
        <%--所有审核--%>
        <div class="layui-tab-item layui-show" style="height: 495px;">
            <div class="layui-table-tool" id="tab">
                <input type="text" onchange="txtChange()" style="width: 200px; height: 28px;" name="name" id="txtName" required  placeholder="请输入店铺名称" autocomplete="off" vaule=""/>
                <div class="layui-btn-group">
                    <button class="layui-btn layui-btn-small" id="btnFind">
                        <i class="layui-icon">&#xe615;</i> 搜索
                    </button>
                 </div>
            </div>
            <table class="easyui-datagrid" title="店铺管理"  id="dgStore" style="width:1200px"
                   data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tab'">
                <thead>
                <tr>
                    <th data-options="field:'id1',checkbox:true"></th>
                    <th data-options="field:'id',width:80" hidden>编号</th>
                    <th data-options="field:'storename',width:80">店铺名称</th>
                    <th data-options="field:'description',width:80">店铺简介</th>
                    <th data-options="field:'address',width:80" hidden>经营地址</th>
                    <th data-options="field:'province',width:80" hidden>省</th>
                    <th data-options="field:'city',width:80" hidden>市</th>
                    <th data-options="field:'area',width:80" hidden>县</th>
                    <th data-options="field:'credit',width:80">信用度</th>
                    <th data-options="field:'storeimage',width:80" >店铺头像</th>
                    <th data-options="field:'idcard',width:80">身份证号</th>
                    <th data-options="field:'idimage',width:80" hidden>身份证照片</th>
                    <th data-options="field:'bcnumber',width:80">银行卡号</th>
                    <th data-options="field:'rank',width:80">店铺等级</th>
                    <th data-options="field:'number',width:80">营业执照编号</th>
                    <th data-options="field:'d_id',width:80"  hidden>押金编号</th>
                    <th data-options="field:'time',width:80,formatter:Date.prototype.getLongDate">注册时间</th>
                    <th data-options="field:'approval',width:80">审核状态</th>
                    <th data-options="field:'reason',width:150">待审核原因</th>
                    <th data-options="field:'status',width:80,formatter:formatStatus">店铺状态</th>
                    <!--此处可以继续增加列设置-->
                    <th data-options="field:'ids',formatter:format" width="120"
                        align="center">操作</th>
                </tr>
                </thead>
            </table>

            <!--导入数据导出-->
            <form  style="display: none;"  id="formDownloadExcel" method="post" action="<%=basePath%>/p_store/loadout">
                <input type="hidden" id="txtHNameShip" name="name"/>
            </form>
        </div>
        <%--待审核--%>
        <div class="layui-tab-item " style="width:1200px;height: 475px">
            <div class="layui-table-tool" id="tb">
                <input type="text"  style="width: 200px; height: 28px;" name="name" onchange="txtChange2()" id="txtName2" required  placeholder="请输入店铺名称" autocomplete="off" vaule=""/>
                <div class="layui-btn-group">
                    <button class="layui-btn layui-btn-small" id="btnFind2">
                        <i class="layui-icon">&#xe615;</i> 搜索
                    </button>
                </div>
            </div>
            <table class="easyui-datagrid" title="待审核店铺管理" style="width:1200px;height: 100px;" id="dgUnShipped"
                   data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tb'">
                <thead>
                <tr>
                    <th data-options="field:'id1',checkbox:true"></th>
                    <th data-options="field:'id',width:80" hidden>编号</th>
                    <th data-options="field:'storename',width:80">店铺名称</th>
                    <th data-options="field:'description',width:80">店铺简介</th>
                    <th data-options="field:'address',width:80" hidden>经营地址</th>
                    <th data-options="field:'province',width:80" hidden>省</th>
                    <th data-options="field:'city',width:80" hidden>市</th>
                    <th data-options="field:'area',width:80" hidden>县</th>
                    <th data-options="field:'credit',width:80">信用度</th>
                    <th data-options="field:'storeimage',width:80" >店铺头像</th>
                    <th data-options="field:'idcard',width:80">身份证号</th>
                    <th data-options="field:'idimage',width:80" hidden>身份证照片</th>
                    <th data-options="field:'bcnumber',width:80">银行卡号</th>
                    <th data-options="field:'number',width:80">营业执照编号</th>
                    <th data-options="field:'d_id',width:80"  hidden>押金编号</th>
                    <th data-options="field:'time',width:80,formatter:Date.prototype.getLongDate">注册时间</th>
                    <th data-options="field:'approval',width:80">审核状态</th>
                    <th data-options="field:'reason',width:150">待审核原因</th>
                    <th data-options="field:'status',width:80,formatter:formatStatus">店铺状态</th>
                    <!--此处可以继续增加列设置-->
                    <th data-options="field:'ids',formatter:format" width="120"
                        align="center">操作</th>
                </tr>
                </thead>
            </table>

            <!--导入数据导出-->
            <form  style="display: none;"  id="frmDownloadExcel" method="post" action="<%=basePath%>/p_store/loadout">
                <input type="hidden" id="txtHName" name="name"/>
            </form>

        </div>
        <%--已审核店铺--%>
        <div class="layui-tab-item" style="width:1200px;height: 485px">
            <div class="layui-table-tool" id="tbshiped">
                <input type="text"  style="width: 200px; height: 28px;" name="name" onchange="txtChange3()" id="txtName3" required  placeholder="请输入店铺名称" autocomplete="off" vaule=""/>
                <div class="layui-btn-group">
                    <button class="layui-btn layui-btn-small" id="btnFind3">
                        <i class="layui-icon">&#xe615;</i> 搜索
                    </button>
                  </div>
            </div>
            <table class="easyui-datagrid" title="已审核店铺管理" style="width:1860px;height:auto" id="dgShipped"
                   data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tbshiped'">
                <thead>
                <tr>
                    <th data-options="field:'id1',checkbox:true"></th>
                    <th data-options="field:'id',width:80" hidden>编号</th>
                    <th data-options="field:'storename',width:80">店铺名称</th>
                    <th data-options="field:'description',width:80">店铺简介</th>
                    <th data-options="field:'address',width:80" hidden>经营地址</th>
                    <th data-options="field:'province',width:80" hidden>省</th>
                    <th data-options="field:'city',width:80" hidden>市</th>
                    <th data-options="field:'area',width:80" hidden>县</th>
                    <th data-options="field:'credit',width:80">信用度</th>
                    <th data-options="field:'storeimage',width:80" >店铺头像</th>
                    <th data-options="field:'idcard',width:80">身份证号</th>
                    <th data-options="field:'idimage',width:80" hidden>身份证照片</th>
                    <th data-options="field:'bcnumber',width:80">银行卡号</th>
                    <th data-options="field:'number',width:80">营业执照编号</th>
                    <th data-options="field:'d_id',width:80"  hidden>押金编号</th>
                    <th data-options="field:'time',width:80,formatter:Date.prototype.getLongDate">注册时间</th>
                    <th data-options="field:'approval',width:80">审核状态</th>
                    <th data-options="field:'status',width:80,formatter:formatStatus">店铺状态</th>
                    <!--此处可以继续增加列设置-->
                    <th data-options="field:'ids',formatter:format2" width="120"
                        align="center">操作</th>
                </tr>
                </thead>
            </table>

            <!--导入数据导出-->
            <form  style="display: none;"  id="frmDownloadExcelUnship" method="post" action="<%=basePath%>/p_store/loadout">
                <input type="hidden" id="txtHNameUnship" name="name"/>
            </form>
        </div>


    </div>
</div>
<script>
    layui.use(['layer','element'],function () {
        var layer=layui.layer,
            element = layui.element,
            $ = layui.jquery;
    });
</script>

<script src="<%=basePath%>/script/business/ht/store.js"></script>

</body>
</html>
