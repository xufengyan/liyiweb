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
        <label class="layui-form-label">商品名称：</label>
        <div class="layui-input-block">
            <input name="commname" required  lay-verify="required" autocomplete="off"  class="layui-input" type="text">
        </div>
    </div>

    <div class="layui-form-item" >
        <label class="layui-form-label">投诉内容:</label>
        <div class="layui-input-block">
            <textarea id="cont" name="content"  placeholder="请填写投诉内容(500字以内)" style="display: none;" maxlength="500"></textarea>
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
            <select name="processed">
                <option value="投诉无效" selected="selected">投诉无效</option>
                <option value="投诉有效，我们将对该店铺进行整改" >投诉有效，我们将对该店铺进行整改</option>
            </select>
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

    var kb=new KBLayUI("p_compaints");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    var editor=null;
    if(type!=0)
        var obj=new Object();
        obj.id=getURLParamValue("id");
        doData("/p_compaints/getme2",obj,function(data) {
            $("#ff").form('load', data.obj[0]);
            layui.use(['layedit'], function () {
                var layedit = layui.layedit;
                editor = layedit.build('cont');
            })
            // kb.getMe(getURLParamValue("id"),function (data) {
            //     $('#ff').form('load', data);//导入修改的数据，并绑定在界面上
            //     //$("#test1").val(formatDatebox(data.complaintstime));
            //     layui.use(['layedit'],function () {
            //         var layedit=layui.layedit;
            //         editor=layedit.build('content');
            //     });
            // });
            // layui.use('laydate', function(){
            //     var laydate = layui.laydate;
            //
            //     //常规用法
            //     laydate.render({
            //         elem: '#test1'
            //     });
            // });
            if (type == 2)//表示浏览
            {
                $("#dButton").hide();
            }
            if (type != 1) {
                $("#tButton").hide();
            }


            layui.use(['layedit'], function () {
                $("#imgLogo").dblclick(function () {
                    $("#Filedata").click();
                });

                var layedit = layui.layedit;
                kb.setLayuiEditorUploadFile(layedit);
                if (editor == null)
                    editor = layedit.build('cont');
                kb.doFormLayui("formDemo", function () {
                    var obj = serializeArrayToObject("ff");
                    obj.content = layedit.getContent(editor);
                    if (type == 1) {
                        obj.status = "已处理";
                    }
                    if (layedit.getText(editor) == "") {
                        layer.msg("投诉内容不能为空！");
                        return false;
                    }
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
