<%--
  Created by IntelliJ IDEA.
  User: xufeng
  Date: 2018/4/14
  Time: 12:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init_layui.jsp"%>
<html>
<head>
    <title>用户信息维护</title>
</head>
<body style="padding-top: 10px;">
<form class="layui-form" id="ff">
    <input type="hidden" name="oldId"/>
    <div class="layui-form-item">
        <label class="layui-form-label">用户编号：</label>
        <div class="layui-input-block">
            <input name="id" required  lay-verify="required|number" autocomplete="off" placeholder="请输入用户的编号，要求5位以内的数字" class="layui-input" type="text" maxlength="5">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">用户姓名：</label>
        <div class="layui-input-block">
            <input name="name" required  lay-verify="required" autocomplete="off" placeholder="请输入用户名称" class="layui-input" type="text">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">用户头像：</label>
        <div class="layui-input-block">
            <input name="userimage" id="txtLogo" type="hidden">
            <img src="#" id="imgLogo" style="width:100px;cursor:pointer;" alt="暂无图标(双击添加图片)" title="双击鼠标上传图片">
        </div>
    </div>


    <div class="layui-form-item">
        <label class="layui-form-label">用户年龄：</label>
        <div class="layui-input-block">
            <input name="age" required  lay-verify="" autocomplete="off" placeholder="请输入用户年龄" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">用户性别:</label>
        <div class="layui-input-block">
            <input name="sex" required  lay-verify="" autocomplete="off" placeholder="请输入性别" class="layui-input" maxlength="6" type="text">
        </div>
    </div>


    <div class="layui-form-item">
        <label class="layui-form-label">状态:</label>
        <div class="layui-input-block">
            <input name="usertype" value="超级用户" title="超级用户" checked="checked" type="radio">
            <input name="usertype" value="普通用户" title="普通用户" type="radio">
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
    var kb=new KBLayUI("userInform");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    var editor=null;
    if(type!=0)
        kb.getMe(getURLParamValue("id"),function (data) {


            $('#ff').form('load', data);//导入修改的数据，并绑定在界面上
            $("#imgLogo").attr("src",getRootPath()+"/uploadfiles/"+data.userimage);
            $("#txtLogo").val(data.userimage);
            layui.use(['layedit'],function () {
                var layedit=layui.layedit;
                editor=layedit.build('content');
            });
        });

    if (type==2)//表示浏览
    {
        $("input").attr("readonly",true);
        $("#dButton").hide();
    }

    layui.use(['layedit'],function () {
        $("#imgLogo").dblclick(function () {
            $("#Filedata").click();
        });

        var layedit=layui.layedit;
        kb.setLayuiEditorUploadFile(layedit);
//        if (editor==null)
//            editor=layedit.build('content');
        kb.doFormLayui("formDemo",function () {
            var obj=serializeArrayToObject("ff");
//            obj.introduce=layedit.getContent(editor);
//            if (layedit.getText(editor)=="")
//            {
//                layer.msg("学校简介不能为空！");
//                return false;
//            }
            if (type==0)
                kb.add(obj,function (returnBack) {});
            else
                kb.edit(obj,function (returnBack) { });

            var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
            parent.layer.close(index);
            parent.find();
        });
    });




</script>
</body>
</html>
