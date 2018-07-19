


/**
 * Created by wph-pc on 2017/10/10.
 */

var jxmstc=new KBOperate("p_discount");

function getCondition() {
    var obj = new Object();
    obj.condition = $("#txtName").val();
    return obj;
}

function find() {
    jxmstc.findForEasyui("dgdiscount",getCondition());
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
    jxmstc.browserForEasyuiph(function (obj) {
        var toUrl=getRootPath()+"/p_discount/uioperate?type=2&id="+obj.id;
        //alert(obj.id);
        layer.open({
            title:'心情信息浏览',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });

    jxmstc.editForEasyuiph(function (obj) {
        var toUrl=getRootPath()+"/p_discount/uioperate?type=1&id="+obj.id;
        layer.open({
            title:'心情信息修改',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });
    jxmstc.delForEasyuiph("您确定删除当前选中的信息吗？",function (data) {

        if (data.code>0){
            layer.msg("删除成功！");
            jxmstc.findForEasyui("dgdiscount",getCondition());
        }else
        {
            layer.msg("删除失败，数据在使用中...！");
        }
    });

    $("#btnAdd").click(function () {
        var toUrl=getRootPath()+"/p_discount/uioperate?type=0";
        layer.open({
            title:'心情信息新增',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });
    $("#btnLoadData").click(function () {
        $("#uploadExcelFile").click();
    });

    $("#btnDeleteAll").click(function () {
        var ids=jxmstc.getEasyuiGridSelectRowsID("dgdiscount");
        if (ids=="") return;
        var flag=confirm("删除后数据不可回复，您确定删除选中的心情信息吗？");
        if (flag==false) return;
        var obj=new Object();
        obj.ids=ids;
        jxmstc.do("deleteAll",obj,function (data) {
            if (data.code>0)
            {
                layer.msg("您选中的心情信息已经删除！");
                find();
            }
            else
            {
                layer.msg("您选中的心情信息删除失败，错误代码："+data.code);
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


