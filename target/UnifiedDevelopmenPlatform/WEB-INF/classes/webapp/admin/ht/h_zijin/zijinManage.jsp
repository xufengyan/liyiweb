<%--
  Created by IntelliJ IDEA.
  User: 黄实德
  Date: 2018/6/4
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init.jsp"%>
<html>
<head>
    <title>资金管理</title>
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet" />
    <link href="<%=basePath%>/liyicss/bootstrap.css" rel="stylesheet" />
    <link href="<%=basePath%>/liyicss/font-awesome.css" rel="stylesheet" />
    <link href="<%=basePath%>/liyicss/morris-0.4.3.min.css" rel="stylesheet" />
    <link href="<%=basePath%>/liyicss/custom-styles.css" rel="stylesheet" />
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>

    <style>
        #p1{
            font-size: 30px;
            margin:0px 35% ;
        }
        #p2{
            font-size: 30px;
            margin:0px 35% ;
        }
        .head{
            width: 100%;
            height: 120px;
            margin: 0px 0px 0px 0px;

        }
        #ptyr{
            width: 20%;
            height: 100px;
            margin: 10px 0px 0px 15%;
            background-color:orange;

        }

        #dpyr{
            width: 20%;
            height: 100px;
            margin: -100px 0px 0px 60%;
            background-color: red;

        }

        .left{
            width: 50%;
            height: 400px;
            border-radius: 10px;
        }

        .right{
            width: 50%;
            height: 400px;
            float: right;
            margin-top: -400px;

        }


    </style>
