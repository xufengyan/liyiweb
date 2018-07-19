<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init.jsp"%>
<html>
<head>
    <meta charset="utf-8">
    <title>layuiAdmin 主页示例模板二</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0, maximum-scale=1.0, user-scalable=0">
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet">
    <script src="<%=basePath%>/plugins/Chart.js"></script>

</head>
<style>
    body{margin: 0px;padding: 0px}
    .common{width: 380px;height: 130px;border-radius: 5px;float:left}
    .content-div{width: 100%;height:660px;}
    .header-div-one{background-color: rgb(252, 133, 86);margin-left: 10px }
    .header-div-two{background-color: rgb(248, 187, 57);margin-left: 144px}
    .sale{width:76px;height:50px;font-size:14px;color:#fff;line-height: 34px;padding:10px;
        border-radius:5px;}
    .chart{width: 100%;height:510px;margin-top: 0px}

</style>

<body>
<div class="layui-tab">
    <ul class="layui-tab-title">
        <li class="layui-this">首页</li>
        <li>资金管理</li>
    </ul>
    <div class="layui-tab-content" style="height: auto;">
        <div class="layui-tab-item layui-show">
            <div  class="content-div">
                <div id="coutpart" class="header-div-one common">
                    <span class="sale" style="background-color: #f79b67">
                        <font>订单总额</font>
                    </span>
                </div>
                <div id="coutpart2" class="header-div-two common">
  <span class="sale" style="background-color: #f79b67">
                        <font>已签收订单总额</font>
                    </span>
                </div>
                <div class="chart">
                    <canvas id="myChart" width="520px" height="300px"></canvas>
                </div>
            </div>
        </div>
        <div class="layui-tab-item" style="height: auto">
            <iframe src="<%=basePath%>/sales/index" id="myiframe" name="myFrameName" width="100%" scrolling="yes" wmode="window" frameborder="0" marginwidth="0" marginheight="0"></iframe>
        </div>

    </div>
</div>


<%-----------------------------Script代码-----------------------------------%>

<script src="<%=basePath%>/plugins/layui/layui.js"></script>
<script>
    layui.use('element', function() {
        var $ = layui.jquery
            , element = layui.element;
    });



    var names=[];
    var num=[];

    doData("sales/find2","",function (data) {

        if (data) {
            for (var i = 0; i < data.saleslist.length; i++) {
                names.push(data.saleslist[i].time + "月");    //挨个取出月份并填入库存数组
            }

            for (var i = 0; i < data.saleslist.length; i++) {
                num.push(data.saleslist[i].allcount);    //挨个取出并填入库存数组
            }
            $("#coutpart").append(" <p style=\"font-size:3em;text-align:center;color:white\">"+data.saleslist[0].count+"</p>");

            $("#coutpart2").append(" <p style=\"font-size:3em;text-align:center;color:white\">"+data.saleslist[0].part+"</p>\n")



        }



    //创建柱状图
    var myCanvas = $("#myChart");
    var myCanvas = document.getElementById("myChart");
    var myCanvas = document.getElementById("myChart").getContext("2d");
    var barChart = new Chart(
        myCanvas,
        {
        type: 'bar',
        data: {
            labels: names,
            datasets: [{
                label: '月销售额',
                data:num,
                backgroundColor: [
                    'rgba(54, 162, 235, 0.6)',
                    'rgba(54, 162, 235, 0.6)',
                    'rgba(54, 162, 235, 0.6)',
                    'rgba(54, 162, 235, 0.6)',
                    'rgba(54, 162, 235, 0.6)',
                    'rgba(54, 162, 235, 0.6)',
                    'rgba(54, 162, 235, 0.6)',
                    'rgba(54, 162, 235, 0.6)',
                    'rgba(54, 162, 235, 0.6)',
                    'rgba(54, 162, 235, 0.6)',
                    'rgba(54, 162, 235, 0.6)',
                    'rgba(54, 162, 235, 0.6)'
                ]
            }]
        }
    });

    Chart.defaults.global.defaultFontFamily = "Lato";
    Chart.defaults.global.defaultFontSize = 15;
    Chart.defaults.global.defaultFontColor = 'rgba(54, 162, 235)';

    })
</script>
<script>
    //iframe自适应
    $(document).ready(function(){
        $("#myiframe").load(function(){
            $(this).height(0); //用于每次刷新时控制IFRAME高度初始化
            var height = $(this).contents().height() + 10;
            $(this).height( height < 669 ? 669 : height );
        });
    });
</script>

</body>
</html>