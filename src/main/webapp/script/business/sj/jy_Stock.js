/**
 * Created by wph-pc on 2017/10/10.
 */

var jxmstc=new KBOperate("stock");
var user="1";
function getCondition() {
    var obj = new Object();
    obj.condition = $("#txtName").val();
    obj.userid=user;
    return obj;
}

function find() {
    jxmstc.findForEasyui("dgStock",getCondition());
}

function doUploadExcel() {
    doUploadFile("uploadfile","frmUploadExcel",null,function (path){
        jxmstc.do("loadData",path,function (data) {
            //编写上传的前后台代码
            //alert(data);
        });
    });
}

layui.use(['layer'],function () {
    var layer=layui.layer;
    find();


    jxmstc.editForEasyui2(function (obj) {
        var toUrl=getRootPath()+"/stock/index?type=1&id="+obj.id;
        layer.open({
            title:'库存信息修改',
            type: 2,
            area:["70%","70%"],
            content: toUrl
        });
    });


    $("#btnAdd").click(function () {
        var toUrl=getRootPath()+"/stock/index?type=0";
        layer.open({
            title:'货物信息新增',
            type: 2,
            area:["80%","80%"],
            content: toUrl
        });
    });


    $("#btnLoadData").click(function () {
        $("#uploadExcelFile").click();
    });


    $("#btnFind").click(function () {
        find();
    });

    $("#btnDownLoad").click(function () {
        $("#txtHName").val("");
        $("#frmDownloadExcel").form().submit();
    });
});


