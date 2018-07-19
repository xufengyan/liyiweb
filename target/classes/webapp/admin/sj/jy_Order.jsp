<%--
  Created by IntelliJ IDEA.
  User: xiechangchun
  Date: 2018/5/18
  Time: 上午11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init_layui.jsp"%>
<html>
<head>
    <title>订单信息</title>
</head>


<body style="padding-top: 10px;">

<div class="layui-form-item">
    <div class="layui-inline">
    <label class="layui-form-label">订单编号:</label>
    <div class="layui-input-block">
        <input id="orders_id" name="orders_id" readonly="readonly" autocomplete="off" class="layui-input" type="text" style="border: 0px;font-size: 20px;color: red"/>
    </div>
    </div>
    <div class="layui-inline">
        <label class="layui-form-label">运单号:</label>
        <div class="layui-input-block">
            <input id="logisticsnumber" name="logisticsnumber" readonly="readonly" autocomplete="off" class="layui-input" type="text" style="border: 0px;font-size: 20px;color: red"/>
        </div>
    </div>
</div>

<style>

    .layui-input{
        border: 0px;
    }

</style>

<form class="layui-form" id="ff">
    <%--<input type="hidden" name="oldId"/>--%>

    <fieldset class="layui-elem-field" style="margin: 20px;">
        <legend>收件人信息</legend>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">收件人:</label>
            <div class="layui-input-inline">
                <input name="a_receiver" id="a_receiver" required  lay-verify="required" autocomplete="off" class="layui-input" type="text" readonly="readonly">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">联系电话:</label>
            <div class="layui-input-inline">
                <input name="a_phone" id="a_phone" required  lay-verify="required" autocomplete="off" class="layui-input" type="text" readonly="readonly">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">收货地址:</label>
            <div class="layui-input-block">
                <input id="a_address" name="a_address" readonly="readonly" required lay-verify="required" autocomplete="off" type="text" class="layui-input">
            </div>
        </div>
    </div>
    </fieldset>

    <fieldset class="layui-elem-field" style="margin: 20px;">
        <legend>产品信息</legend>


    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">商品名:</label>
            <div class="layui-input-inline">
                <input name="commname" id="commname" required  lay-verify="required" autocomplete="off" class="layui-input" type="text" readonly="readonly">
            </div>
        </div>

        <div class="layui-inline">
            <label class="layui-form-label">类型:</label>
            <div class="layui-input-inline">
                <input name="stylename" id="stylename" required  lay-verify="required" autocomplete="off" class="layui-input" type="text" readonly="readonly">
            </div>
        </div>

        <div class="layui-inline">
            <label class="layui-form-label">下单时间:</label>
            <div class="layui-input-inline">
                <input name="ordertime" id="ordertime" required  lay-verify="required" autocomplete="off" class="layui-input" type="text" readonly="readonly">
            </div>
        </div>

        <div class="layui-inline">
            <label class="layui-form-label">数量:</label>
            <div class="layui-input-inline">
                <input name="goodsnumber" required  lay-verify="required" autocomplete="off" class="layui-input" type="text" readonly="readonly">
            </div>
        </div>

        <div class="layui-inline">
            <label class="layui-form-label">金额:</label>
            <div class="layui-input-inline">
                <input name="price" required  lay-verify="required" autocomplete="off" class="layui-input" type="text" readonly="readonly">
            </div>
        </div>

        <div class="layui-inline">
            <label class="layui-form-label">实际金额:</label>
            <div class="layui-input-inline">
                <input name="reality" required  lay-verify="required" autocomplete="off" class="layui-input" type="text" readonly="readonly">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">发货时间:</label>
                <div class="layui-input-inline">
                    <input type="text" name="shiptime" required lay-verify="required" autocomplete="off" class="layui-input" readonly="readonly">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">快递名称:</label>
                <div class="layui-input-inline">
                    <input type="text" name="logisname" required lay-verify="required" autocomplete="off" class="layui-input" readonly="readonly">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">运单号:</label>
                <div class="layui-input-inline">
                    <input type="text" name="logisticsnumber" required lay-verify="required" autocomplete="off" class="layui-input" readonly="readonly">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">备注:</label>
                <div class="layui-input-inline">
                    <input type="text" name="note" required lay-verify="required" autocomplete="off" class="layui-input" readonly="readonly">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">状态:</label>
                <div class="layui-input-inline">
                    <input type="text" name="status" required lay-verify="required" autocomplete="off" class="layui-input" readonly="readonly">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">物流状态:</label>
                <div class="layui-input-inline">
                    <input type="text" name="evalustatue" required lay-verify="required" autocomplete="off" class="layui-input" readonly="readonly">
                </div>
            </div>
        </div>
    </div>
    </fieldset>


    <fieldset class="layui-elem-field" style="margin: 20px;">
        <legend>物流信息</legend>

        <div class="demo" type="hidden" id="wuliu">
            <div class="history">
                <div class="history-date">
                    <ul style="width: 915px">
                        <h2>
                        </h2>
                        <li >
                            <h3>昨天<span>10:20</span></h3>
                            <dl>
                                <dt>运输中<span>在广州分拨中心进行装车扫描,即将发往:江西南昌分拨中心</span></dt>
                            </dl>
                        </li>
                        <li>
                            <h3>昨天<span>07:20</span></h3>
                            <dl>
                                <dt><span>在分拨中心广东广州分拨中心进行卸车扫描</span></dt>
                            </dl>
                        </li>
                        <li>
                            <h3>昨天<span>05:11</span></h3>
                            <dl>
                                <dt><span>在广东广州分拨中心芳村分拨点进行装车扫描,即将发往:广东广州分拨中心</span></dt>
                            </dl>
                        </li>
                        <li>
                            <h3>昨天<span>00:12</span></h3>
                            <dl>
                                <dt><span>在广东广州分拨中心芳村分拨点进行中转集包扫描,将发往:江西南昌网点包</span></dt>
                            </dl>
                        </li>
                        <li>
                            <h3>05-21<span>23:55</span></h3>
                            <dl>
                                <dt><span>在分拨中心广东广州分拨中心芳村分拨点进行称重扫描</span></dt>
                            </dl>
                        </li>
                        <li>
                            <h3>05-21<span>20:09</span></h3>
                            <dl>
                                <dt>已揽件<span>广东省广州市海珠区金碧公司进行揽件扫描</span></dt>
                            </dl>
                        </li>
                        <li>
                            <h3>05-21<span>10:50</span></h3>
                            <dl>
                                <dt>已发货<span>卖家已发货</span></dt>
                            </dl>
                        </li>
                        <li>
                            <h3>05-21<span>10:49</span></h3>
                            <dl>
                                <dt>已下单<span>您的订单已打物流单</span></dt>
                            </dl>
                        </li>
                        <li>
                            <h3>05-21<span>10:43</span></h3>
                            <dl>
                                <dt><span>您的订单已通知配货</span></dt>
                            </dl>
                        </li>
                        <li>
                            <h3>05-21<span>10:43</span></h3>
                            <dl>
                                <dt><span>您的订单信息已审核通过</span></dt>
                            </dl>
                        </li>
                        <li>
                            <h3>05-21<span>10:43</span></h3>
                            <dl>
                                <dt><span>您的订单已开始处理</span></dt>
                            </dl>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </fieldset>

    <div class="layui-form-item" id="dButton">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<script>
    <%--对应的控制器的requestMapping--%>
    var kb=new KBLayUI("business");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改

    if (type!=0) {
        var obj=new Object()
        obj.id=getURLParamValue("id");
        doData("/business/getme2",obj,function (data) {
            //callback(data.obj);//回调
            $("#orders_id").val(data.obj[0].orders_id);
            $("#logisticsnumber").val(data.obj[0].logisticsnumber);
            data.obj[0].ordertime = Date.prototype.getLongDate(data.obj[0].ordertime);
            data.obj[0].shiptime = Date.prototype.getLongDate(data.obj[0].shiptime);
            $('#ff').form('load', data.obj[0]);//导入修改的数据，并绑定在界面

            if (data.obj[0].status == "待发货"){
                $("#wuliu").html("<span style='font-size: 20px;margin-left: 350px;'>"+"暂无物流信息!"+"</span>");
            }


        });
    }

    if (type==2)//表示浏览
    {
        $("#dButton").hide();
    }

    layui.use(['layedit'],function () {
        kb.doFormLayui("formDemo",function () {
            var obj=serializeArrayToObject("ff");//获取表单数据，形成json对象
            /*此处可以继续给obj对象进行赋值操作*/
            if (type==0){
                kb.add(obj,function (returnBack) {
                    var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
                    parent.layer.close(index);
                    parent.find();
                });}
            else
                kb.edit(obj,function (returnBack) {
                    var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
                    parent.layer.close(index);
                    parent.find();

                });
        });
    });


    //物流信息
    $(function(){
        systole();
    });

    function systole(){
        if(!$(".history").length){
            return;
        }
        var $warpEle = $(".history-date"),
            $targetA = $warpEle.find("h2 a,ul li dl dt a"),
            parentH,
            eleTop = [];

        parentH = $warpEle.parent().height();
        $warpEle.parent().css({"height":59});

        setTimeout(function(){

            $warpEle.find("ul").children(":not('h2:first')").each(function(idx){
                eleTop.push($(this).position().top);
                $(this).css({"margin-top":-eleTop[idx]}).children().hide();
            }).animate({"margin-top":0}, 1600).children().fadeIn();

            $warpEle.parent().animate({"height":parentH}, 2600);

            $warpEle.find("ul").children(":not('h2:first')").addClass("bounceInDown").css({"-webkit-animation-duration":"2s","-webkit-animation-delay":"0","-webkit-animation-timing-function":"ease","-webkit-animation-fill-mode":"both"}).end().children("h2").css({"position":"relative"});

        }, 600);

        $targetA.click(function(){
            $(this).parent().css({"position":"relative"});
            $(this).parent().siblings().slideToggle();
            $warpEle.parent().removeAttr("style");
            return false;
        });
    };



</script>
</body>
</html>
