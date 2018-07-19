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
    <title>订单信息维护</title>
</head>
<body style="padding-top: 10px;">
<form class="layui-form" id="ff">
    <input type="hidden" name="oldId"/>
    <div class="layui-form-item" hidden>
        <label class="layui-form-label">编号：</label>
        <div class="layui-input-block">
            <input name="id"  autocomplete="off"  class="layui-input" type="text" >
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">订单编号：</label>
        <div class="layui-input-block">
            <input name="orders_id"  autocomplete="off"  class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">商品名称：</label>
        <div class="layui-input-block">
            <input name="commname"  autocomplete="off"  class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">样式名称：</label>
        <div class="layui-input-block">
            <input name="stylename"  autocomplete="off"  class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">商品价格：</label>
        <div class="layui-input-block">
            <input name="price"  autocomplete="off"  class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">购买数量：</label>
        <div class="layui-input-block">
            <input name="goodsnumber"  autocomplete="off"  class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">商品总价：</label>
        <div class="layui-input-block">
            <input name="reality"  autocomplete="off"  class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">店铺名称：</label>
        <div class="layui-input-block">
            <input name="storename"  autocomplete="off"  class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">物流名称：</label>
        <div class="layui-input-block">
            <input name="logisticsname"  autocomplete="off"  class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">状态：</label>
        <div class="layui-input-block">
            <input name="status"  autocomplete="off"  class="layui-input" type="text">
        </div>
    </div>


    <div class="layui-form-item" id="dButton">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>

<!--文件上传-->
<form  style="display: none;" enctype="multipart/form-data" id="frmUpload">
    <input id="Filedata" type="file" name="file" onchange="doUpload()"
           accept=".jpg,.png,.gif"/>
</form>

<script>
    function doUpload() {
        doUploadFile("uploadfile","frmUpload",null,function (path){
            $("#imgLogo").attr("src",getRootPath()+"/uploadfiles/"+path);
            $("#txtLogo").val(path);
        });
    }
    var kb=new KBLayUI("p_orders");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    var editor=null;
    if(type!=0){
        var obj=new Object();
        obj.id=getURLParamValue("id");
        doData("/p_orders/getme2",obj,function(data) {
            $("#ff").form('load', data.obj[0]);
            // kb.getMe(getURLParamValue("id"),function (data) {
            //     $('#ff').form('load', data);//导入修改的数据，并绑定在界面上
            //     $("#test1").val(formatDatebox(data.shiptime));//转换为时间格式..
            // });
        })
    }

    if (type==2)//表示浏览
    {
        $("#dButton").hide();
    }

    // layui.use(['layedit'],function () {
    //     $("#imgLogo").dblclick(function () {
    //         $("#Filedata").click();
    //     });

        // var layedit=layui.layedit;
        // kb.setLayuiEditorUploadFile(layedit);
        // if (editor==null)
        //     editor=layedit.build('content');
        kb.doFormLayui("formDemo",function () {
            var obj=serializeArrayToObject("ff");
            // obj.introduce=layedit.getContent(editor);
            // if (layedit.getText(editor)=="")
            // {
            //     layer.msg("学校简介不能为空！");
            //     return false;
            // }
            if (type==0)
                kb.add(obj,function (returnBack) {});
            else
                kb.edit(obj,function (returnBack) { });

            var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
            parent.layer.close(index);
            parent.find();
        //});
    });
    /*时间选择*/
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //常规用法
        laydate.render({
            elem: '#test1'
        });
    });





</script>
</body>
</html>
