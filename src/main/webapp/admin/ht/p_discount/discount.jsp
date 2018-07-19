
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init_layui.jsp"%>
<html>
<head>
    <title>优惠券信息添加</title>
    <style>

    </style>
</head>
<body style="padding-top: 10px;">
<form class="layui-form" id="ff">
    <input type="hidden" name="oldId"/>
    <div class="layui-form-item" hidden="hidden">
        <label class="layui-form-label" >优惠券：</label>
        <div class="layui-input-block">
            <input name="id"   autocomplete="off" placeholder="优惠券编号" class="layui-input" type="text" >
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">活动名称：</label>
        <div class="layui-input-block">
            <input name="title"   lay-verify="required" autocomplete="off" placeholder="请输入活动名称" class="layui-input" type="text">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">优惠金额：</label>
        <div class="layui-input-block">
            <input name="amount"   lay-verify="required" autocomplete="off" placeholder="请输入优惠金额" class="layui-input" type="text">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">开始时间：</label>
        <div class="layui-input-inline">
            <input name="begining"  id="beg"   lay-verify="required" autocomplete="off" placeholder="请选择开始时间" class="layui-input" type="text">
        </div>
        <label class="layui-form-label">结束时间：</label>
        <div class="layui-input-inline">
            <input name="ending" id="end"   lay-verify="required" autocomplete="off" placeholder="请选择截至时间" class="layui-input" type="text">
        </div>
    </div>


    <div class="layui-form-item">
        <label class="layui-form-label">使用条件：</label>
        <div class="layui-input-block">
            <input name="term"   lay-verify="required" autocomplete="off" placeholder="请输入使用条件" class="layui-input" type="text">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">指定范围：</label>
        <div class="layui-input-block">
            <input name="ranges"   lay-verify="required" autocomplete="off" value="全店" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">兑换所需积分：</label>
        <div class="layui-input-block">
            <input name="integraldhs"   lay-verify="required" autocomplete="off" placeholder="请输入兑换所需积分" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">状态：</label>
        <div class="layui-input-block">
            <input name="status"   lay-verify="required" autocomplete="off" value="限时兑换" class="layui-input" type="text">
        </div>
    </div>
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
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //常规用法
        laydate.render({
            elem: '#beg'
        });
    });

    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //常规用法
        laydate.render({
            elem: '#end'
        });
    });
    function doUpload() {
        doUploadFile("uploadfile","frmUpload",null,function (path){
            $("#imgLogo").attr("src",getRootPath()+"/uploadfiles/"+path);
            $("#txtLogo").val(path);
        });
    }
    var kb=new KBLayUI("p_discount");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    var editor=null;
    if(type!=0)
        kb.getMe(getURLParamValue("id"),function (data) {
         //   alert(data.storename);
            $('#ff').form('load', data);//导入修改的数据，并绑定在界面上
            $("#beg").val(formatDatebox(data.begining));//转换为时间格式...
            $("#end").val(formatDatebox(data.ending));//转换为时间格式...
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
        // if (editor==null)
        //     editor=layedit.build('content');
        kb.doFormLayui("formDemo",function () {
            var obj=serializeArrayToObject("ff");
            obj.description=layedit.getContent(editor);
            // if (layedit.getText(editor)=="")
            // {
            //     layer.msg("礼品简介不能为空！");
            //     return false;
            // }
            if (type==0){
                kb.add(obj,function (returnBack) {});}
            else{
                kb.edit(obj,function (returnBack) {});}

            var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
            parent.layer.close(index);
            parent.find();
        });
    });


</script>
</body>
</html>
