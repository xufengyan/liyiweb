/**
 * Created by wph-pc on 2017/10/10.
 */
var jxmstc=new KBOperate("p_userInform");
function getCondition() {
    var obj = new Object();
    obj.condition = $("#txtName").val();
    return obj;
}
function find() {
        var obj = new Object();
        obj.condition = $("#txtName").val();
        findByPage(jxmstc.baseURL+"/findByPage", "dgUserInform",obj,function () {
            $("input[type=switchbutton]").switchbutton({onChange: function(checked){
                    var temp=$(this);
                    if (checked == true){//选中
                        var obj=new Object();
                        obj.id=$(temp).attr("id");
                        obj.type=$(temp).attr("adType");
                        obj.status="正常";
                        doData(jxmstc.baseURL+"/edit",obj,function (result) {
                            if (result.result<0)
                            {
                                $(temp).attr("checked",false);
                                alert("系统开启失败！");
                            }
                        });

                    }
                    if (checked == false){
                        var obj=new Object();
                        obj.id=$(temp).attr("id");
                        obj.type=$(temp).attr("adType");
                        obj.status="关闭";
                        doData(jxmstc.baseURL+"/edit",obj,function (result) {
                            if (result.result<0)
                            {
                                $(temp).attr("checked",true);
                                alert("系统关闭失败！");
                            }
                        });
                    }}
            });
        });

    }
function formatStatus(value, rowData, rowIndex) {
    if (value=="正常")
        return "<input type='switchbutton' id='"+rowData.id+"' adType='"+rowData.type+"' class='easyui-switchbutton' checked>";
    else
        return "<input type='switchbutton' id='"+rowData.id+"' adType='"+rowData.type+"' class='easyui-switchbutton'>";
}
function doUploadExcel() {
    doUploadFile("uploadfile","frmUploadExcel",null,function (path){
         jxmstc.do("loadData",path,function (data) {
             //编写上传的前后台代码
             alert(data);
         });
    });
}
layui.use(['layer'],function () {
        var layer=layui.layer;
    find();
    jxmstc.browserForEasyui2(function (obj) {
        var toUrl=getRootPath()+"/p_userInform/uioperate?type=2&id="+obj.id;
        layer.open({
            title:'用户信息浏览',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });

    jxmstc.editForEasyui2(function (obj) {
        var toUrl=getRootPath()+"/p_userInform/uioperate?type=1&id="+obj.id;
        layer.open({
            title:'用户信息修改',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });
    jxmstc.delForEasyui2("您确定删除当前选中的信息吗？",function (data) {
        if (data.code>0){
            layer.msg("删除成功！");
            jxmstc.findForEasyui("dgUserInform",getCondition());
        }else
        {
            layer.msg("删除失败，数据在使用中...！");
        }
    });

    $("#btnAdd").click(function () {
        var toUrl=getRootPath()+"/p_userInform/uioperate?type=0";
        layer.open({
            title:'用户信息新增',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });
    $("#btnLoadData").click(function () {
        $("#uploadExcelFile").click();
    });

    $("#btnDeleteAll").click(function () {
        var ids=jxmstc.getEasyuiGridSelectRowsID("dgUserInform");
        if (ids=="") return;
        var flag=confirm("删除后数据不可回复，您确定删除选中的用户信息吗？");
        if (flag==false) return;
        var obj=new Object();
        obj.ids=ids;
        jxmstc.do("deleteAll",obj,function (data) {
            if (data.code>0)
            {
                layer.msg("您选中的用户信息已经删除！");
                find();
            }
            else
            {
                layer.msg("您选中的用户信息删除失败，错误代码："+data.code);
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