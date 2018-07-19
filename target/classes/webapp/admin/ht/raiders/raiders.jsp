<%--
  Created by IntelliJ IDEA.
  User: 吴家友
  Date: 2018/5/23
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%--
  Created by IntelliJ IDEA.
  User: 鹏
  Date: 2018-05-15
  Time: 下午 2:51
  To change this template use File | Settings | File Templates.
--%>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ include file="/header/init_layui.jsp"%>
        <html>
        <head>
            <title>礼品攻略信息维护</title>
        </head>
<body style="padding-top: 10px;">
<form class="layui-form" id="ff">
    <input type="hidden" name="id"/>


    <div class="layui-form-item">
        <label class="layui-form-label">攻略内容:</label>
        <div class="layui-input-block">
            <textarea id="cont" class="layui-textarea" name="content" readonly="readonly"  placeholder="请填攻略内容信息(15000字以内)"  maxlength="15000"></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">点赞数:</label>
        <div class="layui-input-block">
            <input name="likenum"   required  readonly="readonly"  lay-verify="required|number" autocomplete="off" placeholder="请输入" class="layui-input" type="text" maxlength="5">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">未通过审核原因:</label>
        <div class="layui-input-block">
            <input  name="reason"  lay-verify="required" placeholder="请输入未通过审核原因" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">审核状态:</label>
        <div class="layui-input-block">
            <input name="status" value="待审核" title="待审核" checked="checked" type="radio">
            <input name="status" value="已审核" title="已审核" type="radio">        </div>
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
    var kb=new KBLayUI("p_raiders");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    var editor=null;
    if(type!=0)
        kb.getMe(getURLParamValue("id"),function (data) {

            $('#ff').form('load', data);//导入修改的数据，并绑定在界面上

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
        // $("#imgImageAddress").dblclick(function () {
        //     $("#Filedata").click();
        // });

        var layedit=layui.layedit;
        kb.setLayuiEditorUploadFile(layedit);
        if (editor==null)
            editor=layedit.build('content');
        kb.doFormLayui("formDemo",function () {
            var obj=serializeArrayToObject("ff");
            obj.content=layedit.getContent(editor);
            alert(obj.content);
            if (layedit.getText(editor)=="")
            {
                layer.msg("攻略内容不能为空！");
                return false;
            }
            if (type==0){

                kb.add(obj,function (returnBack) {});}
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
