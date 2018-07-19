/**
 * Created by wph-pc on 2017/10/10.
 */

var jxmstc=new KBOperate("p_integral");

function formatStatus(value, rowData, rowIndex) {
    if (value=="积分礼品")
        return "<input type='switchbutton' id='"+rowData.id+"' adType='"+rowData.type+"' class='easyui-switchbutton' checked>";
    else
        return "<input type='switchbutton' id='"+rowData.id+"' adType='"+rowData.type+"' class='easyui-switchbutton'>";
}

function getCondition() {
    var obj = new Object();
    obj.condition = $("#txtName").val();
    return obj;
}
function find() {

    jxmstc.findForEasyui("dgIntegral",getCondition());
}
function doUploadExcel() {
    doUploadFile("uploadfile","frmUploadExcel",null,function (path){
        jxmstc.do("loadData",path,function (data) {

            alert(data);
        });
    });
}
layui.use(['layer'],function () {
    var layer=layui.layer;
    find();
    jxmstc.browserForEasyuiph(function (obj) {
        var toUrl=getRootPath()+"/p_integral/uioperate?type=2&id="+obj.id;
        layer.open({
            title:'礼品信息浏览',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });

    jxmstc.editForEasyuiph(function (obj) {
        var toUrl=getRootPath()+"/p_integral/uioperate?type=1&id="+obj.id;
        layer.open({
            title:'礼品信息修改',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });
    jxmstc.delForEasyuiph("您确定删除当前选中的信息吗？",function (data) {
        if (data.code>0){
            layer.msg("删除成功！");
            jxmstc.findForEasyui("dgIntegral",getCondition());
        }else
        {
            layer.msg("删除失败，数据在使用中...！");
        }
    });

    $("#btnAdd").click(function () {
        var toUrl=getRootPath()+"/p_integral/data?type=0";
        layer.open({
            title:'联系店铺新增礼品',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });
    $("#btnLoadData").click(function () {
        $("#uploadExcelFile").click();
    });

    $("#btnDeleteAll").click(function () {
        var ids=jxmstc.getEasyuiGridSelectRowsID("dgIntegral");
        if (ids=="") return;
        var flag=confirm("删除后数据不可回复，您确定删除选中的高校信息吗？");
        if (flag==false) return;
        var obj=new Object();
        obj.ids=ids;
        jxmstc.do("deleteAll",obj,function (data) {
            if (data.code>0)
            {
                layer.msg("您选中的高校信息已经删除！");
                find();
            }
            else
            {
                layer.msg("您选中的高校信息删除失败，错误代码："+data.code);
            }
        });
    });
    $("#btnFind").click(function () {
        find();
    });
    // $("#btnyhq").click(function () {
    //     addTab("优惠券", getRootPath()+"/discount/yhq");
    // });


    $("#btnDownLoad").click(function () {
        $("#txtHName").val("") ;
        $("#frmDownloadExcel").form().submit();
    });
});