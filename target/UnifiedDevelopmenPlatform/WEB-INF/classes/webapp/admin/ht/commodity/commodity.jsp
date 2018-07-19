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
    <title>商品信息编辑</title>
</head>
<body style="padding-top: 10px;">
<form class="layui-form" id="ff">
    <input type="hidden" name="id"/>
    <div class="layui-form-item">
        <label class="layui-form-label">商品名称：</label>
        <div class="layui-input-block">
            <input name="commname" readonly="readonly"  required  lay-verify="required" autocomplete="off" placeholder="请输入商品名称" class="layui-input" type="text">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">商品描述：</label>
        <div class="layui-input-block">
            <input name="description"  readonly="readonly"  required  lay-verify="required" autocomplete="off" placeholder="请输入内容" class="layui-input" type="text"/>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">商品标题:</label>
        <div class="layui-input-block">
            <input  name="title"  readonly="readonly"  lay-verify="required" placeholder="请输入商品标题" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">图片1:</label>
        <div class="layui-input-block">
            <input name="image1" id="imgAddress"type="hidden"/>
            <img id="imgImageAddress"  readonly="readonly"  alt="暂无图片" src="<%=basePath %>/images/zanwu.jpg" style="width:100px;height:100px;cursor:pointer;" title="双击图片，完成新图片上传"/>
       </div>
    </div>

    <div class="layui-form-item">
    <label class="layui-form-label">图片2：</label>
    <div class="layui-input-block">
        <input name="image2" id="imgAddress1"type="hidden"/>
        <img id="imgImageAddress1"  readonly="readonly"  alt="暂无图片" src="<%=basePath %>/images/zanwu.jpg" style="width:100px;height:100px;cursor:pointer;" title="双击图片，完成新图片上传"/>
    </div>
</div>
    <div class="layui-form-item">
    <label class="layui-form-label">图片3：</label>
    <div class="layui-input-block">
        <input name="image3" id="imgAddress2"type="hidden"/>
        <img id="imgImageAddress2"  readonly="readonly"  alt="暂无图片" src="<%=basePath %>/images/zanwu.jpg" style="width:100px;height:100px;cursor:pointer;" title="双击图片，完成新图片上传"/>
    </div>
</div>
    <div class="layui-form-item">
        <label class="layui-form-label">图片4：</label>
        <div class="layui-input-block">
            <input name="image4" id="imgAddress3"type="hidden"/>
            <img id="imgImageAddress3"  readonly="readonly"  alt="暂无图片" src="<%=basePath %>/images/zanwu.jpg" style="width:100px;height:100px;cursor:pointer;" title="双击图片，完成新图片上传"/>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">商品价格:</label>
        <div class="layui-input-block">
            <input  name="price"  readonly="readonly"  lay-verify="required" placeholder="请输入商品价格" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">商品库存:</label>
        <div class="layui-input-block">
            <input  name="stock"  readonly="readonly"  lay-verify="required" placeholder="请输入商品库存" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">返还积分数:</label>
        <div class="layui-input-block">
            <input  name="integral"  readonly="readonly"  lay-verify="required" placeholder="请输入商品返还积分数" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">未通过审核原因:</label>
        <div class="layui-input-block">
            <input  name="reason"    lay-verify="required" placeholder="请输入未通过审核原因" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item" >
        <label class="layui-form-label">审核状态:</label>
        <div class="layui-input-block">
            <input name="sstatus" value="待审核" title="待审核" checked="checked" type="radio">
            <input name="sstatus" value="已审核" title="已审核" type="radio">
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
<!--图片上传-->
<%--<form id="frmUploadImg" style="display:none;">--%>
    <%--<input type="file" name="file" id="btnLoadFile" onchange="doUploadImage()" accept="image/png,image/gif"/>--%>
<%--</form>--%>
<%--<form id="frmUploadImg1" style="display:none;">--%>
    <%--<input type="file" name="file" id="btnLoadFile1" onchange="doUploadImage1()" accept="image/png,image/gif"/>--%>
<%--</form>--%>
<%--<form id="frmUploadImg2" style="display:none;">--%>
    <%--<input type="file" name="file" id="btnLoadFile2" onchange="doUploadImage2()" accept="image/png,image/gif"/>--%>
<%--</form>--%>
<%--<form id="frmUploadImg3" style="display:none;">--%>
    <%--<input type="file" name="file" id="btnLoadFile3" onchange="doUploadImage3()" accept="image/png,image/gif"/>--%>
<%--</form>--%>
<script src="<%=basePath%>/script/common/jquery.form.js"></script>
<script src="<%=basePath%>/plugins/layui/layui.js"></script>


<script>

    /*图片上传*/
    $("#imgImageAddress").click(function () {
        $("#btnLoadFile").click();
    });
    $("#imgImageAddress1").click(function () {
        $("#btnLoadFile1").click();
    });
    $("#imgImageAddress2").click(function () {
        $("#btnLoadFile2").click();
    });
    $("#imgImageAddress3").click(function () {
        $("#btnLoadFile3").click();
    });
    // function doUploadImage() {
    //     doUploadFile("uploadfile","frmUploadImg",null,function (path) {
    //         var imgsrc = getRootPath()+"/uploadfiles/"+path;
    //         $("#imgAddress").val(imgsrc);
    //         $("#imgImageAddress").attr("src",imgsrc);
    //     });
    // };
    // function doUploadImage1() {
    //     doUploadFile("uploadfile","frmUploadImg1",null,function (path) {
    //         var imgsrc1 = getRootPath()+"/uploadfiles/"+path;
    //         $("#imgIAddress1").val(imgsrc1);
    //         $("#imgImageAddress1").attr("src",imgsrc1);
    //     });
    // };
    // function doUploadImage2() {
    //     doUploadFile("uploadfile","frmUploadImg2",null,function (path) {
    //         var imgsrc2 = getRootPath()+"/uploadfiles/"+path;
    //         $("#imgAddress2").val(imgsrc2);
    //         $("#imgImageAddress2").attr("src",imgsrc2);
    //     });
    // };
    // function doUploadImage3() {
    //     doUploadFile("uploadfile","frmUploadImg3",null,function (path) {
    //         var imgsrc3 = getRootPath()+"/uploadfiles/"+path;
    //         $("#imgAddress3").val(imgsrc3);
    //         $("#imgImageAddress3").attr("src",imgsrc3);
    //     });
    // };
    var kb=new KBLayUI("p_commodity");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    var editor=null;
    if(type!=0)
        kb.getMe(getURLParamValue("id"),function (data) {
            $('#ff').form('load', data);//导入修改的数据，并绑定在界面上
            var imgsrc = $("#imgAddress").val();
            $("#imgImageAddress").attr("src",imgsrc);
            var imgsrc1 = $("#imgAddress1").val();
            $("#imgImageAddress1").attr("src",imgsrc1);
            var imgsrc2 = $("#imgAddress2").val();
            $("#imgImageAddress2").attr("src",imgsrc2);
            var imgsrc3 = $("#imgAddress3").val();
            $("#imgImageAddress3").attr("src",imgsrc3);
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
        //         $("#Filedata").click();
        // });

        var layedit = layui.layedit;
        kb.setLayuiEditorUploadFile(layedit);
        if (editor == null)
            editor = layedit.build('content');
        kb.doFormLayui("formDemo", function () {
            var obj = serializeArrayToObject("ff");
            obj.introduce = layedit.getContent(editor);
            if (layedit.getText(editor) == "") {
                layer.msg("商品简介不能为空！");
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
