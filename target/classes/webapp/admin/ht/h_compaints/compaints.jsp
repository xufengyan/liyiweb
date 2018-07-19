<%--
  Created by IntelliJ IDEA.
  User: wph-pc
  Date: 2017/10/12
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init_layui.jsp"%>
<script type="text/javascript" charset="utf-8" src="<%=basePath %>/plugins/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=basePath %>/plugins/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/plugins/ueditor/lang/zh-cn/zh-cn.js"></script>
<html>
<head>
    <title>投诉信息维护</title>

</head>
<body style="padding-top: 10px;">
<form class="layui-form" id="ff">
    <input type="hidden" name="oldId"/>
    <div class="layui-form-item" hidden>
        <label class="layui-form-label">投诉编号：</label>
        <div class="layui-input-block">
            <input name="id"   autocomplete="off"  class="layui-input" type="text" >
        </div>
    </div>
    <div class="layui-form-item" hidden>
        <label class="layui-form-label">用户编号：</label>
        <div class="layui-input-block">
            <input name="u_id"  autocomplete="off" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item" hidden>
        <label class="layui-form-label">商品编号：</label>
        <div class="layui-input-block">
            <input name="c_id"  autocomplete="off" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item" >
        <label class="layui-form-label">用户名称：</label>
        <div class="layui-input-block">
            <input name="name" required  lay-verify="required" autocomplete="off" class="layui-input" type="text">
        </div>
    </div>

    <div class="layui-form-item" >
        <label class="layui-form-label">店铺名称：</label>
        <div class="layui-input-block">
            <input name="storename" required  lay-verify="required" autocomplete="off"  class="layui-input" type="text">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">编辑内容:</label>
        <div class="layui-input-block">
            <div id="pContent" title="" style="width:780px;padding:10px;">
                <textarea id="content" style="height:400px;width:780px;" name="content"></textarea>
            </div>
        </div>
    </div>

    <div class="layui-form-item" hidden>
        <label class="layui-form-label">状态：</label>
        <div class="layui-input-block">
            <input name="status"  required  lay-verify="required" autocomplete="off" value="未处理"  class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item" id="tButton">
        <label class="layui-form-label" >投诉结果：</label>
        <div class="layui-input-block">
            <input name="processed"  required  lay-verify="required" autocomplete="off"   class="layui-input" type="text">
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

<script type="text/javascript">

    var kb=new KBLayUI("p_compaints");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    var editor=null;
    //var ueditor = UE.getEditor('content');

    if(type!=0)
        var obj=new Object();
    obj.id=getURLParamValue("id");
    doData("/p_compaints/getme2",obj,function(data) {
        $("#ff").form('load', data.obj[0]);
        layui.use(['layedit'], function () {
            var layedit = layui.layedit;
            editor = layedit.build('content');
        });
        // ueditor.addListener('ready', function (editor) {
        //     ueditor.setContent(data.content);
        // });


        if (type == 2)//表示浏览
        {
            $("#dButton").hide();
        }
        // if (type != 1) {
        //     $("#tButton").hide();
        // }


        layui.use(['layedit'], function () {
            $("#imgLogo").dblclick(function () {
                $("#Filedata").click();
            });

            var layedit = layui.layedit;
            kb.setLayuiEditorUploadFile(layedit);
            if (editor == null)
                editor = layedit.build('content');
            kb.doFormLayui("formDemo", function () {
                var obj = serializeArrayToObject("ff");
                // var content = UE.getEditor('content').getContent();
                // if (content==null){
                //
                //     layer.alert("请填写商品描述",{offset:"50px"});
                //     return false;
                // }
                // if(content.length > 5000) {
                //     layer.alert("您在副文本编辑器中输入的数据太大了,无法进行新增！！",{offset:"50px"});
                //     return false;
                // }
                // obj.content=content;
                // obj.content = layedit.getContent(editor);
                // if (type == 1) {
                //     obj.status = "已处理";
                // }
                // if (layedit.getText(editor) == "") {
                //     layer.msg("投诉内容不能为空！");
                //     return false;
                // }
                if (type == 0)
                    kb.add(obj, function (returnBack) {
                    });
                else {
                    kb.edit(obj, function (returnBack) {
                    });
                }


                var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
                parent.layer.close(index);
                parent.find();
            });
        });
    });




</script>
</body>
</html>
