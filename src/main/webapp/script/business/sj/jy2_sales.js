/**
 * Created by wph-pc on 2017/10/10.
 */
var jxmstc=new KBOperate("sales");

function getCondition() {
    var obj = new Object();
    obj.condition= $("#txtName").val();

    //这里可以给obj添加属性,给它赋页面输入的值
    return obj;
}
function find()
{

    jxmstc.findForEasyui("dgSales",getCondition());
}

function doUploadExcel() {
    doUploadFile("uploadfile","frmUploadExcel",null,function (path){
         jxmstc.do("loadData",path,function (data) {
             //编写上传的前后台代码
             //alert(data);
         });
    });
}
layui.use(['layer','element'],function () {
         var layer=layui.layer,
         element=layer.element;

         find();
    $("#btnFind").click(function () {
        find();
    });
    jxmstc.browserForEasyui2(function (obj) {
        var toUrl=getRootPath()+"/sales/uioperate?type=2&u_id="+obj.u_id;
        layer.open({
            title:'资金信息浏览',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });



    // $("#btnDeleteAll").click(function () {
    //     var ids=jxmstc.getEasyuiGridSelectRowsID("dgSales");
    //     if (ids=="") return;
    //     var flag=confirm("删除后数据不可回复，您确定删除选中的信息吗？");
    //     if (flag==false) return;
    //     var obj=new Object();
    //     obj.ids=ids;
    //     jxmstc.do("deleteAll",obj,function (data) {
    //         if (data.code>0)
    //         {
    //             layer.msg("您选中的信息已经删除！");
    //             find();
    //         }
    //         else
    //         {
    //             layer.msg("您选中的信息删除失败，错误代码："+data.code);
    //         }
    //     });
    // });


    $("#btnLoadData").click(function () {
        $("#uploadExcelFile").click();
    });

    $("#btnDownLoad").click(function () {
        $("#txtHName").val("");
        $("#frmDownloadExcel").form().submit();
    });
});
//自动生成按钮
function format(value, rowData, rowIndex) {
    var str =
        "<a class='layui-btn layui-btn-normal layui-btn-mini' href='#' type='browser' valueId='" + rowData.id + "' name='" + rowData.name +"' newtype='"+rowData.type+"'>浏览</a>";
        // "<a class='layui-btn layui-btn-warm layui-btn-mini' href='#' type='edit' valueId='" + rowData.id + "' name='" + rowData.name +"' newtype='"+rowData.type+"'>审核</a>" ;
    return str;
};

KBOperate.prototype.browserForEasyui2=function(callback){
    var temp=this;
    $("a[type=browser]").live("click",function () {
        var obj=new Object();
        obj.id=$(this).attr("valueId");
        obj.name=$(this).attr("name");
        obj.button=this;
        callback(obj);
    });
}
KBOperate.prototype.editForEasyui2=function(callback){
    $("a[type=edit]").live("click",function () {
        var obj=new Object();
        obj.id=$(this).attr("valueId");
        obj.name=$(this).attr("name");
        obj.button=this;
        if (obj.id==null || obj.id.trim()=="")
        {
            callback(null);//参数不符合条件
            return;
        }
        else
            callback(obj);
    });
}

