<%--
  Created by IntelliJ IDEA.
  User: xufeng
  Date: 2018/5/26
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init_layui.jsp"%>
<html>
<head>
    <title>Title</title>
    <style>

        .judge{
            border-bottom: 1px dotted grey;
            margin-bottom: 10px;
        }

       .judge td {
            display: inline-block;
            font-size: 12px;
            margin-top: 20px;
        }
        td a{
            color: blue;

        }
        td a:hover{
            color:red;
            text-decoration:underline;
        }
       .layui-tab-brief>.layui-tab-title .layui-this{
           color: #ff5722;
       }
       .layui-tab-brief>.layui-tab-more li.layui-this:after, .layui-tab-brief>.layui-tab-title .layui-this:after{

           border-bottom: 2px solid #ff5722;
       }
        .layui-tab-title .layui-this:after{
            border: 2px solid red;
            border-bottom: none;
        }
    </style>
    
</head>
<body>
<blockquote  class="layui-elem-quote layui-text" style="margin-top: 10px; border-left: 5px solid #FF5722;font-size: 22px;color: black">商品发布</blockquote>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">

</fieldset>

<div class="layui-tab">
    <ul class="layui-tab-title">
        <li onclick="untreated()" class="layui-this">未处理评价</li>
        <li onclick="processed()">已处理评价</li>
    </ul>
    <div class="layui-tab-content">

        <div class="layui-tab-item layui-show">

        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                <ul class="layui-tab-title">
                    <li onclick="total()" class="layui-this">全部评价</li>
                    <li onclick="opinion()">好评</li>
                    <li onclick="zhongp()">中评</li>
                    <li onclick="chap()">差评</li>
                </ul>
                <div class="layui-tab-content" style="height: 100px;">
                    <div class="layui-tab-item layui-show">
                        <div style="line-height: 50px; width: 100%;height: 50px;border-bottom: 2px solid red">
                            <table>
                                <tr style="line-height:70px">
                                    <td style="display: inline-block;margin-left:80px">评价内容</td>
                                    <td style="display: inline-block;margin-left:300px">评价人</td>
                                    <td style="display: inline-block;margin-left:120px">评价宝贝</td>
                                    <td style="display: inline-block;margin-left:140px"><i class="layui-icon">&#xe6b2;</i> 操作</td>
                                </tr>
                            </table>
                        </div>
                        <div style=" margin-top:10px;width:100%;height: 110px;">
                            <table id="evaltable1">

                            </table>

                            <div style="margin-top: 30px;margin-left:250px">
                            <button onclick="countsubtract()" class="layui-btn layui-btn-normal layui-btn-sm">上一页</button>
                            <button onclick="countadd()" class="layui-btn layui-btn-normal layui-btn-sm">下一页</button>
                                <button class="layui-btn layui-btn-normal layui-btn-sm">当前页:<span id="dangpage1">1</span></button>
                                <button class="layui-btn layui-btn-normal layui-btn-sm">总页数:<span id="countpage1">1</span></button>
                            </div>
                        </div>
                    </div>
                    <div class="layui-tab-item">
                        <div style="line-height: 50px; width: 100%;height: 50px;border-bottom: 2px solid red">
                            <table>
                                <tr style="line-height:70px">
                                    <td style="display: inline-block;margin-left:80px">评价内容</td>
                                    <td style="display: inline-block;margin-left:300px">评价人</td>
                                    <td style="display: inline-block;margin-left:120px">评价宝贝</td>
                                    <td style="display: inline-block;margin-left:140px"><i class="layui-icon">&#xe6b2;</i> 操作</td>
                                </tr>
                            </table>
                        </div>
                        <div style=" margin-top:10px;width:100%;height: 110px;">
                            <table id="evaltable2">

                            </table>
                            <div style="margin-top: 30px;margin-left:250px">
                                <button onclick="countsubtract()" class="layui-btn layui-btn-normal layui-btn-sm">上一页</button>
                                <button onclick="countadd()" class="layui-btn layui-btn-normal layui-btn-sm">下一页</button>
                                <button class="layui-btn layui-btn-normal layui-btn-sm">当前页:<span id="dangpage2">1</span></button>
                                <button class="layui-btn layui-btn-normal layui-btn-sm">总页数:<span id="countpage2">1</span></button>
                            </div>
                        </div>
                    </div>
                    <div class="layui-tab-item">
                        <div style="line-height: 50px; width: 100%;height: 50px;border-bottom: 2px solid red">
                            <table>
                                <tr style="line-height:70px">
                                    <td style="display: inline-block;margin-left:80px">评价内容</td>
                                    <td style="display: inline-block;margin-left:300px">评价人</td>
                                    <td style="display: inline-block;margin-left:120px">评价宝贝</td>
                                    <td style="display: inline-block;margin-left:140px"><i class="layui-icon">&#xe6b2;</i> 操作</td>
                                </tr>
                            </table>
                        </div>
                        <div style=" margin-top:10px;width:100%;height: 110px;">
                            <table id="evaltable3">

                            </table>
                            <div style="margin-top: 30px;margin-left:250px">
                                <button onclick="countsubtract()" class="layui-btn layui-btn-normal layui-btn-sm">上一页</button>
                                <button onclick="countadd()" class="layui-btn layui-btn-normal layui-btn-sm">下一页</button>
                                <button class="layui-btn layui-btn-normal layui-btn-sm">当前页:<span id="dangpage3">1</span></button>
                                <button class="layui-btn layui-btn-normal layui-btn-sm">总页数:<span id="countpage3">1</span></button>
                            </div>
                        </div>
                    </div>


                    <div class="layui-tab-item"> <div style="line-height: 50px; width: 100%;height: 50px;border-bottom: 2px solid red">
                        <table>
                            <tr style="line-height:70px">
                                <td style="display: inline-block;margin-left:80px">评价内容</td>
                                <td style="display: inline-block;margin-left:300px">评价人</td>
                                <td style="display: inline-block;margin-left:120px">评价宝贝</td>
                                <td style="display: inline-block;margin-left:140px"><i class="layui-icon">&#xe6b2;</i> 操作</td>
                            </tr>
                        </table>
                    </div>
                        <div style=" margin-top:10px;width:100%;height: 110px;">
                            <table id="evaltable4">

                            </table>
                            <div style="margin-top: 30px;margin-left:250px">
                                <button onclick="countsubtract()" class="layui-btn layui-btn-normal layui-btn-sm">上一页</button>
                                <button onclick="countadd()" class="layui-btn layui-btn-normal layui-btn-sm">下一页</button>
                                <button class="layui-btn layui-btn-normal layui-btn-sm">当前页:<span id="dangpage4">1</span></button>
                                <button class="layui-btn layui-btn-normal layui-btn-sm">总页数:<span id="countpage4">1</span></button>
                            </div>
                        </div>

                    </div>
                </div>

            </div>

        </div>

        <div class="layui-tab-item">


            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                <ul class="layui-tab-title">
                    <li onclick="total2()" class="layui-this">全部评价</li>
                    <li onclick="opinion2()">好评</li>
                    <li onclick="zhongp2()">中评</li>
                    <li onclick="chap2()">差评</li>
                </ul>
                <div class="layui-tab-content" style="height: 100px;">
                    <div class="layui-tab-item layui-show">
                        <div style="line-height: 50px; width: 100%;height: 50px;border-bottom: 2px solid red">
                            <table>
                                <tr style="line-height:70px">
                                    <td style="display: inline-block;margin-left:80px">评价内容</td>
                                    <td style="display: inline-block;margin-left:300px">评价人</td>
                                    <td style="display: inline-block;margin-left:120px">评价宝贝</td>
                                    <td style="display: inline-block;margin-left:140px"><i class="layui-icon">&#xe6b2;</i> 操作</td>
                                </tr>
                            </table>
                        </div>
                        <div style=" margin-top:10px;width:100%;height: 110px;">
                            <table id="evaltable5">

                            </table>
                            <div style="margin-top: 30px;margin-left:250px">
                                <button onclick="countsubtract()" class="layui-btn layui-btn-normal layui-btn-sm">上一页</button>
                                <button onclick="countadd()" class="layui-btn layui-btn-normal layui-btn-sm">下一页</button>
                                <button class="layui-btn layui-btn-normal layui-btn-sm">当前页:<span id="dangpage5">1</span></button>
                                <button class="layui-btn layui-btn-normal layui-btn-sm">总页数:<span id="countpage5">1</span></button>
                            </div>
                        </div>
                    </div>
                    <div class="layui-tab-item">
                        <div style="line-height: 50px; width: 100%;height: 50px;border-bottom: 2px solid red">
                            <table>
                                <tr style="line-height:70px">
                                    <td style="display: inline-block;margin-left:80px">评价内容</td>
                                    <td style="display: inline-block;margin-left:300px">评价人</td>
                                    <td style="display: inline-block;margin-left:120px">评价宝贝</td>
                                    <td style="display: inline-block;margin-left:140px"><i class="layui-icon">&#xe6b2;</i> 操作</td>
                                </tr>

                            </table>
                        </div>
                        <div style=" margin-top:10px;width:100%;height: 110px;">
                            <table id="evaltable6">

                            </table>
                            <div style="margin-top: 30px;margin-left:250px">
                                <button onclick="countsubtract()" class="layui-btn layui-btn-normal layui-btn-sm">上一页</button>
                                <button onclick="countadd()" class="layui-btn layui-btn-normal layui-btn-sm">下一页</button>
                                <button class="layui-btn layui-btn-normal layui-btn-sm">当前页:<span id="dangpage6">1</span></button>
                                <button class="layui-btn layui-btn-normal layui-btn-sm">总页数:<span id="countpage6">1</span></button>
                            </div>
                        </div>
                    </div>
                    <div class="layui-tab-item">
                        <div style="line-height: 50px; width: 100%;height: 50px;border-bottom: 2px solid red">
                            <table>
                                <tr style="line-height:70px">
                                    <td style="display: inline-block;margin-left:80px">评价内容</td>
                                    <td style="display: inline-block;margin-left:300px">评价人</td>
                                    <td style="display: inline-block;margin-left:120px">评价宝贝</td>
                                    <td style="display: inline-block;margin-left:140px"><i class="layui-icon">&#xe6b2;</i> 操作</td>
                                </tr>
                            </table>
                        </div>
                        <div style=" margin-top:10px;width:100%;height: 110px;">
                            <table id="evaltable7">

                            </table>
                            <div style="margin-top: 30px;margin-left:250px">
                                <button onclick="countsubtract()" class="layui-btn layui-btn-normal layui-btn-sm">上一页</button>
                                <button onclick="countadd()" class="layui-btn layui-btn-normal layui-btn-sm">下一页</button>
                                <button class="layui-btn layui-btn-normal layui-btn-sm">当前页:<span id="dangpage7">7</span></button>
                                <button class="layui-btn layui-btn-normal layui-btn-sm">总页数:<span id="countpage7">7</span></button>
                            </div>


                        </div>
                    </div>


                    <div class="layui-tab-item"> <div style="line-height: 50px; width: 100%;height: 50px;border-bottom: 2px solid red">
                        <table>
                            <tr style="line-height:70px">
                                <td style="display: inline-block;margin-left:80px">评价内容</td>
                                <td style="display: inline-block;margin-left:300px">评价人</td>
                                <td style="display: inline-block;margin-left:120px">评价宝贝</td>
                                <td style="display: inline-block;margin-left:140px"><i class="layui-icon">&#xe6b2;</i> 操作</td>
                            </tr>
                        </table>
                    </div>
                        <div style=" margin-top:10px;width:100%;height: 110px;">
                            <table id="evaltable8">

                            </table>

                            <div style="margin-top: 30px;margin-left:250px">
                                <button onclick="countsubtract()" class="layui-btn layui-btn-normal layui-btn-sm">上一页</button>
                                <button onclick="countadd()" class="layui-btn layui-btn-normal layui-btn-sm">下一页</button>
                                <button class="layui-btn layui-btn-normal layui-btn-sm">当前页:<span id="dangpage8">8</span></button>
                                <button class="layui-btn layui-btn-normal layui-btn-sm">总页数:<span id="countpage8">8</span></button>
                            </div>
                        </div>

                    </div>
                </div>

            </div>




        </div>

    </div>


    </div>
