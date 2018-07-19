<%--
  Created by IntelliJ IDEA.
  User: 鹏
  Date: 2018-05-17
  Time: 下午 2:44
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init_layui.jsp"%>
<html>
<head>
    <title>高校信息维护</title>
</head>
<body style="padding-top: 10px;">
<form class="layui-form" id="ff">
    <input type="hidden" name="oldId"/>
    <div class="layui-form-item">
        <label class="layui-form-label">押金编号：</label>
        <div class="layui-input-block">
            <input name="id"  readonly="readonly" autocomplete="off" placeholder="请输入高校的编号，要求5位以内的数字" class="layui-input" type="text" maxlength="5">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">用户名：</label>
        <div class="layui-input-block" id="dataa">
            <input hidden='hidden' id="iuserName" name="iuser.name" readonly='readonly' autocomplete='off' placeholder='请输入发布人信息' class='layui-input' type='text'>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">押金：</label>
        <div class="layui-input-block">
            <input name="deposit" readonly="readonly" lay-verify="required" autocomplete="off" placeholder="请输入" class="layui-input" type="text">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">状态:</label>
        <div class="layui-input-block">
            <input name="status" value="已押" title="已押" checked="checked" type="radio">
            <input name="status" value="退回押金" title="退回押金" type="radio">
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
    var kb=new KBLayUI("p_deposit");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    var editor=null;
    if(type!=0)

        kb.getMe(getURLParamValue("id"),function (data) {
            $('#ff').form('load', data);//导入修改的数据，并绑定在界面上
            $("#iuserName").val(data.iuser.name);
           // alert(data.iuser.name);
            $("#imgLogo").attr("src",getRootPath()+"/uploadfiles/"+data.image1);
            $("#txtLogo").val(data.image1);
            layui.use(['layedit'],function () {
                var layedit=layui.layedit;
                editor=layedit.build('content');
            });

        });

    if (type==2)//表示浏览
    {
        $("#dButton").hide();
    }

    layui.use(['layedit'],function () {
        $("#imgLogo").dblclick(function () {
            $("#Filedata").click();
        });

        var layedit=layui.layedit;
        kb.setLayuiEditorUploadFile(layedit);
        if (editor==null)
            editor=layedit.build('content');
        kb.doFormLayui("formDemo",function () {
            var obj=serializeArrayToObject("ff");
            obj.description=layedit.getContent(editor);
            if (layedit.getText(editor)=="")
            {
                layer.msg("学校简介不能为空！");
                return false;
            }
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
