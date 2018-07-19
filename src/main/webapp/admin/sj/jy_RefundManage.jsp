<%--suppress ALL --%>
<%--
  Created by IntelliJ IDEA.
  User: xiechangchun
  Date: 2018/6/8
  Time: 上午9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init.jsp"%>
<html>
<head>
    <title>退款界面</title>
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet" />
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>
    <script src="<%=basePath%>/plugins/Chart.js"></script>
    <script src="<%=basePath%>/plugins/echarts.min.js"></script>
</head>

<style>
    body{border-top-width: 0px}
    .tubiao{padding-left: 0px;}
    .graph{width: 100%;height:205px;border: 1px solid #d7d7d7;margin-bottom: 10px}
    .table{width: 100%;height:430px;border: 1px solid #d7d7d7}
    table{border-collapse:collapse;}
    td{height:40px;       /*单元格高度*/
        text-align:center; /*单元格文字居中对齐*/}
</style>

<body>
    <%--图表--%>
    <div class="graph">
        <div id="main2" class="tubiao" style="width: 450px;height:205px;"></div>
    </div>
    <div class="table">
        <div class="layui-tab-item layui-show" style="height: 669px">
            <div class="layui-table-tool" id="tb">
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
            <table class="easyui-datagrid" title="退款管理" style="height:auto" id="dgOrder"
                   data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tb'">
                <thead>
                <tr>
                    <%--<th data-options="field:'id1',checkbox:true"></th>--%>
                    <%--<th data-options="field:'id',width:50">编号</th>--%>
                    <th data-options="field:'id',width:130">订单编号</th>
                    <th data-options="field:'ordertime',width:130, formatter: Date.prototype.getLongDate ">下单时间</th>
                    <th data-options="field:'goodsnumber',width:50">数量</th>
                    <th data-options="field:'reality',width:60">实际金额</th>
                    <th data-options="field:'commname',width:100">商品名</th>
                    <th data-options="field:'a_receiver',width:80">收件人</th>
                    <th data-options="field:'a_address',width:150">收货地址</th>
                    <th data-options="field:'a_phone',width:105">联系电话</th>
                    <th data-options="field:'reality',width:105">退款金额</th>
                    <th data-options="field:'user_id',width:30">商家id</th>
                        <th data-options="field:'s_id',width:70">店铺编号</th>

                    <%--<th data-options="field:'shiptime',width:130, formatter: Date.prototype.getLongDate">发货时间</th>--%>
                    <th data-options="field:'note',width:105">备注</th>
                    <!--此处可以继续增加列设置-->
                    <th data-options="field:'status',width:60" id="tuikuan">状态</th>
                    <th data-options="field:'ids',formatter:refund" width="130"
                        align="center">操作</th>
                </tr>
                </thead>
            </table>

            <!--导入数据导出-->
            <form  style="display: none;"  id="formDownloadExcel" method="post" action="<%=basePath%>/business/loadout">
                <input type="hidden" id="txtHNameShip" name="name"/>
            </form>
        </div>
    </div>


<script >
    var jxmstc=new KBOperate("Refund");
    var statue="退款";
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



    function getSearch(ordersid) {
        var obj = new Object();
        obj.id  = ordersid;
        obj.condition ="退款";
        obj.s_id = sid.toString();
        return obj;
    }

    function search(ordersid) {

        jxmstc.findForEasyui(dataSheet,getSearch(ordersid));

    }




    function doUploadExcel() {
        doUploadFile("uploadfile","frmUploadExcel",null,function (path){
            jxmstc.do("loadData",path,function (data) {
                //编写上传的前后台代码

            });
        });
    }

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

        jxmstc.editForEasyui3(function (obj) {

        });

        jxmstc.editForEasyui4(function (obj) {

        })


        //-------------------------------------------------------------



        $("#btnLoadData").click(function () {
            $("#uploadExcelFile").click();
        });


        $("#botnFind").click(function () {
            find();
        });


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
<script>
    /*
    var ctx = document.getElementById("myChart");
    var ctx = document.getElementById("myChart").getContext("2d");
    var ctx = $("#myChart");

    var myDoughnutChart = new Chart(ctx, {
        type: 'doughnut',
        data: {
            datasets: [{
                data: [10, 20, 30],
                backgroundColor: [
                    'rgba(247, 195, 68, 0.6)',
                    'rgba(49, 141, 227, 0.6)',
                    'rgba(226, 69, 112, 0.6)'
                ]
            }],

            // These labels appear in the legend and in the tooltips when hovering different arcs
            labels: [
                'Red',
                'Yellow',
                'Blue'
            ]
        }
    });
*/

    $('#txtNameShipped').keyup(function () {

        // 1.获得搜索框的值；
        var keyWord=$('#txtNameShipped').val();
        search(keyWord);
    })

    var myChart = echarts.init(document.getElementById('main2'));
    // 指定图表的配置项和数据
    var option = {
        tooltip : { //提示框组件
            trigger: 'item', //触发类型(饼状图片就是用这个)
            formatter: "{a} <br/>{b} : {c} ({d}%)" //提示框浮层内容格式器
        },
        color:['#48cda6','#fd87ab','#11abff','#ffdf33','#968ade'],  //手动设置每个图例的颜色
        legend: {  //图例组件
            right:30, //图例组件离右边的距离
            left:300,
            orient : 'horizontal',  //布局  纵向布局 图例标记居文字的左边 vertical则反之
            width:30,      //图行例组件的宽度,默认自适应
            x : 'right',   //图例显示在右边
            y: 'center',   //图例在垂直方向上面显示居中
            itemWidth:10,  //图例标记的图形宽度
            itemHeight:10, //图例标记的图形高度
            data:['待退款处理','待卖价发货','待商家收货','商家已拒绝'],
            textStyle:{    //图例文字的样式
                color:'#333',  //文字颜色
                fontSize:12    //文字大小
            }
        },
        series : [ //系列列表
            {
                name:'退款处理',  //系列名称
                type:'pie',   //类型 pie表示饼图
                center:['30%','50%'], //设置饼的原心坐标 不设置就会默认在中心的位置
                radius : ['40%', '70%'],  //饼图的半径,第一项是内半径,第二项是外半径,内半径为0就是真的饼,不是环形
                itemStyle : {  //图形样式
                    normal : { //normal 是图形在默认状态下的样式；emphasis 是图形在高亮状态下的样式，比如在鼠标悬浮或者图例联动高亮时。
                        label : {  //饼图图形上的文本标签
                            show : false  //平常不显示
                        },
                        labelLine : {     //标签的视觉引导线样式
                            show : false  //平常不显示
                        }
                    },
                    emphasis : {   //normal 是图形在默认状态下的样式；emphasis 是图形在高亮状态下的样式，比如在鼠标悬浮或者图例联动高亮时。
                        label : {  //饼图图形上的文本标签
                            show : true,
                            position : 'center',
                            textStyle : {
                                fontSize : '10',
                                fontWeight : 'bold'
                            }
                        }
                    }
                },
                data:[
                    {value:30, name:'待退款处理'},
                    {value:10, name:'待卖价发货'},
                    {value:15, name:'待商家收货'},
                    {value:20, name:'商家已拒绝'}
                ]
            }
        ]
    }
    myChart.setOption(option);

</script>


</body>
</html>
