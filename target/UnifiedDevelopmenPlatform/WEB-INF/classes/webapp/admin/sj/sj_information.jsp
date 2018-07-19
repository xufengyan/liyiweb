<%--
  Created by IntelliJ IDEA.
  User: xufeng
  Date: 2018/5/15
  Time: 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init_layui.jsp"%>

<html>
<head>
    <title>店铺信息</title>
    <style>
        .layui-input-block {
            width: 400px;
        }
    </style>
</head>
<body style="padding-top: 10px;">
<form class="layui-form" id="ff">
    <blockquote class="layui-elem-quote layui-text" style="border-left: 5px solid #008AE5">店铺信息设置 </blockquote>
    <input type="hidden" name="oldId"/>
    <input type="hidden" name="id"/>
    <div class="layui-form-item">
        <label class="layui-form-label">店铺头像：</label>
        <div class="layui-input-block">
            <input name="storeimage" id="txtLogo" type="hidden">
            <img src="#" id="imgLogo" style="width:100px;cursor:pointer;" alt="暂无图标(双击添加图片)" title="双击鼠标上传图片">
        </div>
    </div>
<br/>
    <br/>
    <div class="layui-form-item">
        <label class="layui-form-label">真实姓名:</label>
        <div class="layui-input-block">
            <input name="name" required readonly="true" lay-verify="" autocomplete="off"  class="layui-input" maxlength="40" type="text">
        </div>
    </div>


    <div class="layui-form-item">
        <label class="layui-form-label">店铺名称：</label>
        <div class="layui-input-block">
            <input name="storename" required  lay-verify="required" autocomplete="off" placeholder="请输入您的店铺名称" class="layui-input" type="text" maxlength="15">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">营业执照编号：</label>
        <div class="layui-input-block">
            <input name="number" required  lay-verify="required" autocomplete="off" placeholder="请输入您的营业执照号" class="layui-input" type="text" maxlength="15">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">身份证号：</label>
        <div class="layui-input-block">
            <input name="idcard" required readonly="true" lay-verify="required|password" autocomplete="off" class="layui-input" type="text" maxlength="15">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">选择经营地区</label>


        <div class="layui-input-inline">
            <select name="province" id="province" lay-filter="province">
                <option value="">请选择省</option>
            </select>
        </div>
        <div class="layui-input-inline" style="display: none;">
            <select name="city" id="city" lay-filter="city">
                <option value="">请选择市</option>
            </select>
        </div>
        <div class="layui-input-inline" style="display: none;">
            <select name="area" id="area" lay-filter="area">
                <option value="">请选择县/区</option>
            </select>
        </div>
    </div>
    <br/>
    <div class="layui-form-item">
        <label class="layui-form-label">地址:</label>
        <div class="layui-input-block">
            <input name="address" id="address" required lay-verify="" autocomplete="off"  class="layui-input" maxlength="40" type="text">
        </div>
    </div>
    <br/>

    <div class="layui-form-item">
        <label class="layui-form-label">店铺描述：</label>
        <div class="layui-input-block">
            <input name="description" required  lay-verify="" autocomplete="off" placeholder="请输入店铺简介" class="layui-input" type="text">
        </div>
    </div>
    <br/>
    <div class="layui-form-item">
        <div style="margin-left: 150px">
            <span >低</span>
            <span style="margin-left: 80px">中</span>
            <span style="margin-left: 80px">高</span>
        </div>
        <label class="layui-form-label">商家信用：</label>
        <div class="layui-progress" lay-showPercent="yes" lay-filter="prgg" style="display: inline-block;margin-top: 17px; width:300px">
            <div class="layui-progress-bar layui-bg-red" lay-percent="30%" ></div>
        </div>
    </div>
    <div class="layui-form-item" id="dButton">
        <div class="layui-input-block">
            <button class="layui-btn" style="background-color: #008AE5" lay-submit lay-filter="formDemo">保存</button>
        </div>
    </div>
</form>

<!--文件上传-->
<form  style="display: none;" enctype="multipart/form-data" id="frmUpload">
    <input id="Filedata" type="file" name="file" onchange="doUpload()"
           accept=".jpg,.png,.gif"/>
</form>


<script type="text/javascript" src="<%=basePath%>/liyi_sj/js/area.js"></script>
<script type="text/javascript" src="<%=basePath%>/liyi_sj/js/cityjs.js"></script>





<script>

    function doUpload() {
        doUploadFile("uploadfile","frmUpload",null,function (path){
            $("#imgLogo").attr("src",getRootPath()+"/uploadfiles/"+path);
            $("#txtLogo").val(path);
        });
    }
    var kb=new KBLayUI("sj_store");
    //var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    var editor=null;
    var model=new Object()
    model.id=getURLParamValue("id");
    doData("/sj_information/getmet3",model,function (data) {
        //注意进度条依赖 element 模块，否则无法进行正常渲染和功能性操作
        layui.use('element', function(){
            var element = layui.element;
            element.progress('prgg', data.obj[0].credit+'%');
        });
        data.obj[0].time=Date.prototype.getShortDate(data.obj[0].time);
        $('#ff').form('load', data.obj[0]);//导入修改的数据，并绑定在界面上
        $("#province").append('<option selected value='+data.obj[0].province+'>'+data.obj[0].province+'</option>');
        $("#imgLogo").attr("src",getRootPath()+"/uploadfiles/"+data.obj[0].storeimage);
        $("#txtLogo").val(data.obj[0].storeimage);
        layui.use(['layedit'],function () {
            var layedit=layui.layedit;
            editor=layedit.build('content');
        });


    });







    layui.use(['layedit'],function () {
        $("#imgLogo").dblclick(function () {
            $("#Filedata").click();
        });

        var layedit=layui.layedit;
        kb.setLayuiEditorUploadFile(layedit);

        kb.doFormLayui("formDemo",function () {
            var obj=serializeArrayToObject("ff");
           obj.province=getProvince($("#province").val());
           obj.city=getProvince($("#city").val());
           obj.area=$("#area").val();
           kb.edit(obj,function (returnBack) {});
           var index = parent.layer.getFrameIndex(window.name);
           //获取窗口索引
            parent.layer.close(index);
            parent.find();
        });
    });


    //截取字符串的方法
function getProvince(prov) {
    var index=prov.indexOf("_");
    prov=prov.substring(index-index,index);
    return prov;
}


</script>
</body>
</html>
