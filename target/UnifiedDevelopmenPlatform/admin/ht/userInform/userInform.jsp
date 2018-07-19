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
    <title>用户信息编辑</title>

    <style type="text/css">
        body{ background:#EEEEEE;margin:0; padding:0; font-family:"微软雅黑", Arial, Helvetica, sans-serif; }
        a{ color:#006600; text-decoration:none;}
        a:hover{color:#990000;}
        .top{ margin:5px auto; color:#990000; text-align:center;}
        .info select{ width:300px; border:1px #993300 solid; background:#FFFFFF;}
        .info{width:300px; margin:5px; text-align:center;}
        .info #show{width:300px; color:#3399FF; }
        .bottom{ text-align:right; font-size:12px; color:#CCCCCC; width:1000px;}
    </style>

</head>
<body style="padding-top: 10px;">
<form class="layui-form" action="javascript:;" id="ff">
    <input type="hidden" name="id"/>
    <div class="layui-form-item">
        <label class="layui-form-label">头像：</label>
        <div class="layui-input-block">
            <input name="avatar" id="imgAddress"type="hidden"/>
            <img id="imgImageAddress" alt="暂无图片" src="<%=basePath %>/images/zanwu.jpg" style="width:100px;height:100px;cursor:pointer;" title="双击图片，完成新图片上传"/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">昵称：</label>
        <div class="layui-input-block">
            <input name="nickname" required  lay-verify="required" autocomplete="off" placeholder="请输入用户昵称" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">姓名：</label>
        <div class="layui-input-block">
            <input name="name" required  lay-verify="required" autocomplete="off" placeholder="请输入姓名" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">手机号：</label>
        <div class="layui-input-block">
            <input name="phone" required  lay-verify="required|phone" autocomplete="off" placeholder="请输入手机号" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">密码：</label>
        <div class="layui-input-block">
            <input name="password" required  lay-verify="required" autocomplete="off" placeholder="请输入密码" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">性别:</label>
        <div class="layui-input-block">
            <input name="sex" value="男" title="男" checked="checked" type="radio">
            <input name="sex" value="女" title="女" type="radio">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">邮箱：</label>
        <div class="layui-input-block">
            <input name="email" required  lay-verify="required|email" autocomplete="off" placeholder="请输入邮箱" class="layui-input" type="text">
        </div>
    </div>


    <div class="layui-form-item">
        <label class="layui-form-label">详细地址：</label>
        <div class="layui-input-block">
            <input name="address"   required  lay-verify="required" autocomplete="off" placeholder="请输入详细地址" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">出生日期：</label>
        <div class="layui-input-block">
            <input name="birthday"  id="test1" required  lay-verify="required" autocomplete="off" placeholder="请选择出生日期" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item" id="dButton">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<form id="frmUploadImg" style="display:none;">
    <input type="file" name="file" id="btnLoadFile" onchange="doUploadImage()" accept="image/png,image/gif"/>
</form>





<script type="text/javascript">
    /*图片上传*/
    $("#imgImageAddress").click(function () {
        $("#btnLoadFile").click();
    });
    function doUploadImage() {
        doUploadFile("uploadfile","frmUploadImg",null,function (path) {
            var imgsrc = getRootPath()+"/uploadfiles/"+path;
            $("#imgAddress").val(imgsrc);
            $("#imgImageAddress").attr("src",imgsrc);
        });
    };

    var kb=new KBLayUI("p_userInform");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    var editor=null;
    if(type!=0)
        kb.getMe(getURLParamValue("id"),function (data) {
            $('#ff').form('load', data);//导入修改的数据，并绑定在界面上
            var imgsrc = $("#imgAddress").val();
            $("#imgImageAddress").attr("src",imgsrc);

            layui.use(['layedit'],function () {
                var layedit=layui.layedit;
                editor=layedit.build('content');
            });
        });
    if (type==2)//表示浏览
    {
        $("#dButton").hide();
    }
    layui.use(['layedit','laydate'],function () {
        var laydate = layui.laydate,
            layedit = layui.layedit;

        //执行一个laydate实例
        laydate.render({
            elem: '#test1' //指定元素
        });

        $("#imgLogo").dblclick(function () {
            $("#Filedata").click();
        });

        kb.setLayuiEditorUploadFile(layedit);
        if (editor==null)
            editor=layedit.build('content');
        kb.doFormLayui("formDemo",function () {
            var obj=serializeArrayToObject("ff");
            obj.introduce=layedit.getContent(editor);
            if (layedit.getText(editor)=="")
            {
                layer.msg("用户简介不能为空！");
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
