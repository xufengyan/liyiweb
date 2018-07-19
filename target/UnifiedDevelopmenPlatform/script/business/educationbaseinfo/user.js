
var jxmstc=new KBOperate("userInform");

function getCondition() {
    var obj = new Object();
    obj.name = $("#txtName").val();
    return obj;
}
function find() {
    jxmstc.findForEasyui("dgUser",getCondition());
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
    jxmstc.browserForEasyui(function (obj) {
        var toUrl=getRootPath()+"/userInform/uioperate?type=2&id="+obj.id;
        layer.open({
            title:'用户信息浏览',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });



    jxmstc.editForEasyui(function (obj) {
        var toUrl=getRootPath()+"/userInform/uioperate?type=1&id="+obj.id;
        layer.open({
            title:'用户信息修改',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });

    jxmstc.delForEasyui("您确定删除当前选中的信息吗？",function (data) {
        if (data.code>0){
            layer.msg("删除成功！");
            jxmstc.findForEasyui("dgUser",getCondition());
        }else
        {
            layer.msg("删除失败，数据在使用中...！");
        }
    });

    $("#btnAdd").click(function () {
        var toUrl=getRootPath()+"/userInform/uioperate?type=0";
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
        var ids=jxmstc.getEasyuiGridSelectRowsID("dgUser");
        if (ids=="") return;
        var flag=confirm("删除后数据不可回复，您确定删除选中的高校信息吗？");
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


