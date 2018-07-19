<%--
  Created by IntelliJ IDEA.
  User: wph-pc
  Date: 2017/10/12
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init_layui.jsp"%>
<html>
<head>
    <title>库存</title>
</head>
<body style="padding-top: 10px;">
<form class="layui-form" id="ff">
    <input type="hidden" name="oldId"/>

    <div class="layui-form-item">
        <label class="layui-form-label">货物编号：</label>
        <div class="layui-input-block">
            <input name="id" required  lay-verify="required" readonly="readonly" autocomplete="off" placeholder="" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">商品名称：</label>
        <div class="layui-input-block">
            <input name="commname" required  lay-verify="required" readonly="readonly" autocomplete="off" placeholder="" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">商品样式：</label>
        <div class="layui-input-block">
            <input name="stylename" required  lay-verify="required" readonly="readonly" autocomplete="off" placeholder="" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">商品售价:</label>
        <div class="layui-input-block">
            <input name="price" required  lay-verify="number" readonly="readonly" autocomplete="off" placeholder="" class="layui-input" maxlength="6" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">商品库存：</label>
        <div class="layui-input-block">
            <input name="stock" required  lay-verify="number" autocomplete="off" placeholder="" class="layui-input" type="text">
        </div>
    </div>


    <div class="layui-form-item" id="dButton" style="padding-left: 130px">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>



<script>

    var kb=new KBLayUI("stock");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改


    if (type!=0) {
        var obj=new Object()
        obj.id=getURLParamValue("id");
        doData("/stock/getme2",obj,function (data) {
            //callback(data.obj);//回调
            $('#ff').form('load', data.obj[0]);//导入修改的数据，并绑定在界面
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

</script>
</body>
</html>
