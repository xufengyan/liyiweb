<%--
  Created by IntelliJ IDEA.
  User: xufeng
  Date: 2018/4/14
  Time: 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init.jsp"%>

<html>
<head>
    <title>公告管理</title>
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet" />
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>
    <style>
        table{border-collapse:collapse;}
        td {height:40px;       /*单元格高度*/
            text-align:center; /*单元格文字居中对齐*/
        }
    </style>
</head>
<body>
<div class="layui-table-tool" id="tb">
    <div class="layui-btn-group">
        <button class="layui-btn layui-btn-small" id="btnAdd" >
            <i class="layui-icon">&#xe608;</i> 发布
        </button>

    </div>
    <input type="text"  style="width: 150px; height: 28px;" name="name" id="txtName" required  placeholder="请选择发布时间" autocomplete="off"/>
    <div class="layui-btn-group">
        <button class="layui-btn layui-btn-small" id="btnFind">
            <i class="layui-icon">&#xe615;</i> 搜索
        </button>
    </div>
    <button class="layui-btn layui-btn-small" id="btnDownLoad" >
        <i class="layui-icon">&#xe61e;</i> 下载
    </button>
</div>
<table class="easyui-datagrid" title="公告管理" style="height:auto" id="dgNotice"
       data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tb'">
    <thead>
    <tr>
        <th data-options="field:'content',width:615">公告内容</th>
        <th data-options="field:'createDate',width:160,formatter:Date.prototype.getLongDate">发布时间</th>


        <!--此处可以继续增加列设置-->
        <th data-options="field:'ids',formatter:format" width="150"
            align="center">操作</th>
    </tr>
    </thead>
</table>
<!--导入数据上传-->
<form  style="display: none;" enctype="multipart/form-data" id="frmUploadExcel">
    <input id="uploadExcelFile" type="file" name="file" onchange="doUploadExcel()"
           accept=".xls,.xlsx"/>
</form>
<!--导入数据导出-->
<form  style="display: none;"  id="frmDownloadExcel" method="post" action="<%=basePath%>/notice/loadout">
    <input type="hidden" id="txtHName" name="name"/>
</form>
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        laydate.render({
            elem: '#txtName'
        });



    });



    var sid =${sessionScope.get("users_id")};

    var jxmstc=new KBOperate("notice");
    function getCondition() {
        var obj = new Object();
        obj.condition=sid.toString();
        obj.createDate=$("#txtName").val();
        return obj;
    }
    function find() {

        jxmstc.findForEasyui("dgNotice",getCondition());
    }

    function doUploadExcel() {
        doUploadFile("uploadfile","frmUploadExcel",null,function (path){
            jxmstc.do("loadData",path,function (data) {
                //编写上传的前后台代码
            });
        });
    }
    layui.use(['layer'],function () {
        var layer=layui.layer;
        find();
        jxmstc.browserForEasyui2(function (obj) {
            var toUrl=getRootPath()+"/notice/uioperate?type=2&id="+obj.id;
            layer.open({
                title:'信息浏览',
                type: 2,
                area:["100%","100%"],
                content: toUrl
            });
        });

        jxmstc.editForEasyui2(function (obj) {
            var toUrl=getRootPath()+"/notice/uioperate?type=1&id="+obj.id;
            layer.open({
                title:'信息修改',
                type: 2,
                area:["100%","100%"],
                content: toUrl
            });
        });
        jxmstc.delForEasyui2("您确定删除当前选中的信息吗？",function (data) {
            if (data.code>0){
                layer.msg("删除成功！");
                jxmstc.findForEasyui("dgNotice",getCondition());
            }else
            {
                layer.msg("删除失败，数据在使用中...！");
            }
        });

        $("#btnAdd").click(function () {
            var toUrl=getRootPath()+"/notice/uioperate?type=0";
            layer.open({
                title:'信息新增',
                type: 2,
                area:["100%","100%"],
                content: toUrl
            });
        });
        $("#btnLoadData").click(function () {
            $("#uploadExcelFile").click();
        });

        $("#btnDeleteAll").click(function () {
            var ids=jxmstc.getEasyuiGridSelectRowsID("dgNotice");
            if (ids=="") return;
            var flag=confirm("删除后数据不可回复，您确定删除选中的信息吗？");
            if (flag==false) return;
            var obj=new Object();
            obj.ids=ids;
            jxmstc.do("deleteAll",obj,function (data) {
                if (data.code>0)
                {
                    layer.msg("您选中的信息已经删除！");
                    find();
                }
                else
                {
                    layer.msg("您选中的信息删除失败，错误代码："+data.code);
                }
            });
        });
        $("#btnFind").click(function () {
            find();
        });

        $("#btnDownLoad").click(function () {
            $("#txtHName").val("");
            $("#frmDownloadExcel").form().submit();
        });
    });
    //自动生成按钮
    function format(value, rowData, rowIndex) {
        var str =
            "<a class='layui-btn layui-btn-normal layui-btn-mini' href='#' type='browser' valueId='" + rowData.id + "' name='" + rowData.name +"' newtype='"+rowData.type+"'>浏览</a>" +
            "<a class='layui-btn layui-btn-warm layui-btn-mini' href='#' type='edit' valueId='" + rowData.id + "' name='" + rowData.name +"' newtype='"+rowData.type+"'>修改</a>" +
            "<a class='layui-btn layui-btn-danger layui-btn-mini' href='#' type='del' valueId='" + rowData.id + "' name='" + rowData.name + "' newtype='"+rowData.type+"'>删除</a>";

        return str;
    };
    KBOperate.prototype.browserForEasyui2 = function (callback) {
        var temp = this;
        $("a[type=browser]").live("click", function () {
            var obj = new Object();
            obj.id = $(this).attr("valueId");
            obj.name = $(this).attr("name");
            obj.button = this;
            callback(obj);
        });
    }
    KBOperate.prototype.editForEasyui2 = function (callback) {
        $("a[type=edit]").live("click", function () {
            var obj = new Object();
            obj.id = $(this).attr("valueId");
            obj.name = $(this).attr("name");
            obj.button = this;
            if (obj.id == null || obj.id.trim() == "") {
                callback(null);//参数不符合条件
                return;
            }
            else
                callback(obj);
        });
    }

    KBOperate.prototype.delForEasyui2=function(tips,callback){
        var temp=this;
        $("a[type=del]").live("click",function () {
            var obj=new Object();
            obj.id=$(this).attr("valueId");
            obj.name=$(this).attr("name");
            if (tips==undefined || tips=="")
                tips="删除后数据不可恢复，确定吗？";
            var flag=confirm(tips);
            if (flag)
            {
                doData(temp.baseURL+"/del",obj,function (data) {
                    callback(data);
                });
            }
        });
    }


</script>
</body>
</html>
