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
    <title>公告信息编辑</title>

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

    <div class="layui-form-item layui-form-text">
        <div class="layui-input-block">
            您还可以输入:<input style="margin-bottom: 5px;text-align:center;" name="remLen" type="text" value="150" size="5" readonly="readonly">个字符
            <textarea class="layui-textarea" name="content"onKeyDown="textCounter(content,remLen,151);" onKeyUp="textCounter(content,remLen,151);"></textarea>
        </div>
    </div>
    <div class="layui-form-item" id="dButton">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>




<script>
    function textCounter(field, countfield, maxlimit) {
        // 函数，3个参数，表单名字，表单域元素名，限制字符；
        if (field.value.length > maxlimit)
        //如果元素区字符数大于最大字符数，按照最大字符数截断；
            field.value = field.value.substring(0, maxlimit);
        else
        //在记数区文本框内显示剩余的字符数；
            countfield.value = maxlimit - field.value.length;

    }

</script>

<script type="text/javascript">



    var kb=new KBLayUI("notice");
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
    layui.use(['layedit','laydate'],function () {
        var laydate = layui.laydate,
            layedit = layui.layedit;

        kb.setLayuiEditorUploadFile(layedit);
        if (editor==null)
            editor=layedit.build('content');
        kb.doFormLayui("formDemo",function () {
            var obj=serializeArrayToObject("ff");
            obj.introduce=layedit.getContent(editor);
            var sid=${sessionScope.get("users_id")};//通过session获取店铺id
            obj.s_id=sid.toString();//转换成string类型
            if (layedit.getText(editor)=="")
            {
                layer.msg("信息不能为空！");
                return false;
            }
            if (type==0)

                kb.add(obj,function (returnBack) {});
            else
                kb.edit(obj,function (returnBack) {});

            var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
            parent.layer.close(index);
            parent.find();
        });
    });

</script>

</body>
</html>