</head>
<body>
     <div class="head">
           <div id="ptyr">
               <div id="ptright">
                   <font style="color: white">平台已入资金</font>
               </div>
           </div>
           <div id="dpyr">
               <div id="dpright">
                   <font style="color: white">店铺已入资金</font>
               </div>
           </div>
     </div>
     <div class="left">

               <div class="col-md-4 col-sm-12 col-xs-12" style="width: 260px;height: 300px" >
                   <div class="panel panel-default" >
                       <div class="panel-heading">
                           <center>前十店铺排行榜</center>
                       </div>
                       <div class="panel-body" style="height: 300px;">
                           <div class="list-group" id="tamax" >
                           </div>
                       </div>
                   </div>
               </div>

               <div class="col-md-4 col-sm-12 col-xs-12" style="width: 260px;height: 300px;float: right;margin:0px 0px 0px 0px">
                   <div class="panel panel-default" >
                       <div class="panel-heading">
                           <center>后十店铺排行榜</center>
                       </div>
                       <div class="panel-body" style="height: 300px;">
                           <div class="list-group" id="tamin" >
                           </div>
                       </div>
                   </div>
               </div>

     </div>
     <div class="right">
         <form class="layui-form" id="ff">
         <div class="layui-inline">
             <div class="layui-input-inline" style="width:230px;">
                 <select id="xiala" name="storename" lay-verify="required" lay-search="">
                     <option value="" selected="selected">直接选择或搜索选择店铺名称</option>
                 </select>
             </div>
             <div class="layui-btn-group">
                 <button class="layui-btn layui-btn-small" id="btnFind" style="height: 35px">
                     <i class="layui-icon">&#xe615;</i> 搜索
                 </button>
             </div>
         </div>
     </form>
         <div id="container" style="width:500px;height: 350px;"></div>
     </div>
     <script>


         var model=new Object();
         model.status="";
         doData("p_zijin/getone",model,function (data) {
             // alert(data.obj[0].money);
             $("#ptright").append("<p id='p1'>"+data.obj[0].money+"</p>");

         });
         model.status="已签收";
         doData("p_zijin/getone",model,function (data) {
             // alert(data.obj[0].money);
             $("#dpright").append("<p id='p2'>"+data.obj[0].money+"</p>");
         });
         model.storename="";
         doData("p_zijin/gettwo",model,function (data) {

             for (i=0;i<10;i++ ){
                 $("#tamax").append("<a href='#' class='list-group-item'><b>"+(i+1)+"</b><span class='badge'>"+data.obj[i].money+"</span>&nbsp;<b>"+data.obj[i].storename+"</b></a><br>");

             }
         })
         model.storename="";
         doData("p_zijin/getthree",model,function (data) {
             for (i=0;i<10;i++ ){
                 $("#tamin").append("<a href='#' class='list-group-item'><b>"+(i+1)+"</b><span class='badge'>"+data.obj[i].money+"</span>&nbsp;<b> "+data.obj[i].storename+"</b></a><br>");


             }
         })
         model.storename="";
         doData("p_zijin/getfour",model, function (data) {
                 for (var i = 0; i < data.obj.length; i++) {

                     $("#xiala").append("<option value='" + data.obj[i].storename + "'>" + data.obj[i].storename + "</option>");
                 }
             })

         layui.use(['layedit','laydate','form'],function () {

             var  form=layui.form;

             form.render('select');

         })



     </script>


     <script src="<%= basePath %>/script/common/jquery-1.8.2.min.js" charset='utf-8'></script>
     <script type="text/javascript" src="<%=basePath%>/script/common/echarts/liyi/echarts.min.js" charset='utf-8'></script>
     <script type="text/javascript" src="<%=basePath%>/script/common/echarts/liyi/echarts-gl.min.js" charset='utf-8'></script>
     <script type="text/javascript" src="<%=basePath%>/script/common/echarts/liyi/ecStat.min.js" charset='utf-8'></script>
     <script type="text/javascript" src="<%=basePath%>/script/common/echarts/liyi/dataTool.min.js" charset='utf-8'></script>
     <script type="text/javascript" src="<%=basePath%>/script/common/echarts/liyi/china.js" charset='utf-8'></script>
     <script type="text/javascript" src="<%=basePath%>/script/common/echarts/liyi/world.js" charset='utf-8'></script>
     <script type="text/javascript" src="<%=basePath%>/script/common/echarts/liyi/api" charset='utf-8'></script>
     <script type="text/javascript" src="<%=basePath%>/script/common/echarts/liyi/bmap.min.js" charset='utf-8'></script>
     <script type="text/javascript" src="<%=basePath%>/script/common/echarts/liyi/simplex.js" charset='utf-8'></script>

     <script type="text/javascript">

         var dom = document.getElementById("container");
         var myChart = echarts.init(dom);
         var app = {};
         option = null;
         app.title = '折柱混合';
         myChart.showLoading();
         option = {
             tooltip: {
                 trigger: 'axis',
                 axisPointer: {
                     type: 'cross',
                     crossStyle: {
                         color: '#999'
                     }
                 }
             },
             toolbox: {
                 feature: {
                     dataView: {show: true, readOnly: false},


         magicType: {show: true, type: ['line', 'bar']},
         restore: {show: true},
         saveAsImage: {show: true}
         }
         },
         legend: {
             data:['月销售额']
         },
         xAxis: [
             {
                 type: 'category',
                 // data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
                 data:[],
                 axisPointer: {
                     type: 'shadow'
                 }

             }
         ],
             yAxis: [
             {
                 type: 'value',
                 name: '元',
                 min: 0,
                 max: 1800,
                 interval: 100,
                 axisLabel: {
                     formatter: '{value} '
                 }
             },
             {
                 type: 'value',
                 name: '元',
                 min: 0,
                 max: 1800,
                 interval:100,
                 axisLabel: {
                     formatter: '{value} '
                 }
             }
         ],
             series: [
             {
                 name:'月销售额',
                 type:'bar',
                 //data:[3, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3]
                 data:[]
             },
             


         ]
         };



         if (option && typeof option === "object") {
             myChart.setOption(option, true);
         }

         model.storename="";
         doData("p_zijin/findByPagetwo",model,function (data) {
             var max = data.oList[0].money;

             for(var i = 1; i < data.oList.length; i++) {
                 var cur =data.oList[i].money;
                 cur > max ? max = cur : null
             }
             console.log(max);

             if (data) {
                 var names2=[];    //数组（实际用来盛放X轴坐标值）
                 var num12=[];
                 for (var i = 0; i < data.oList.length; i++) {
                     names2.push(data.oList[i].time+"月");    //挨个取出用户并填入库存数组

                 }

                 for (var i = 0; i < data.oList.length; i++) {
                     num12.push(data.oList[i].money);    //挨个取出,并填入销量数组

                 }

                 myChart.hideLoading();    //隐藏加载动画
                 myChart.setOption({        //加载数据图表
                     xAxis: {
                         data: names2
                     },
                     series: [{
                         // 根据名字对应到相应的系列
                         name: '月销售额',
                         data: num12
                     }
                     ],
                     yAxis: [
                         {
                             type: 'value',
                             name: '元',
                             min: 0,
                             max: Math.round(max*1.5),
                             interval: Math.round(max*1.5/20),
                             axisLabel: {
                                 formatter: '{value} '
                             }
                         },
                         {
                             type: 'value',
                             name: '元',
                             min: 0,
                             max: Math.round(max*1.5),
                             interval:Math.round(max*1.5/20),
                             axisLabel: {
                                 formatter: '{value} '
                             }
                         }
                     ],

                 });



             }
         })
         $("#btnFind").click(function (evt) {

             $("#container").load();
             evt.preventDefault();
             model.storename=$("#xiala").val();
             doData("p_zijin/findByPagetwo", model, function (data) {
                 var max = data.oList[0].money;

                 for (var i = 1; i < data.oList.length; i++) {
                     var cur = data.oList[i].money;
                     cur > max ? max = cur : null
                 }
                 console.log(max);

                 if (data) {
                     var names2 = [];    //数组（实际用来盛放X轴坐标值）
                     var num12 = [];
                     for (var i = 0; i < data.oList.length; i++) {
                         names2.push(data.oList[i].time + "月");    //挨个取出用户并填入库存数组
                         //alert(names2+"-names2");
                     }

                     for (var i = 0; i < data.oList.length; i++) {
                         num12.push(data.oList[i].money);    //挨个取出,并填入销量数组

                     }

                     myChart.hideLoading();
                     myChart.setOption({        //加载数据图表
                         xAxis: {
                             data: names2,


                         },
                         series: [{
                             // 根据名字对应到相应的系列
                             name: '月销售额',
                             data: num12
                         }
                         ],
                         yAxis: [
                             {
                                 type: 'value',
                                 name: '元',
                                 min: 0,
                                 max: Math.round(max * 1.5),
                                 interval: Math.round(max * 1.5 / 20),
                                 axisLabel: {
                                     formatter: '{value} '
                                 }
                             },
                             {
                                 type: 'value',
                                 name: '元',
                                 min: 0,
                                 max: Math.round(max * 1.5),
                                 interval: Math.round(max * 1.5 / 20),
                                 axisLabel: {
                                     formatter: '{value} '
                                 }
                             }
                         ],

                     });


                 }
             })
         })
     </script>





</body>
</html>