</div>


</div>
</body>
<script>

    var high="";
    var limit=5;
    var start=0;
    var count=1;
    var tabletd="evaltable1";
    var evalustatus="未处理";
    var total3="";
    var rr=1;
    layui.use('element', function(){
        var $ = layui.jquery
            ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块
        doDatadome(high,count,limit,start,rr)
    });

    function doDatadome(h,count,limit,start,rr){
        var obj=new Object();
        obj.storeid=${sessionScope.get("users_id")};
        obj.type=h;
        obj.status=evalustatus;
        obj.limit=limit;
        obj.start=(count-1)*limit;
        doData("/sj_evaluation/getm2Page",obj,function (data) {
            $("#"+tabletd).html("");
            total3=parseInt(data.total/limit);
            if(data.total%limit==0){
                total3=total3;
            }else{
                total3=total3+1;
            }
            $("#dangpage"+rr).html(count);
            $("#countpage"+rr).html(total3);
            for (var i=0;i<data.obj.length;i++) {
                var id=""+data.obj[i].id;
                data.obj[i].assesstime=Date.prototype.getLongDate(data.obj[i].assesstime);
                $("#"+tabletd).append("<tr class='judge'><td><input type='hidden' id='u_id' value='" + data.obj[i].uid + "'></td>" +
                    "<td style='margin-top: 40px;margin-left: 10px; width: 50px;height: 50px'>" +
                    "<i class='layui-icon' title='" + data.obj[i].type + "' style='font-size: 30px; color:red;'>&#xe6af;</i></td>" +
                    "<td style='margin-left: 15px; width: 320px'><p>" + data.obj[i].assess + "</p><p >[" + data.obj[i].assesstime + "]</p></td>" +
                    "<td style='width:100px;margin-left: 40px'>买家:"+data.obj[i].nickname+" "+
                    "<img src='//img.alicdn.com/newrank/s_crown_1.gif' border='0' align='absmiddle'></td>" +
                    "<td style='margin-left:40px; width: 150px'><a href='/index/index?commid=" + data.obj[i].id + "' title='" + data.obj[i].commname + "'>" + data.obj[i].commname + "</a>" +
                    "<p class='price'><em>" + data.obj[i].reality + "</em>元</p></td>" +
                    "<td style='margin-left: 80px;'><button onclick=butn(\'"+id+"\') style='width: 60px'>回复</button><br>" +
                    "<br><a href='/index/index?evaluaid=" + data.obj[i].o_id + "'>投诉该评论</a>\n" +
                    " </td>");
            }
        });


    }


