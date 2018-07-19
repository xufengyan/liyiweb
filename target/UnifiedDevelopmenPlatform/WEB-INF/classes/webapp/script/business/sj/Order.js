/**
 * Created by wph-pc on 2017/10/10.
 */

var jxmstc=new KBOperate("business");
var statue="";
var u_id="1";
var dataSheet="dgOrder";
function getCondition(statue) {
    var obj = new Object();
    obj.condition=statue;
    obj.user_id=u_id;
    //alert("asdas"+obj.condition);
    return obj;
}

function find(statue) {

    jxmstc.findForEasyui(dataSheet,getCondition(statue));


}


function doUploadExcel() {
    doUploadFile("uploadfile","frmUploadExcel",null,function (path){
        jxmstc.do("loadData",path,function (data) {
            //编写上传的前后台代码
            //alert(data);
        });
    });
}

layui.use(['layer','laydate','element','laypage'],function () {
    var layer=layui.layer,
        laydate = layui.laydate,
        $=layui.jquery,
        element=layui.element,
        laypage = layui.laypage ;

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

    jxmstc.editForEasyui2(function (obj) {
        var toUrl=getRootPath()+"/business/ship?type=1&id="+obj.id;
        layer.open({
            title:'发货',
            type: 2,
            area:["70%","90%"],
            content: toUrl
        });
    });


    //-------------------------------------------------------------



    //双击浏览.
    $("#dgOrder").datagrid({
        //双击事件
        onDblClickRow: function(obj,row) {
            var toUrl=getRootPath()+"/business/browsing?type=2&id="+row.id;
            layer.open({
                title:'订单信息浏览',
                type: 2,
                area:["100%","100%"],
                content: toUrl
            });
        }
    });


    $("#dgUnshipped").datagrid({
        //双击事件
        onDblClickRow: function(obj,row) {
            var toUrl=getRootPath()+"/business/browsing?type=2&id="+row.id;
            layer.open({
                title:'订单信息浏览',
                type: 2,
                area:["100%","100%"],
                content: toUrl
            });
        }
    });

    $("#dgShipped").datagrid({
        //双击事件
        onDblClickRow: function(obj,row) {
            var toUrl=getRootPath()+"/business/browsing?type=2&id="+row.id;
            layer.open({
                title:'订单信息浏览',
                type: 2,
                area:["100%","100%"],
                content: toUrl
            });
        }
    });

    $("#dgHaveBeen").datagrid({
        //双击事件
        onDblClickRow: function(obj,row) {
            var toUrl=getRootPath()+"/business/browsing?type=2&id="+row.id;
            layer.open({
                title:'订单信息浏览',
                type: 2,
                area:["100%","100%"],
                content: toUrl
            });
        }
    });



    $("#botnDownLoad").click(function () {
        $("#txtHNameShip").val("");
        $("#formDownloadExcel").form().submit();
    });

//日期选择器
    laydate.render({
        elem: '#test'
    });

    laydate.render({
        elem: '#test1'
    });

    laydate.render({
        elem: '#test2'
    });

    laydate.render({
        elem: '#test3'
    });

});


//未发货
function unshipped() {
    statue="待发货";
     dataSheet="dgUnshipped";
     find(statue);
    }
//已发货
function shipped(){

    statue = "已发货";
     dataSheet="dgShipped";
    find(statue);
}

//已签收
function receipt() {

    statue = "已签收";
    dataSheet = "dgHaveBeen";
    find(statue);

}


