<%--
  Created by IntelliJ IDEA.
  User: xufeng
  Date: 2018/5/15
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init_layui.jsp"%>
<html>
<script type="text/javascript" charset="utf-8" src="<%=basePath %>/plugins/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=basePath %>/plugins/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/plugins/ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript"src="<%=basePath %>/static/js/html5media.min.js"></script>
<head>
    <title>商品发布</title>
    <style>
        .layui-input-block{
            width: 200px;
        }
        .close{cursor:pointer;width:20px;height:20px;background:rgba(255, 255, 255, 0.5);color:#000;position: absolute;right: 0px;top: 0px;z-index:50;text-align:center;line-height:20px;}
        li{list-style: none;width:120px;float: left;margin-right: 10px;position:relative;}
        li img{width:120px;height:116px;}
        li input{width: 120px;height:27px;}

    </style>
</head>
<body style="padding-top: 10px;">
<form class="layui-form" id="ff">
    <blockquote class="layui-elem-quote layui-text" style="border-left: 5px solid #FF5722;font-size: 22px;color: black">商品发布</blockquote>
    <input type="hidden" name="id"/>
    <input type="hidden" name="sub_id" value=<%=request.getSession().getAttribute("users_id")%>>
    <h2 style="font-size: 20px">1，商品基本信息</h2>
    <br>

    <br>

    <div class="layui-form-item">
        <label class="layui-form-label">商品名：</label>
        <div class="layui-input-block">
            <input name="commname" required  lay-verify="required" autocomplete="off" placeholder="请输入商品名" class="layui-input" type="text" maxlength="40">
        </div>
    </div>


    <div class="layui-form-item">
        <label class="layui-form-label">商品标题：</label>
        <div class="layui-input-block">
            <input name="title" required  lay-verify="required" autocomplete="off" placeholder="请输入标题" class="layui-input" type="text" maxlength="50">
        </div>
    </div>


    <br/>
    <div class="layui-form-item">
        <label class="layui-form-label">商品价格：</label>
        <div class="layui-input-block" >
            <input name="price" required  lay-verify="required|number" autocomplete="off" placeholder="请输入商品价格" class="layui-input" type="text" maxlength="5">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">商品库存：</label>
        <div class="layui-input-block" >
            <input name="stock" required  lay-verify="required|number" autocomplete="off" placeholder="请输入商品库存" class="layui-input" type="text" maxlength="5">
        </div>
    </div>



    <div class="layui-form-item">
        <label class="layui-form-label">商品图片:</label>
        <div style="display: inline-block;margin-left:-110px">
            <div class="layui-input-block">
                <input name="image1" id="image1" type="hidden">
                <img src="#" id="login1" style="width:100px;cursor:pointer;" alt="暂无图标(双击添加图片)" title="双击鼠标上传图片">
            </div>

        </div>


        <div style="display: inline-block;margin-left:-150px">
            <div class="layui-input-block">
                <input name="image2" id="image2" type="hidden">
                <img src="#" id="login2" style="width:100px;cursor:pointer;" alt="暂无图标(双击添加图片)" title="双击鼠标上传图片">
            </div>

        </div>


        <div style="display: inline-block;margin-left:-150px">
            <div class="layui-input-block">
                <input name="image3" id="image3" type="hidden">
                <img src="#" id="login3" style="width:100px;cursor:pointer;" alt="暂无图标(双击添加图片)" title="双击鼠标上传图片">
            </div>

        </div>

        <div style="display: inline-block;margin-left:-150px">
            <div class="layui-input-block">
                <input name="image4" id="image4" type="hidden">
                <img src="#" id="login4" style="width:100px;cursor:pointer;" alt="暂无图标(双击添加图片)" title="双击鼠标上传图片">
            </div>

        </div>


    </div>


    <br/>


    <div class="layui-form-item layui-anim layui-anim-scale">
    <label class="layui-form-label">商品样式：</label>
    <div class="layui-input-block" style="width: 800px">
        <div style="min-height:200px;border: 1px solid #ededed;overflow: auto;">
            <ul id="imagenews">
                <li id="sctb">
                    <div class="layui-upload-drag" id="btnVideoAddress"><i class="layui-icon">&#xe634;</i></div>
                </li>
            </ul>
        </div>
    </div>
</div>
    <br>

    <div class="layui-form-item layui-anim layui-anim-scale">
        <label class="layui-form-label">编辑内容</label>
        <div class="layui-input-block">
            <div id="pContent" title="" style="width:800px;padding:10px;">
                <textarea id="content" style="height:400px;width:800px;" name="content"></textarea>
            </div>
        </div>
    </div>
    <br/>


    <div class="layui-form-item" id="dButton">
        <div class="layui-input-block" >
            <button class="layui-btn" style="background-color: #008AE5" lay-submit lay-filter="formDemo">确认修改</button>
        </div>
    </div>
</form>

<!--文件上传-->
<form  style="display: none;" enctype="multipart/form-data" id="frmUpload">
    <input id="Filedata" type="file" name="file" onchange="doUpload()"
           accept=".jpg,.png,.gif"/>
</form>
<%--多图上传--%>
<form id="frmUploadVideo" style="display:none;">
    <input type="file" name="file" id="btnLoadVideoFile" onchange="doUploadVideo()" accept=".jpg,.jpeg,.png" multiple="multiple"/>
</form>
<input id="file" type="hidden">


<script type="text/javascript" src="<%=basePath%>/liyi_sj/js/area2.js"></script>
<script type="text/javascript" src="<%=basePath%>/liyi_sj/js/cityjs2.js"></script>



<script>
    var ueditor = UE.getEditor('content');
    function doUpload() {
        doUploadFile("uploadfile","frmUpload",null,function (path){
            if ($("#file").val()=="l1"){

                $("#login1").attr("src",getRootPath()+"/uploadfiles/"+path);
                $("#image1").val(path);

            }
            if ($("#file").val()=="l2"){

                $("#login2").attr("src",getRootPath()+"/uploadfiles/"+path);
                $("#image2").val(path);
            }

            if ($("#file").val()=="l3") {
                $("#login3").attr("src", getRootPath() + "/uploadfiles/" + path);
                $("#image3").val(path);
            }

            if ($("#file").val()=="l4") {
                $("#login4").attr("src", getRootPath() + "/uploadfiles/" + path);
                $("#image4").val(path);
            }

        });
    }
    var kb=new KBLayUI("sj_commodity");
    var type=getURLParamValue("type");//获取操作类型，0表示新增，其他表示修改
    var editor=null;
    if(type!=0)
        kb.getMe(getURLParamValue("comid"),function (data) {

            $('#ff').form('load', data);//导入修改的数据，并绑定在界面上

            $("#login1").attr("src",getRootPath()+"/uploadfiles/"+data.image1);
            $("#image1").val(data.image1);
            $("#login2").attr("src",getRootPath()+"/uploadfiles/"+data.image2);
            $("#image2").val(data.image2);
            $("#login3").attr("src",getRootPath()+"/uploadfiles/"+data.image3);
            $("#image3").val(data.image3);
            $("#login4").attr("src",getRootPath()+"/uploadfiles/"+data.image4);
            $("#image4").val(data.image4);



           var stycomobj=new Object();
           stycomobj.com_id=getURLParamValue("comid");
            doData("ys_style/getstyle",stycomobj,function (data2) {
                for(var i = 0;i<data2.obj.length;i++){
                    $("#imagenews").append("<li class='lis'>" +
                        "<img src='"+getRootPath()+"/uploadfiles/"+data2.obj[i].styleImage+"' alt='"+data2.obj[i].styleImage+"'/>" +
                        "<input type='text' name='images.title' placeholder='请输入图片的标题' class='layui-input' lay-verify='title' value='"+data2.obj[i].stylename+"'>" +
                        "<div class='close'><i class='layui-icon'>&#x1006;</i></div>"+
                        "</li>");
                }




            });


            ueditor.addListener('ready', function (editor) {
                ueditor.setContent(data.description);
            });
            // layui.use(['layedit'],function () {
            //     var layedit=layui.layedit;
            //     editor=layedit.build('content');
            // });
        });

    layui.use(['layedit'],function () {

        $("#login1").dblclick(function () {
            $("#file").val("l1");
            $("#Filedata").click();
        });
        $("#login2").dblclick(function () {
            $("#file").val("l2");
            $("#Filedata").click();
        });
        $("#login3").dblclick(function () {
            $("#file").val("l3");
            $("#Filedata").click();
        });
        $("#login4").dblclick(function () {
            $("#file").val("l4");
            $("#Filedata").click();
        });
        var layedit=layui.layedit;
        kb.doFormLayui("formDemo",function () {
            var obj=serializeArrayToObject("ff");

            var content = UE.getEditor('content').getContent();
            if (content==null){

                layer.alert("请填写商品描述",{offset:"50px"});
                return false;
            }
            if(content.length > 5000) {
                layer.alert("您在富文本编辑器中输入的数据太大了,无法进行修改！！",{offset:"50px"});
                return false;
            }
            obj.description=content;

           // alert("list集合："+imglist()[0]);

            //obj.images = imglist();//图片集

            obj.s_id=${sessionScope.get("users_id")};

            obj.sub_id=$("#city").val();

            obj.sstatus="待审核";

            if(imglist() == null || imglist().length <=0){
                layer.alert("请上传图片！！");
                return false;//判断是不是空的
            }

            doData("/sj_commodity/edit",obj,function (data) {
                if (data>0)
                {
                    alert("商品修改成功");
                    window.location.reload();
                }

                else
                {
                    if (parent==null)
                        layer.msg("新增失败，错误代码：" + data.code);
                    else
                        parent.layer.msg("新增失败，错误代码：" + data.code);
                }

                callback(data);//回调
            });

        });
    })


    var layer;
    if(type != 0){
        //如果是修改，新闻编号就不让它去修改了
        $("#xwbh").hide();
    }


    //视屏新闻上传
    function doUploadVideo() {
        layer.load();
        imgupload();
    }

    //删除图片
    $(".close").live("click",function(){
        if(type != 0){
            //开始删除数据库中的图片数据，这里是根据图片地址来进行删除的
            var Imgid = $(this).siblings("img").attr("alt");
            var obj = new Object();
            obj.id = Imgid;
            //执行图片的删除
            doData("news/delImg",obj,function (data) {
                if (data.code > 0) layer.msg(data.message);
                else layer.msg(data.message);

            });
        }
        $(this).parent(".lis").remove();//只是单纯的删除页面元素
    });


    //点击上传视屏
    $("#btnVideoAddress").click(function () {
        $("#btnLoadVideoFile").click();
    });
    layui.use(['form','jquery'], function(){
        var form = layui.form,layer = layui.layer;
        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 2){
                    return '输入框至少要有两个字符...';
                }
            }
        });






    });


    function imglist(){
        //开始遍历li
        var imgsrcs = new Array();
        var i=1;
        $(".lis").each(function(){
            //获取图片的路径
            var imgsrc =$(this).find("img").attr("src");
            var titles = $(this).find("input").val();
            var temp=new Object();
            temp.id=guid();
            temp.stylename=titles;
            temp.styleImage=getSrc(imgsrc,"");
            imgsrcs.push(temp);
        });

        return imgsrcs;
    };

    //随机生成id
    function guid() {
        function S4() {
            return (((1+Math.random())*0x10000)|0).toString(16).substring(1);
        }
        return (S4()+S4()+"-"+S4()+"-"+S4()+"-"+S4()+"-"+S4()+S4()+S4());
    };
    function getSrc(obj,str){
        var src = obj;
        var result = src.replace(getRootPath()+"/uploadfiles/",str);
        return result;
    };

    //图片上传
    function imgupload(){
        doUploadFile("uploadfile","frmUploadVideo",null,function (path) {
            for(var i = 0;i<path.length;i++){
                var imgsrc = getRootPath()+"/uploadfiles/"+path[i];
                $("#imagenews").append("<li class='lis'>" +
                    "<img src='"+imgsrc+"' />" +
                    "<input type='text' name='images.title' placeholder='请输入图片的标题' class='layui-input' lay-verify='title'>" +
                    "<div class='close'><i class='layui-icon'>&#x1006;</i></div>"+
                    "</li>");
                layer.closeAll('loading');
            }
        });
    };

    function getProvince(prov) {
        var index=prov.indexOf("_");
        prov=prov.substring(index-index,index);
        return prov;
    }
</script>

</body>
</html>
