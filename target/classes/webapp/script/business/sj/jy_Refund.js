/**
 * Created by wph-pc on 2017/10/10.
 */

var jxmstc=new KBOperate("Refund");
var statue="";
var u_id="1";
var dataSheet="dgOrder";
function getCondition(statue) {
    var obj = new Object();
    obj.condition=statue;
    obj.ordertime = $("#test").val();
    obj.user_id=u_id;
    //alert("asdas"+obj.condition);
    return obj;
}

function find(statue) {

    jxmstc.findForEasyui(dataSheet,getCondition(statue));

}



function getSearch(ordersid) {
    var obj = new Object();
    obj.orders_id  = ordersid;
    obj.condition ="";
    obj.user_id = u_id;
    //alert("asdas"+obj.orders_id);
    return obj;
}

function search(ordersid) {

    jxmstc.findForEasyui(dataSheet,getSearch(ordersid));

}




function doUploadExcel() {
    doUploadFile("uploadfile","frmUploadExcel",null,function (path){
        jxmstc.do("loadData",path,function (data) {
            //编写上传的前后台代码
            //alert(data);
        });
    });
}

layui.use(['layer','laydate','element'],function () {
    var layer=layui.layer,
        laydate = layui.laydate,
        $=layui.jquery,
        element=layui.element;



    find(statue);

    //-------------------------------------------------------------
    jxmstc.browserForEasyui1(function (obj) {
        var toUrl=getRootPath()+"/business/browsing?type=2&id="+obj.id;
        layer.open({
            title:'订单信息浏览',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });

    jxmstc.editForEasyui3(function (obj) {

    });

    jxmstc.editForEasyui4(function (obj) {
        
    })
    

    //-------------------------------------------------------------



    $("#btnLoadData").click(function () {
        $("#uploadExcelFile").click();
    });


    $("#botnFind").click(function () {
        find();
    });


    $("#botnDownLoad").click(function () {
        $("#txtHNameShip").val("");
        $("#formDownloadExcel").form().submit();
    });

    //日期选择器
    laydate.render({
        elem: '#test'
    });

});

//已签收
// function receipt() {
//
//     statue = "已签收";
//     dataSheet = "dgHaveBeen";
//     find(statue);
//
// }