//点击未处理
function untreated(){
    evalustatus="未处理";
    high="";
    rr=1;
    doDatadome(high,count,limit,start,rr)
}

function processed() {

    evalustatus="已处理";
    high="";
    tabletd="evaltable5";
    rr=5;
    doDatadome(high,count,limit,start,rr)
}

function total() {
    high="";
    tabletd="evaltable1"
    rr=1
    doDatadome(high,count,limit,start,rr)
}


function opinion() {
    high="好评";
    tabletd="evaltable2"
    rr=2;
    doDatadome(high,count,limit,start,rr)
}
function zhongp() {
    high="中评";
    tabletd="evaltable3"
    rr=3;
    doDatadome(high,count,limit,start,rr);
}

function chap() {
    high="差评";
    tabletd="evaltable4"
    rr=4;
    doDatadome(high,count,limit,start,rr)
}
function total2() {
    high="";
    tabletd="evaltable5"
    rr=5;
    doDatadome(high,count,limit,start,rr)
}


function opinion2() {
    high="好评";
    tabletd="evaltable6"
    rr=6;
    doDatadome(high,count,limit,start,rr)
}
function zhongp2() {
    high="中评";
    tabletd="evaltable7"
    rr=7;
    doDatadome(high,count,limit,start,rr)
}

function chap2() {
    high="差评";
    tabletd="evaltable8"
    rr=8;
    doDatadome(high,count,limit,start,rr)
}


function countadd() {
    count+=1;

    if (count >total3) {
        count=total3;
        alert("已经是最后一页了")
    }
    else {
        doDatadome(high,count,limit,start,rr)
    }
}


function countsubtract() {
    count -= 1;
    if (count < 1) {
        count=1;
        alert("已经是最后一页了")
    }
    else {
        doDatadome(high,count,limit,start,rr)
    }
}


function butn(id) {
//alert(id);
    var toUrl="<%=basePath%>/sj_information/sj_evalanswer?id="+id;
    layui.use(['form','layer','element'], function() {
        var form = layui.form,
            layer = layui.layer,
            element = layui.element;
        layer.open({
            title: '评价回复',
            type: 2,
            area: ["80%","90%"],
            offset: ['20px', '100px'],
            content: toUrl
        });

    });
}

</script>

</html>
