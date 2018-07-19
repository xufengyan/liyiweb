<%--
  Created by IntelliJ IDEA.
  User: 鹏
  Date: 2018-05-15
  Time: 下午 2:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init_layui.jsp"%>
<script type="text/javascript" charset="utf-8" src="<%=basePath %>/plugins/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=basePath %>/plugins/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/plugins/ueditor/lang/zh-cn/zh-cn.js"></script>
<html>
<head>
    <title>礼品攻略信息维护</title>
</head>
<body style="padding-top: 10px;">
<form class="layui-form" id="ff">
    <input type="hidden" name="oldId"/>
    <div class="layui-form-item" hidden>
    <label class="layui-form-label">编号：</label>
    <div class="layui-input-block">
        <input name="id"  autocomplete="off" placeholder="请输入，要求5位以内的数字" class="layui-input" type="text" maxlength="5">
    </div>
    </div>
    <div class="layui-form-item" >
        <label class="layui-form-label">标题:</label>
        <div class="layui-input-block">
            <input name="title"   autocomplete="off" placeholder="请输入" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">攻略主图片：</label>
        <div class="layui-input-block">
            <input name="image" id="txtLogo" type="hidden">
            <img src="#" id="imgLogo" style="width:100px;cursor:pointer;" alt="暂无图标" title="双击鼠标上传图片">
        </div>
    </div>
    <div class="layui-form-item" >
        <label class="layui-form-label">攻略描述:</label>
        <div class="layui-input-block">
            <input name="description"    autocomplete="off" placeholder="请输入" class="layui-input" type="text">
        </div>
    </div>

    <div class="layui-form-item" id="fbr">
        <label class="layui-form-label">发布人：</label>
        <div class="layui-input-block" id="pegname" style="line-height: 37px">
            <%--<input hidden="hidden" name="u_id" value="1"  autocomplete="off" placeholder="请输入发布人信息" class="layui-input" type="text" >--%>
        </div>
    </div>


    <%--<div class="layui-form-item">--%>
        <%--<label class="layui-form-label">攻略内容:</label>--%>
        <%--<div class="layui-input-block">--%>
            <%--<textarea id="cont" readonly="readonly" name="content"  placeholder="请填攻略内容信息(500字以内)" style="display: none;" maxlength="5000"></textarea>--%>
        <%--</div>--%>
    <%--</div>--%>
    <div class="layui-form-item layui-anim layui-anim-scale">
        <label class="layui-form-label">编辑内容</label>
        <div class="layui-input-block">
            <div id="pContent" title="" style="width:800px;padding:10px;">
                <textarea id="content" style="height:400px;width:800px;" name="content"></textarea>
            </div>
        </div>
    </div>
    <div class="layui-form-item" id="dzs">
        <label class="layui-form-label">点赞数:</label>
        <div class="layui-input-block">
            <input name="likenum" readonly="readonly"   autocomplete="off" placeholder="请输入" class="layui-input" type="text">
        </div>
    </div>

    <div class="layui-form-item" id="xia-la" >
        <label class="layui-form-label">选择类别：</label>
        <div class="layui-input-block"style="width:500px;">
            <select name="icategory.subid"  id="sltWeb" style="width: 200px;height: 37px"></select>
        </div>
    </div>

    <%--<div class="layui-form-item" id="rea">--%>
        <%--<label class="layui-form-label">状态结果原因：</label>--%>
        <%--<div class="layui-input-block">--%>
            <%--<input  name="reason"   autocomplete="off" placeholder="请输入发布人信息" class="layui-input" type="text" >--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--<div class="layui-form-item" hidden>--%>
        <%--<label class="layui-form-label">状态:</label>--%>
        <%--<div class="layui-input-block">--%>
            <%--<input name="status" value="以发表" title="以发表" checked="checked" type="radio">--%>
            <%--<input name="status" value="未发表" title="未发表" type="radio">--%>
        <%--</div>--%>
    <%--</div>--%>
    <div class="layui-form-item" id="dButton">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo" >提交</button>
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
    var ueditor = UE.getEditor('content');

    function doUpload() {
        doUploadFile("uploadfile","frmUpload",null,function (path){
            $("#imgLogo").attr("src",getRootPath()+"/uploadfiles/"+path);
            $("#txtLogo").val(path);
        });
    }
    var kb=new KBLayUI("p_strategy");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    var editor=null;
    if(type!=0)
        kb.getMe(getURLParamValue("id"),function (data) {

            $("#pegname").append(" <input hidden='hidden' readonly='readonly' autocomplete='off' placeholder='请输入发布人信息' class='layui-input' type='text'  value='"+data.iuser.name+"'></input>");
            $('#ff').form('load', data);//导入修改的数据，并绑定在界面上
            $("#imgLogo").attr("src",getRootPath()+"/uploadfiles/"+data.image);
            $("#txtLogo").val(data.image);
            // layui.use(['layedit'],function () {
            //     var layedit=layui.layedit;
            //     editor=layedit.build('cont');
            // });
            ueditor.addListener('ready', function (editor) {
                ueditor.setContent(data.content);
            });
        });
    if (type==0){
        $("#fbr").hide();
        $("#dzs").hide();

        $("#rea").hide();
    }
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
        //     editor=layedit.build('cont');
        kb.doFormLayui("formDemo",function () {
            var obj=serializeArrayToObject("ff");
            var content = UE.getEditor('content').getContent();
            if (content==null){

                layer.alert("请填写商品描述",{offset:"50px"});
                return false;
            }
            if(content.length > 5000) {
                layer.alert("您在富文本编辑器中输入的数据太大了,无法进行新增！！",{offset:"50px"});
                return false;
            }
            // obj.content=content;
         //    obj.content=layedit.getContent(editor);
         // //   alert(obj.content);
         //    if (layedit.getText(editor)=="")
         //    {
         //        layer.msg("攻略内容不能为空！");
         //        return false;
         //    }
            if (type==0)
                kb.add(obj,function (returnBack) {});
            else
                kb.edit(obj,function (returnBack) { });

            var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
            parent.layer.close(index);
            parent.find();

        });

    });

    $(function () {
        /*完成站点加载，如果是不是新增，要实现数据选中*/
        doData("p_category/find",null,function (data) {

            if (data!=null && data.obj!=undefined && data.obj!=null)
                for(var i=0;i<data.obj.length;i++)
                {
                    $("#sltWeb").append("<option value='"+data.obj[i].subid+"'>"+data.obj[i].subcategory+"</option>");
                }

            if(type!=0)
                kb.getMe(getURLParamValue("id"),function (data) {
                    $("#sltWeb").find("option[value='"+data.icategory.id+"']").attr("selected","selected");
                    layui.use(['form'],function () {
                        var form=layui.form;
                        form.render('select'); //刷新select选择框渲染
                    });
                });
            layui.use(['form'],function () {
                var form=layui.form;
                form.render('select'); //刷新select选择框渲染
            });
        });
    });


</script>
</body>
</html>