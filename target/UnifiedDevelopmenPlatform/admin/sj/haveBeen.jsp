<%--
  Created by IntelliJ IDEA.
  User: xiechangchun
  Date: 2018/6/13
  Time: 下午6:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init.jsp"%>
<html>
<head>
    <title>已签收</title>
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet" />
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>
</head>
<style>
    table{border-collapse:collapse;}
    td{
        height:40px;       /*单元格高度*/
        text-align:center; /*单元格文字居中对齐*/
    }
</style>
<body>
    <div class="layui-table-tool" id="tbBeen">
        <div class="layui-inline">
            <label class="layui-form-label">订单编号:</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" name="name" id="txtNameBeen" required  placeholder="请输入订单编号" autocomplete="off">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">下单时间:</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" id="test3" placeholder="请选择下单时间">
            </div>
        </div>
        <div class="layui-btn-group">
            <button class="layui-btn layui-btn-small" style="background-color: #008AE5;" id="buttnFind">
                <i class="layui-icon">&#xe615;</i>查询
            </button>
        </div>
        <button class="layui-btn layui-btn-small" style="background-color: #008AE5;" id="buttnDownLoad" >
            <i class="layui-icon">&#xe61e;</i>导出
        </button>
    </div>
    <table class="easyui-datagrid" title="已签收订单管理" style="height:auto" id="dgHaveBeen"
           data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tbBeen'">
        <thead>
        <tr>
            <th data-options="field:'id',width:150">订单编号</th>
            <th data-options="field:'ordertime',width:130, formatter: Date.prototype.getLongDate ">下单时间</th>
            <th data-options="field:'goodsnumber',width:50">数量</th>
            <th data-options="field:'reality',width:60">实际金额</th>
            <th data-options="field:'commname',width:100">商品名</th>
            <th data-options="field:'s_id',width:100">店铺编号</th>
            <th data-options="field:'a_receiver',width:80">收件人</th>
            <th data-options="field:'a_address',width:150">收货地址</th>
            <th data-options="field:'a_phone',width:105">联系电话</th>
            <%--<th data-options="field:'shiptime',width:130, formatter: Date.prototype.getLongDate">发货时间</th>--%>
            <th data-options="field:'note',width:105">备注</th>
            <!--此处可以继续增加列设置-->
            <th data-options="field:'status',width:60">状态</th>
            <th data-options="field:'ids',formatter: shipped" width="130"
                align="center">操作</th>
        </tr>
        </thead>
    </table>

    <!--导入数据导出-->
    <form  style="display: none;"  id="formDownloadExcelBeen" method="post" action="<%=basePath%>/business/loadout">
        <input type="hidden" id="txtHNameBeen" name="name"/>
    </form>


    <%--<script src="<%=basePath%>/script/business/educationbaseinfo/Order.js"></script>--%>
<script>
    var jxmstc=new KBOperate("business");
    var statue="已签收";
    var sid=<%=request.getSession().getAttribute("users_id")%>;
    var dataSheet="dgHaveBeen";
    function getCondition(statue) {
        var obj = new Object();
        obj.condition=statue;
        obj.s_id=sid.toString();
        obj.ordertime = $("#test3").val();
        //alert("asdas"+obj.condition);
        return obj;
    }

    function find(statue) {

        jxmstc.findForEasyui(dataSheet,getCondition(statue));


    }


    //搜索
    function getSearch(ordersid) {
        var obj = new Object();
        obj.orders_id  = ordersid;
        obj.condition =statue;
        obj.s_id = sid.toString();
        return obj;
    }

    function search(ordersid) {

        jxmstc.findForEasyui(dataSheet,getSearch(ordersid));

    }


    $('#txtNameBeen').keyup(function () {
        // 1.获得搜索框的值；
        var keyWord=$('#txtNameBeen').val();
        search(keyWord);
    })


    $("#buttnFind").click(function () {
        find(statue);
    });



    layui.use(['layer','laydate','element'],function () {
        var layer=layui.layer,
            laydate = layui.laydate,
            $=layui.jquery,
            element=layui.element;

        find(statue);

        //-------------------------------------------------------------
        jxmstc.browserForEasyui1(function (obj) {
            var toUrl=getRootPath()+"/business/browsing?type=2&id="+obj.id;
            layer.open({
                title:'订单信息浏览',
                type: 2,
                area:["100%","100%"],
                content: toUrl
            });
        });

        jxmstc.editForEasyui2(function (obj) {
            var toUrl=getRootPath()+"/business/ship?type=1&id="+obj.id;
            layer.open({
                title:'发货',
                type: 2,
                area:["70%","90%"],
                content: toUrl
            });
        });


        //-------------------------------------------------------------

        $("#dgHaveBeen").datagrid({
            //双击事件
            onDblClickRow: function(obj,row) {
                var toUrl=getRootPath()+"/business/browsing?type=2&id="+row.id;
                layer.open({
                    title:'订单信息浏览',
                    type: 2,
                    area:["100%","100%"],
                    content: toUrl
                });
            }
        });



        $("#buttnDownLoad").click(function () {
            $("#txtHNameBeen").val("");
            $("#formDownloadExcelBeen").form().submit();
        });

//日期选择器

        laydate.render({
            elem: '#test3'
        });

    });
</script>

</body>
</html>
