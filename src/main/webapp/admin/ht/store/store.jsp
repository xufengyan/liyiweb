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
    <title>店铺信息编辑</title>

</head>
<body style="padding-top: 10px;">
<form class="layui-form" id="ff" >
    <input type="hidden" name="id"/>

    <div class="layui-form-item">
        <label class="layui-form-label">店铺名称：</label>
        <div class="layui-input-block">
            <input name="storename"  readonly="readonly"  required  lay-verify="required" autocomplete="off" placeholder="请输入名称" class="layui-input" type="text">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">店铺描述：</label>
        <div class="layui-input-block">
            <input name="description"  readonly="readonly"  required  lay-verify="required" autocomplete="off" placeholder="请输入内容" class="layui-input" type="text"/>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">详细地址:</label>
        <div class="layui-input-block">
            <input type="text" readonly="readonly" name="address" lay-verify="required" placeholder="请输入详细地址(乡/镇,村, )" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">验证身份证:</label>
        <div class="layui-input-block">
            <input type="text" readonly="readonly" name="idcard" lay-verify="identity" placeholder="请输入身份证号码" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">银行卡号：</label>
        <div class="layui-input-block">
            <input name="bcnumber" readonly="readonly"  required  lay-verify="required" autocomplete="off" placeholder="请输入" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item" >
        <label class="layui-form-label">营业执照编号：</label>
        <div class="layui-input-block">
            <input name="number" readonly="readonly" required  lay-verify="required|number" autocomplete="off" value="" placeholder="请输入营业执照编号" class="layui-input" type="text">
        </div>
    </div>

    <div class="layui-form-item">
    <label class="layui-form-label">身份证照片：</label>
    <div class="layui-input-block">
        <input name="idimage" id="imgAddress"type="hidden"/>
        <img id="imgImageAddress" readonly="readonly" alt="暂无图片" src="<%=basePath %>/images/zanwu.jpg" style="width:100px;height:100px;cursor:pointer;" title="双击图片，完成新图片上传"/>
    </div>
</div>
    <div class="layui-form-item">
        <label class="layui-form-label">店铺头像：</label>
        <div class="layui-input-block">
            <input name="storeimage" id="imgAddress1"type="hidden"/>
            <img id="imgImageAddress1" readonly="readonly" alt="暂无图片" src="<%=basePath %>/images/zanwu.jpg" style="width:100px;height:100px;cursor:pointer;" title="双击图片，完成新图片上传"/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">未通过审核原因:</label>
        <div class="layui-input-block">
            <input  name="reason" lay-verify="required" placeholder="请输入未通过审核原因" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item" >
        <label class="layui-form-label">审核状态:</label>
        <div class="layui-input-block">
            <input name="approval" value="待审核" title="待审核" checked="checked" type="radio">
            <input name="approval" value="已审核" title="已审核" type="radio">
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
    <input type="file" name="file" id="Filedata" onchange="doUpload()" accept="image/png,image/gif"/>
</form>
<input id="file" type="hidden"/>
<script>
    function doUpload() {
        doUploadFile("uploadfile","frmUploadImg",null,function (path) {
            var imgsrc = getRootPath()+"/uploadfiles/"+path;
            alert($("#file").val());
            if ($("#file").val()=="l"){
                $("#imgImageAddress").attr("src",imgsrc);
                $("#imgAddress").val(path);
            }
            if ($("#file").val()=="2"){
                $("#imgImageAddress1").attr("src",imgsrc);
                $("#imgAddress1").val(path);
            }
        });
    }
    var kb=new KBLayUI("p_store");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    var editor=null;
    if(type!=0)
        kb.getMe(getURLParamValue("id"),function (data) {
            $('#ff').form('load', data);//导入修改的数据，并绑定在界面上
            $("#imgImageAddress").attr("src",getRootPath()+"/uploadfiles/"+data.idimage);
            $("#imgImageAddress1").attr("src",getRootPath()+"/uploadfiles/"+data.storeimage);
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
        //     $("#file").val("l");
        //     $("#Filedata").click();
        // });
        // $("#imgImageAddress1").dblclick(function () {
        //     $("#file").val("2");
        //     $("#Filedata").click();
        // });

        var layedit = layui.layedit;
        kb.setLayuiEditorUploadFile(layedit);
        if (editor == null)
            editor = layedit.build('content');
        kb.doFormLayui("formDemo", function () {
            var obj = serializeArrayToObject("ff");
            obj.introduce = layedit.getContent(editor);
            if (layedit.getText(editor) == "") {
                layer.msg("店铺简介不能为空！");
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
