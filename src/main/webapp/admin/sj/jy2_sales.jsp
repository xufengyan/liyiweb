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
    <title>资金信息统计</title>
</head>
<body style="padding-top: 10px;">
<form class="layui-form" id="ff">
    <input type="hidden" name="oldId"/>
    <input type="hidden" name="id"/>
    <div class="layui-form-item">
        <label class="layui-form-label">商品名称：</label>
        <div class="layui-input-block">
            <input name="commname" required readonly="readonly" lay-verify="required" autocomplete="off" placeholder="" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">总销售额：</label>
        <div class="layui-input-block">
            <input name="price" required  readonly="readonly" lay-verify="required" autocomplete="off" placeholder="" class="layui-input" type="text"/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">成交额：</label>
        <div class="layui-input-block">
            <input name="reality" required  readonly="readonly" lay-verify="required" autocomplete="off" placeholder="" class="layui-input" type="text">
        </div>
    </div>

</form>
<form id="frmUploadImg" style="display:none;">
    <input type="file" name="file" id="btnLoadFile" onchange="doUploadImage()" accept="image/png,image/gif"/>
</form>



<script>


    function doUploadImage() {
        doUploadFile("uploadfile","frmUploadImg",null,function (path) {
            var imgsrc = getRootPath()+"/uploadfiles/"+path;


        });
    };

    var kb=new KBLayUI("sales");
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
        $("#imgLogo").dblclick(function () {
            $("#Filedata").click();
        });


        var layedit = layui.layedit;
        kb.setLayuiEditorUploadFile(layedit);
        if (editor == null)
            editor = layedit.build('content');
        kb.doFormLayui("formDemo", function () {
            var obj = serializeArrayToObject("ff");
            obj.introduce = layedit.getContent(editor);
            if (layedit.getText(editor) == "") {
                layer.msg("资金简介不能为空！");
                return false;
            }
            if (type == 0)
                kb.add(obj, function (returnBack) {
                });
            else
                kb.edit(obj, function (returnBack) {
                });

            var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
            parent.layer.close(index);
            parent.find();
        });


    });

</script>
</body>
</html>
