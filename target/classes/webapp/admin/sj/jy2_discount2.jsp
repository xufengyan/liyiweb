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
    <title>优惠券信息编辑</title>

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
<form class="layui-form" id="ff" style="width: 80%;margin:20px 0px 50px 0px;">
    <input type="hidden" name="id"/>
    <div class="layui-form-item" hidden>
        <label class="layui-form-label">店铺编号:</label>
        <div class="layui-input-block">
            <input type="text" name="s_id" id="sid" autocomplete="off" placeholder="请输入店铺编号" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">活动名称:</label>
        <div class="layui-input-block">
            <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入活动名称" class="layui-input">
        </div>
    </div>


    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">活动时间:</label>
            <div class="layui-input-inline" style="width: 100px;">
                <input type="text" name="begining" id="begining" lay-verify="date" placeholder="活动开始" autocomplete="off" class="layui-input" />
            </div>
            <div class="layui-form-mid">-</div>
            <div class="layui-input-inline" style="width: 100px;">
                <input type="text" name="ending" id="ending" lay-verify="date" placeholder="活动结束" autocomplete="off" class="layui-input" />
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">活动级别:</label>
        <div class="layui-input-block">
            <input type="radio" name="rank" value="店铺级" title="店铺级" checked>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">使用条件:</label>
        <div class="layui-input-block">
            <input type="radio" name="term" value="满元" title="满元" checked>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">发放权益:</label>
        <div class="layui-input-block">
            <input type="radio" name="equity" value="购买时" title="购买时" checked>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">指定范围:</label>
        <div class="layui-input-block">
            <input type="radio" name="ranges" value="全店" title="全店" checked>
            <input type="radio" name="ranges" value="指定商品" title="指定商品">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">优惠条件:</label>
        <div class="layui-input-block">
            <div class="layui-card">
                <div class="layui-card-header" style="background-color:gainsboro;border:1px solid gainsboro;">
                    <label>购买至</label>
                    <input type="number"  name="require1" required lay-verify="required|number" style="height: 30px;width: 70px;"/>
                    元
                </div>
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">优惠金额:</label>
        <div class="layui-input-block" >
            <input type="text" name="amount" required lay-verify="required|number" style="width: 50px;border-color:gainsboro;margin-top:7px"/>&nbsp;元</p>

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
$("#begining").val(formatDatebox(new Date(),"yyyy-MM-dd"));




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

    var kb=new KBLayUI("discount");
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
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        laydate.render({
            elem: '#begining'
        });
        laydate.render({
            elem: '#ending'
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
