<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init.jsp"%>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet">
    <script src="<%=basePath%>/plugins/Chart.js"></script>
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>
    <script src="<%= basePath %>/script/common/kb.js"></script>


</head>
<style>
    body{margin: 0px;padding: 0px}
    .common{width: 213px;height: 130px;border-radius: 5px;float: left;}
    .content-div{width: 100%;height:660px;}
    .header-div-one{background-color: rgb(252, 133, 86);margin-right: 16px}
    .header-div-two{background-color: rgb(248, 187, 57);margin-right: 16px}
    .header-div-three{background-color: rgb(71, 192, 86);margin-right: 16px}
    .header-div-four{background-color: rgb(91, 143, 212);}
    .chart{width: 100%;height:510px;;margin-top: 0px;position: absolute;top: 230px;}
    .sale{width:100%;height:50px;font-size:14px;color:#fff;line-height: 34px;padding:10px;
        border-radius:5px;}
    .sele{width: 100%;height: 40px;position: absolute;top: 210px;line-height: 50px}

</style>

<body>
<div class="layui-tab">
    <ul class="layui-tab-title">
        <li class="layui-this">首页</li>
        <li>库存管理</li>
    </ul>
    <div class="layui-tab-content" style="height: 669px;">
        <div class="layui-tab-item layui-show">
            <div class="content-div">
                <div class="header-div-one common" id="maxYue">
                    <span class="sale" style="background-color: #f79b67">
                        <font>月最高销量</font>
                    </span>
                </div>
                <div class="header-div-two common" id="maxcomm">
                    <span class="sale" style="background-color: #f9c650">
                        <font>销量最高商品</font>
                    </span>
                </div>
                <div class="header-div-three common" id="minYue">
                    <span class="sale" style="background-color: #62ca6c">
                        <font>月最低销量</font>
                    </span>
                </div>
                <div class="header-div-four common" id="mincomm">
                    <span class="sale" style="background-color: #779cdb">
                        <font>销量最低商品</font>
                    </span>
                </div>

                <div class="sele">
                    <form class="layui-form">
                        <div class="layui-form-item">
                            <div class="layui-input-inline">
                                <select name="commodity.id" id="commid" lay-verify="type" lay-search="" >
                                    <option value="">直接搜索或选择</option>
                                </select>
                            </div>
                        </div>
                    </form>
                </div>


                <div class="chart">
                    <canvas id="myChart" width="520px" height="300px"></canvas>
                </div>
            </div>
        </div>

        <div class="layui-tab-item" style="height: auto">
            <iframe src="<%=basePath%>/stock/stock" id="myiframe" name="myFrameName" width="100%"  wmode="window" frameborder="0" marginwidth="0" marginheight="0"></iframe>
        </div>
    </div>
</div>


