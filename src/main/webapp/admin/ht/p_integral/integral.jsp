<%--
  Created by IntelliJ IDEA.
  User: 鹏
  Date: 2018-05-17
  Time: 下午 2:44
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init_layui.jsp"%>
<script type="text/javascript" charset="utf-8" src="<%=basePath %>/plugins/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=basePath %>/plugins/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/plugins/ueditor/lang/zh-cn/zh-cn.js"></script>

<html>
<head>
    <title>积分商品信息维护</title>
</head>
<body style="padding-top: 10px;">
<form class="layui-form" id="ff">
    <input type="hidden" name="orldId"/>
    <div class="layui-form-item">
        <label class="layui-form-label">礼品编号：</label>
        <div class="layui-input-block">
            <input name="id"  readonly="readonly" autocomplete="off" placeholder="请输入高校的编号，要求5位以内的数字" class="layui-input" type="text" maxlength="5">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">礼品名字：</label>
        <div class="layui-input-block">
            <input name="commname" readonly="readonly"  lay-verify="required" autocomplete="off" placeholder="请输入高校名称" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">礼品实物图：</label>
        <div class="layui-input-block">
            <input name="image1" id="txtLogo" type="hidden">
            <img src="#" id="imgLogo" style="width:100px;cursor:pointer;" alt="暂无图标" title="双击鼠标上传图片">
        </div>
    </div>

    <%--<div class="layui-form-item">--%>
        <%--<label class="layui-form-label">礼品描述:</label>--%>
        <%--<div class="layui-input-block">--%>
            <%--<textarea id="content" name="description"  placeholder="请填写简介信息(500字以内)" style="display: none;" maxlength="500"></textarea>--%>
        <%--</div>--%>
    <%--</div>--%>
    <div class="layui-form-item layui-anim layui-anim-scale">
        <label class="layui-form-label">礼品描述</label>
        <div class="layui-input-block">
            <div id="pContent" title="" style="width:800px;padding:10px;">
                <textarea id="description" style="height:400px;width:800px;" name="description"></textarea>
            </div>
        </div>
    </div>

    <%--<div class="layui-form-item">--%>
        <%--<label class="layui-form-label">状态:</label>--%>
        <%--<div class="layui-input-block">--%>
            <%--<input name="sstatus" value="积分礼品" title="积分礼品" checked="checked" type="radio">--%>
            <%--<input name="sstatus" value="普通礼品" title="普通礼品" type="radio">--%>
        <%--</div>--%>
    <%--</div>--%>
    <div class="layui-form-item" id="dButton">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
            <button type="reset"  class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>

<!--文件上传-->
<form  style="display: none;" enctype="multipart/form-data" id="frmUpload">
    <input id="Filedata" type="file" name="file" onchange="doUpload()"
           accept=".jpg,.png,.gif"/>
</form>

<script>
    var ueditor = UE.getEditor('description');

    function doUpload() {
        doUploadFile("uploadfile","frmUpload",null,function (path){
            $("#imgLogo").attr("src",getRootPath()+"/uploadfiles/"+path);
            $("#txtLogo").val(path);
        });
    }
    var kb=new KBLayUI("p_integral");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    var editor=null;
    if(type!=0)
        kb.getMe(getURLParamValue("id"),function (data) {
            $('#ff').form('load', data);//导入修改的数据，并绑定在界面上
            $("#imgLogo").attr("src",getRootPath()+"/uploadfiles/"+data.image1);
            $("#txtLogo").val(data.image1);
            // layui.use(['layedit'],function () {
            //     var layedit=layui.layedit;
            //     editor=layedit.build('content');
            // });
            ueditor.addListener('ready', function (editor) {
                ueditor.setContent(data.description);
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

        kb.doFormLayui("formDemo",function () {

            var obj=serializeArrayToObject("ff");
            var description = UE.getEditor('description').getContent();
            if (description==null){

                layer.alert("请填写商品描述",{offset:"50px"});
                return false;
            }
            if(description.length > 5000) {
                layer.alert("您在富文本编辑器中输入的数据太大了,无法进行新增！！",{offset:"50px"});
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
