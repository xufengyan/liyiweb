<%--
  Created by IntelliJ IDEA.
  User: xiechangchun
  Date: 2018/6/13
  Time: 下午5:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init.jsp"%>
<html>
<head>
    <title>所有订单</title>
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
    <div class="layui-table-tool" id="tab">
        <div class="layui-inline">
            <label class="layui-form-label">订单编号:</label>
            <div class="layui-input-inline">
                <input type="search" class="layui-input" name="txtNameShipped" id="txtNameShipped" required  placeholder="请输入订单编号" autocomplete="off">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">下单时间:</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" id="test" placeholder="请选择下单时间">
            </div>
        </div>
        <div class="layui-btn-group">
            <button class="layui-btn layui-btn-small" style="background-color: #008AE5;" id="botnFind">
                <i class="layui-icon">&#xe615;</i>查询
            </button>
        </div>
        <button class="layui-btn layui-btn-small" style="background-color: #008AE5;" id="botnDownLoad" >
            <i class="layui-icon">&#xe61e;</i>导出
        </button>
    </div>
    <table class="easyui-datagrid" title="订单管理" style="height:auto" id="dgOrder"
           data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tab'">
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
            <th data-options="field:'ids',formatter: format" width="130"
                align="center">操作</th>
        </tr>
        </thead>
    </table>

    <!--导入数据导出-->
    <form  style="display: none;"  id="formDownloadExcel" method="post" action="<%=basePath%>/business/loadout">
        <input type="hidden" id="txtHNameShip" name="name"/>
    </form>


    <script>
        var jxmstc=new KBOperate("business");
        var statue="";
        var sid=<%=request.getSession().getAttribute("users_id")%>;
        var dataSheet="dgOrder";
        function getCondition(statue) {
            var obj = new Object();
            obj.condition=statue;
            obj.ordertime = $("#test").val();
            obj.s_id=sid.toString();
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
            obj.condition ="";
            obj.s_id = sid.toString();
            return obj;
        }

        function search(ordersid) {

            jxmstc.findForEasyui(dataSheet,getSearch(ordersid));

        }


        $('#txtNameShipped').keyup(function () {
            // 1.获得搜索框的值；
            var keyWord=$('#txtNameShipped').val();
            search(keyWord);
        })


        $("#botnFind").click(function () {
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

            //双击浏览.
            $("#dgOrder").datagrid({
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

            //导出
            $("#botnDownLoad").click(function () {
                $("#txtHNameShip").val("");
                $("#formDownloadExcel").form().submit();
            });

        //日期选择器
            laydate.render({
                elem: '#test'
            });
        });



    </script>

</body>
</html>
