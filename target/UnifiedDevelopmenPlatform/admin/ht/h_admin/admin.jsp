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
    <title>管理员信息维护</title>
</head>
<body style="padding-top: 10px;">
<form class="layui-form" id="ff">
    <%--<input type="hidden" name="oldId"/>--%>
    <div class="layui-form-item" hidden>
        <label class="layui-form-label">编号：</label>
        <div class="layui-input-block">
            <input name="id"  autocomplete="off" placeholder="请输入管理员编号" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">姓名：</label>
        <div class="layui-input-block">
            <input name="name" required  lay-verify="required" autocomplete="off" placeholder="请输入管理员姓名" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">手机号：</label>
        <div class="layui-input-block">
            <input name="phone" required  lay-verify="required" autocomplete="off" placeholder="请输入联系电话" class="layui-input" type="text" maxlength="20">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">电子邮箱：</label>
        <div class="layui-input-block">
            <input name="email" required  lay-verify="required" autocomplete="off" placeholder="请输入电子邮箱" class="layui-input" type="text" maxlength="13">
        </div>
    </div>
    <div class="layui-form-item" hidden id="bRoler">
        <label class="layui-form-label">角色：</label>
        <div class="layui-input-block">
            <input name="role" required  lay-verify="required" autocomplete="off" value="非管理员" class="layui-input" type="text" >
        </div>
    </div>
    <div class="layui-form-item" hidden id="bStatus">
        <label class="layui-form-label">状态:</label>
        <div class="layui-input-block">
            <input name="status" value="正常" title="正常" type="radio">
            <input name="status" value="关闭" title="关闭" checked="checked" type="radio">
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

    var kb=new KBLayUI("p_admin");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    if(type!=0)
        kb.getMe(getURLParamValue("id"),function (data) {
            $('#ff').form('load', data);//导入修改的数据，并绑定在界面上
            /*特殊绑定可以获取data中的数据进行绑定*/
        });
    if (type==2)//表示浏览
    {
        $("#dButton").hide();
        $("#bRoler").show();
        $("#bStatus").show();

    }

    layui.use(['layedit'],function () {
        kb.doFormLayui("formDemo",function () {
            var obj=serializeArrayToObject("ff");//获取表单数据，形成json对象
            /*此处可以继续给obj对象进行赋值操作*/
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
