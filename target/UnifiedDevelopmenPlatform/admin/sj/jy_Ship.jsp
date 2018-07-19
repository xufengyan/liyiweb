<%--
  Created by IntelliJ IDEA.
  User: xiechangchun
  Date: 2018/5/26
  Time: 下午4:31
  To change this template use File | Settings | File Templates.
--%>
<%--全部查询--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init_layui.jsp"%>
<html>
<head>
    <title>通知信息维护</title>
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>/plugins/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>/plugins/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/plugins/ueditor/lang/zh-cn/zh-cn.js"></script>
    <script type="text/javascript"src="<%=basePath%>/static/js/html5media.min.js"></script>

</head>
<body style="padding-top: 10px">
<form class="layui-form" id="ff">
    <fieldset class="layui-elem-field" style="margin: 20px;">
        <legend style="font-size: 18px">选择物流</legend>
        <input type="hidden" name="id"/>
        <div class="layui-form-item">
            <label class="layui-form-label">物流名：</label>
            <div class="layui-input-block"style="width:500px;">
                <select name="logistics.id" id="logisticsid"><option value="">--请选择物流--</option></select>
            </div>
        </div>

        <div class="layui-form-item" >
            <label class="layui-form-label">运单号:</label>
            <div class="layui-input-block" style="width: 500px;">
                <input type="text" name="logisticsnumber" id="logisticsnumber" required lay-verify="required" autocomplete="off" class="layui-input" readonly="readonly">
            </div>
        </div>

        <div class="layui-form-item" id="sta">
            <label class="layui-form-label">状态:</label>
            <div class="layui-input-inline">
                <input type="text" name="status" id="status" required lay-verify="required" autocomplete="off" class="layui-input" readonly="readonly">
            </div>
        </div>

        <div class="layui-form-item" id="eva">
            <label class="layui-form-label">订单状态:</label>
            <div class="layui-input-inline">
                <input type="text" name="evalustatues" id="evalustatues" required lay-verify="required" autocomplete="off" class="layui-input" readonly="readonly">
            </div>
        </div>

    </fieldset>

    <%---------------------------填写信息---------------------------------%>

    <fieldset class="layui-elem-field" style="margin: 20px;">
        <legend style="font-size: 18px">寄件人地址</legend>
        <div class="layui-form-item" >
            <label class="layui-form-label">寄件人:</label>
            <div class="layui-input-block" style="width: 500px;">
                <input type="text" name="sendername" id="sendername" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item" >
            <label class="layui-form-label">寄件地址:</label>
            <div class="layui-input-block" style="width: 500px;">
                <input type="text" name="senderaddress" id="senderaddress" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item" >
            <label class="layui-form-label">寄件人电话:</label>
            <div class="layui-input-block" style="width: 500px;">
                <input type="text" name="senderphone" id="senderphone" required lay-verify="required|phone" autocomplete="off" class="layui-input" maxlength="11">
            </div>
        </div>
    </fieldset>


    <fieldset class="layui-elem-field" style="margin: 20px;">
        <legend style="font-size: 18px">收件人地址</legend>
        <div class="layui-form-item" >
            <label class="layui-form-label">收件人:</label>
            <div class="layui-input-block" style="width: 500px;">
                <input type="text" name="a_receiver" id="a_receiver" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item" >
            <label class="layui-form-label">收件地址:</label>
            <div class="layui-input-block" style="width: 500px;">
                <input type="text" name="a_address" id="a_address" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item" >
            <label class="layui-form-label">收件人电话:</label>
            <div class="layui-input-block" style="width: 500px;">
                <input type="text" name="a_phone" id="a_phone" required lay-verify="required|phone" autocomplete="off" class="layui-input" maxlength="11">
            </div>
        </div>
    </fieldset>


    <div class="layui-form-item" id="dButton" style="padding-left: 150px">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">发货</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>

</form>


<script>
    //实例化编辑器
    var kb=new KBLayUI("business");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    if(type!=0)
        kb.getMe(getURLParamValue("id"),function (obj) {
            $('#ff').form('load', obj);//导入修改的数据，并绑定在界面上
                $('#logisticsnumber').val(randomString(16));
                $('#status').val("待收货");
                $('#evalustatues').val("在途中");
            });

    if (type==2)//表示浏览
    {
        $("#dButton").hide();
    }

    $("#sta").hide();
    $("#eva").hide();

    var sta = "待收货";
    //提交表单
    kb.doFormLayui("formDemo",function () {
        var obj=serializeArrayToObject("ff");
        obj.logisname=$("#logisticsid").val();
        obj.shiptime="1";
        // obj.a_receiver=$('#a_receiver').val();
        // obj.a_address=$('#a_address').val();
        // obj.a_phone=$('#a_phone').val();
        // alert("运单号:"+$("#logisticsnumber").val());
        // alert("运单名:"+obj.logisname);
            kb.edit(obj, function (returnBack) {
                var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
                parent.layer.close(index);
                parent.find(sta);
            });

    });


    //绑定下拉框
    selete();

    function selete(){
        var obj = new  Object();
        obj.id = "";
        obj.logisticsname ="";
        /*完成站点加载，如果是不是新增，要实现数据选中*/
        doData("logistics/find",obj,function (data) {
            if (data!=null && data.obj!=undefined && data.obj!=null)
                for(var i=0;i<data.obj.length;i++)
                {
                    $("#logisticsid").append("<option value='"+data.obj[i].logisticsname+"'>"+data.obj[i].logisticsname+"</option>");
                }
            if(type!=0)
                kb.getMe(getURLParamValue("id"),function (data) {
                    console.log(data);
                    $("#logisticsid").find("option[value='"+data.logistics.id+"']").attr("selected","selected");

                    layui.use(['form'],function () {
                        var form=layui.form;
                        form.render('select'); //刷新select选择框渲染
                    });
                });
            layui.use(['form'],function () {
                var form=layui.form;
                form.render('select'); //刷新select选择框渲染
            });
        });
    };


    //生成流水号
    function randomString(len) {
        len = len || 16;
        var $chars = '0123456789';
        var maxPos = $chars.length;
        var pwd = '';
        for (i = 0; i < len; i++) {
            //0~32的整数
            pwd += $chars.charAt(Math.floor(Math.random() * (maxPos + 1)));

        }
        return pwd;
    }
    //document.write(randomString(16));

    // function RndNum(n){
    //     var rnd="";
    //     for(var i=0;i<n;i++)
    //         rnd+=Math.floor(Math.random()*10);
    //     return rnd;
    // }
    // document.write(RndNum(16));
    /*
    var count=3000;
    var originalArray=new Array;//原数组
    //给原数组originalArray赋值
    for (var i=0;i<count;i++){
        originalArray[i]=i+1;
    }
    var d1=new Date().getTime();
    originalArray.sort(function(){ return 0.5 - Math.random(); });
    for (var i=0;i<4;i++){
        document.write(originalArray[i]);
    }
    var d2=new Date().getTime();
    document.write("运算耗时"+(d2-d1));
    */
    /*
    var r=parseInt(Math.random()*38);
    var array=[];
    for(var i=0;i<11;i++)
    {
        var flag=0;
        do
        {
            for(var j=0;j<array.length;j++)
            {
                if(array[j]==r) {flag=1;break;}
            }
            if(!flag)
            {
                array[array.length]=r;
            }
            else
            {
                r=parseInt(Math.random()*38);
            }
        }while(!flag);
    }
    for(var j=0;j<array.length;j++)
        document.write(array[j]);
    */

</script>
</body>
</html>