<%-----------------------------Script代码-----------------------------------%>
<script src="<%=basePath%>/script/business/sj/jy_Stock.js"></script>
<script src="<%=basePath%>/plugins/layui/layui.js"></script>
<script>

    var datastaticsobj=new Object();
    datastaticsobj.s_id=<%=request.getSession().getAttribute("users_id")%>
    //初始图表
    doData("datastatics/heard",datastaticsobj,function (data) {
        var sum=[];
        var month=[];
        var n=[];
        var chushisz=[];
        var shangp=[];
        var commname=[];
        //获取数据
        for (var i=1;i<=data.b.length;i++){
            sum.push(data.b[i]);
        }

        //alert(sum);

        for (var i=0;i<data.heard.length;i++){
            month.push(data.heard[i].time);
        }

        //alert(month);

        for (var i=0;i<data.heard.length;i++){
            shangp.push(data.heard[i].commname);
        }

        //alert(shangp);

        //数组去重
        for(var i=0;i<month.length;i++){
            if(n.indexOf(month[i])==-1){
                n.push(month[i]);
            }
        }


        for(var i=0;i<shangp.length;i++){
            if(commname.indexOf(shangp[i])==-1){
                commname.push(shangp[i]);
            }
        }
        //alert(commname);

        //冒泡排序(数组排序)
        var temp=0;
        for (var i = 0; i < n.length; i++) {
            for (var j = 0; j < n.length - 1; j++) {
                if (n[j] > n[j+1]) {
                    temp = n[j];
                    n[j] = n[j+1];
                    n[j+1] = temp;
                }
            }
        }

        //将排序好的月份重新放入数组
        for (var i=0;i<n.length;i++){
            chushisz.push(n[i]+"月");
        }
        //alert(chushisz);

        //最高销量
        var max = sum[0];
        for(var i in sum){
            if(sum[i]>max){
                max=sum[i];
                var zuigao = commname[i];
            }
        }

        //alert(max+"---"+zuigao);
        //最低销量
        var min=sum[1];
        for (var i=1;i<sum.length;i++){
            if (sum[i]<min){
                min = sum[i];
                var zuidi=commname[i];
            }
        }
        //alert(min+"----"+zuidi);

        if (data){
            $("#maxYue").append("<p style='color:#fff;font-size:3em;text-align:center;'>"+max+"</p>");
            $("#minYue").append("<p style='color:#fff;font-size:3em;text-align:center;'>"+min+"</p>");
            $("#maxcomm").append("<p style='color:#fff;font-size:2em;text-align:center;'>"+zuigao+"</p>");
            $("#mincomm").append("<p style='color:#fff;font-size:2em;text-align:center;'>"+zuidi+"</p>");
        }

        var myCanvas = document.getElementById("myChart").getContext("2d");

        var barChart = new Chart(myCanvas, {
            type: 'bar',
            data: {
                labels:chushisz,
                datasets: [{
                    label: '月销量',
                    data:sum,
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
            },
            options: {
                events:false,
                hover: {
                    animationDuration: 0
                },
                animation: {
                    duration: 1,
                    onComplete: function () {
                        var chartInstance = this.chart,
                            ctx = chartInstance.ctx;

                        ctx.font = Chart.helpers.fontString(Chart.defaults.global.defaultFontSize, Chart.defaults.global.defaultFontStyle, Chart.defaults.global.defaultFontFamily);
                        ctx.textAlign = 'center';
                        ctx.textBaseline = 'bottom';

                        this.data.datasets.forEach(function (dataset, i) {
                            var meta = chartInstance.controller.getDatasetMeta(i);
                            meta.data.forEach(function (bar, index) {
                                var data = dataset.data[index];
                                ctx.fillText(data, bar._model.x, bar._model.y - 5);
                            });
                        });
                    }
                },
            }
        });


        Chart.defaults.global.defaultFontFamily = "Lato";
        Chart.defaults.global.defaultFontSize = 15;
        Chart.defaults.global.defaultFontColor = 'rgba(54, 162, 235)';
    })



    //下拉换表
    layui.use(['form','element','layer'], function() {
        var form = layui.form,
            $ = layui.jquery,
            layer = layui.layer,
            element = layui.element;

        form.on('select', function(data) {
            category = data.value;
            categoryName = data.elem[data.elem.selectedIndex].text;
            form.render('select');

        var obj = new Object();
        obj.commname = categoryName;
        obj.s_id=<%=request.getSession().getAttribute("users_id")%>

    //统计图数据
        doData("datastatics/cList",obj,function (data) {
            var shuzu=[];
            var month=[];
            var n=[];
            var chushi=[];
            var sp=[];
            var comm=[];
            //获取数据
            for (var i=1;i<=data.a.length;i++){
                shuzu.push(data.a[i]);
            }

            //alert(shuzu);

            for (var i=0;i<data.clist.length;i++){
                month.push(data.clist[i].time);
            }

            for (var i=0;i<data.clist.length;i++){
                sp.push(data.clist[i].commname);
            }


            //数组去重
            for(var i=0;i<month.length;i++){
                if(n.indexOf(month[i])==-1){
                   n.push(month[i]);
                    }
                }

            for(var i=0;i<sp.length;i++){
                if(comm.indexOf(sp[i])==-1){
                    comm.push(sp[i]);
                }
            }


            //冒泡排序(数组排序)
            var temp=0;
            for (var i = 0; i < n.length; i++) {
                for (var j = 0; j < n.length - 1; j++) {
                    if (n[j] > n[j+1]) {
                        temp = n[j];
                        n[j] = n[j+1];
                        n[j+1] = temp;
                    }
                }
            }
            //将排序好的月份重新放入数组
            for (var i=0;i<n.length;i++){
                chushi.push(n[i]+"月");
            }



            //创建柱状图
            var myCanvas = $("#myChart");
            var myCanvas = document.getElementById("myChart");
            var myCanvas = document.getElementById("myChart").getContext("2d");

            var barChart = new Chart(myCanvas, {
                type: 'bar',
                data: {
                    labels:chushi,
                    datasets: [{
                        label: '月销量',
                        data:shuzu,
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
                },
                options: {
                    events:false,
                    hover: {
                        animationDuration: 0
                    },
                    animation: {
                        duration: 1,
                        onComplete: function () {
                            var chartInstance = this.chart,
                                ctx = chartInstance.ctx;

                            ctx.font = Chart.helpers.fontString(Chart.defaults.global.defaultFontSize, Chart.defaults.global.defaultFontStyle, Chart.defaults.global.defaultFontFamily);
                            ctx.textAlign = 'center';
                            ctx.textBaseline = 'bottom';

                            this.data.datasets.forEach(function (dataset, i) {
                                var meta = chartInstance.controller.getDatasetMeta(i);
                                meta.data.forEach(function (bar, index) {
                                    var data = dataset.data[index];
                                    ctx.fillText(data, bar._model.x, bar._model.y - 5);
                                });
                            });
                        }
                    },
                }
            });


            Chart.defaults.global.defaultFontFamily = "Lato";
            Chart.defaults.global.defaultFontSize = 15;
            Chart.defaults.global.defaultFontColor = 'rgba(54, 162, 235)';

        });
        });


    //绑定下拉框
        selete();
        function selete(){
            var obj = new  Object();
            obj.id = "";
            obj.commname ="";
            obj.s_id =""+<%=request.getSession().getAttribute("users_id")%>;
            /*完成站点加载，如果是不是新增，要实现数据选中*/
            doData("commodity/find",obj,function (data) {
                if (data!=null && data.obj!=undefined && data.obj!=null)
                    for(var i=0;i<data.obj.length;i++)
                    {
                        $("#commid").append("<option value='"+data.obj[i].commname+"'>"+data.obj[i].commname+"</option>");
                    }

                layui.use(['form'],function () {
                    var form=layui.form;
                    form.render('select'); //刷新select选择框渲染
                });
            });
        };


        //iframe自适应
        $(document).ready(function(){
            $("#myiframe").load(function(){
                $(this).height(0); //用于每次刷新时控制IFRAME高度初始化
                var height = $(this).contents().height() + 10;
                $(this).height( height < 669 ? 669 : height );
            });
        });
 });

</script>

</body>
</html>
