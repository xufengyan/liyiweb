
<%--
  Created by IntelliJ IDEA.
  User: xufeng
  Date: 18/5/29
  Time: 上午10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init_layui.jsp"%>

<html>
<head>
    <title>店铺信息</title>
    <style>
        .layui-input-block {
            width: 200px;
        }
        .layui-input-block input{

            border: none;
        }
        .dimage{
            margin-top: 20px;
            margin-left: 70px;
            position: absolute;
            height: 100px;
            width: 100px;
            display: inline-block;
        }
        .commname{

            position: absolute;
            margin-left:180px;
            margin-top: 25px;
            width: 400px;
            height: 90px;
        }
    </style>
</head>
<body style="padding-top: 10px;">
<form class="layui-form" id="ff">
    <input type="hidden" name="id"/>
   <div style="width: 730px;height:150px;">
        <div class="dimage">
            <image src="#" id="imgLogo" style="width:100px;cursor:pointer;" alt="商品图片"></image>
        </div>
        <div id="commname" class="commname">

        </div>

   </div>

    <br>
    <div class="layui-form-item">
        <label class="layui-form-label">回复内容:</label>
        <div class="layui-input-block" style="width: 500px;height: 300px">
            <textarea id="content" name="introduce"  placeholder="请填写简介信息(500字以内)" style="display: none;" maxlength="500"></textarea>
        </div>
    </div>
    <br/>

    <div class="layui-form-item" id="dButton">
        <div class="layui-input-block">
            <button class="layui-btn" style="margin-top: 40px;background-color: #008AE5" lay-submit lay-filter="formDemo">回复</button>
        </div>
    </div>
</form>



<script>


    var kb=new KBLayUI("sj_evaluation");
    //var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    var model=new Object();
    var editor=null;
    model.id=getURLParamValue("id");
    //alert("评价的id"+model.id);
    doData("/sj_evaluation/getm3",model,function (data) {
        $('#ff').form('load', data.obj[0]);//导入修改的数据，并绑定在界面上

        $("#commname").append("<a style='font-size: 16px; href='#'>"+data.obj[0].commname+"</a>" +
            "<p style='margin-top: 5px; color: #8D8D8D'>商品样式:"+data.obj[0].stylename+"</p>" +
            "<p style='margin-top: 5px;color: #8D8D8D'>商品编号:"+data.obj[0].comid+"</p>");

        //alert(data.obj[0].styleImage);
        $("#imgLogo").attr("src",getRootPath()+"/uploadfiles/"+data.obj[0].styleImage);

        layui.use(['layedit'],function () {
            var layedit=layui.layedit;
            editor=layedit.build('content');
            layer=layui.layer;

            kb.doFormLayui("formDemo",function () {

                if (editor==null){
                    editor=layedit.build('content');
                }
                    var obj=serializeArrayToObject("ff");
                    obj.reply=layedit.getContent(editor);
                    //alert(obj.reply);
                    obj.replytime="";
                    obj.status="已处理";
                    if (layedit.getText(editor)=="")
                    {
                        layer.msg("学校简介不能为空！");
                        return false;
                    }

                    doData("/sj_evaluation/edit",obj,function (data) {
                        if (data.code > 0)
                        {

                            layer.msg("您已经成功回复【" + model.id + "】记录！");

                        }
                        else
                        {

                            layer.msg("回复失败，错误代码one：" + data.code);

                        }
                        callback(data);//回调

                    });
                var index = parent.layer.getFrameIndex(window.name);
                //获取窗口索引
                parent.location.reload();
                parent.layer.close(index);
                parent.find();
                });

            });


    });






</script>
</body>
</html>
