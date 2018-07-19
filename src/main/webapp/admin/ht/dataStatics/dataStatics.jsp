<%--
  Created by IntelliJ IDEA.
  User: wujiayou
  Date: 2018/5/29
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ include file="/header/init.jsp"%>



<html style="height: 100%">
<head>
    <meta charset="utf-8">
    <style>
        body{margin: 0px;padding: 0px}
        .common{width: 380px;height: 130px;border-radius: 5px;float:left}
        .header-div-one{background-color: rgb(252, 133, 86);margin-left: 90px }
        .header-div-two{background-color: rgb(248, 187, 57);margin-left: 144px}
        .sale{width:76px;height:50px;font-size:14px;color:#fff;line-height: 34px;padding:10px;
            border-radius:5px;}

    </style>
</head>
<body style="height: 100%; margin: 0">


                <div id="coutpart" class="header-div-one common" style="margin-left:30px ">
                    <span class="sale" style="background-color: #f79b67;">
                        <font>总用户数</font>
                    </span>
                </div>
                <div id="coutpart2" class="header-div-two common" style="margin-left:90px ">
                    <span class="sale" style="background-color: #f79b67">
                        <font>总店铺数</font>
                    </span>
                </div>
                <div id="container" style="width:1000px;height: 700px;margin-left: -30px"></div>
            </div>
        </div>

    </div>
</div>



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
            data:['用户数','店铺数']
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
                name: '用户个数',
                min: 0,
                max: 50,
                interval: 5,
                axisLabel: {
                    formatter: '{value} '
                }
            },
            {
                type: 'value',
                name: '店铺个数',
                min: 0,
                max: 50,
                interval:5,
                axisLabel: {
                    formatter: '{value} '
                }
            }
        ],
        series: [
            {
                name:'用户数',
                type:'bar',
                 //data:[3, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3]
                data:[]
            },
            {
                name:'店铺数',
                type:'bar',
                 // data:[2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3]
                data:[]
            },


        ]
    };

     var names=[];    //数组（实际用来盛放X轴坐标值）
     var num1=[];    //库存数组（实际用来盛放Y坐标值）
     var num2=[];    //销量数组（实际用来盛放Y坐标值）

    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
    doData("p_dataStatics/find2","",function (data) {

      //  alert("用户传的值："+data.ulist[0].time);

       // 取出最大数
        var max = data.ulist[0].usercount;

        for(var i = 1; i < data.ulist.length; i++) {
            var cur =data.ulist[i].usercount;
            cur > max ? max = cur : null
        }
        console.log(max);



        if (data) {
            for (var i = 0; i < data.ulist.length; i++) {
                names.push(data.ulist[i].time+"月");    //挨个取出并填入库存数组
            }

            for (var i = 0; i < data.ulist.length; i++) {
                num1.push(data.ulist[i].usercount);//挨个取出,并填入销量数组

            }
            for (var i = 0; i < data.slist.length; i++) {
                num2.push(data.slist[i].storecount);    //挨个算出并填入平均销量数组
            }
            $("#coutpart").append(" <p style=\"font-size:4em;text-align:center;color:white;margin-top:18px\">"+data.ulist[0].alluser+"</p>");

            $("#coutpart2").append(" <p style=\"font-size:4em;text-align:center;color:white;margin-top:18px\">"+data.slist[0].allstore+"</p>\n")

            myChart.hideLoading();    //隐藏加载动画
            myChart.setOption({        //加载数据图表
                xAxis: {
                    data: names
                },
                series: [{
                    // 根据名字对应到相应的系列
                    name: '用户数',
                    data: num1
                }, {
                    // 根据名字对应到相应的系列
                    name: '店铺数',
                    data: num2
                }
                ],
                yAxis: [
                    {
                        type: 'value',
                        name: '个数',
                        min: 0,
                        max: Math.round(max*1.5),
                        interval: Math.round(max*1.5/2),
                        axisLabel: {
                            formatter: '{value} '
                        }
                    },
                    {
                        type: 'value',
                        name: '个数',
                        min: 0,
                        max: Math.round(max*1.5),
                        interval:Math.round(max*1.5/2),
                        axisLabel: {
                            formatter: '{value} '
                        }
                    }
                ],


            });


        }
    })





</script>
</body>
</html>
