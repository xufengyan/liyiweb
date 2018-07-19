
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

    <div class="layui-form-item">
        <label class="layui-form-label">开始时间：</label>
        <div class="layui-input-inline">
            <input name="begintime"  id="beg"   lay-verify="required" autocomplete="off" placeholder="请选择开始时间" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">结束时间：</label>
        <div class="layui-input-inline">
            <input name="endtime" id="end"   lay-verify="required" autocomplete="off" placeholder="请选择截至时间" class="layui-input" type="text">
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
    var kb=new KBLayUI("p_integralgoods");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    var editor=null;
    if(type!=0)
        kb.getMe(getURLParamValue("id"),function (data) {

            $('#ff').form('load', data);//导入修改的数据，并绑定在界面上
            $("#beg").val(formatDatebox(data.begining));//转换为时间格式...
            $("#end").val(formatDatebox(data.ending));//转换为时间格式...
            $("#imgLogo").attr("src",getRootPath()+"/uploadfiles/"+data.image1);
            $("#txtLogo").val(data.image1);

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
            obj.description=layedit.getContent(editor);
            obj.status="限时兑换";
            obj.str_id=getURLParamValue("strid");
            if (type==0){
                kb.add(obj,function (returnBack) {
                });
            }
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
