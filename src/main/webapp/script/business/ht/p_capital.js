var jxmstc=new KBOperate("p_capital");
function getCondition(app) {
    var obj = new Object();
    obj.storename=$('#txtName').val();
    obj.status = app;
    //这里可以给obj添加属性,给它赋页面输入的值
    return obj;
}
function getCondition2(app) {
    var obj = new Object();
    obj.storename=$('#txtName2').val();
    obj.status = app;
    //这里可以给obj添加属性,给它赋页面输入的值
    return obj;
}
function getCondition3(app) {
    var obj = new Object();
    obj.storename=$('#txtName3').val();
    obj.status = app;
    //这里可以给obj添加属性,给它赋页面输入的值
    return obj;
}
function find(app) {
    var obj=new Object();
    if(app=="已签收"){
        obj.storename=$('#txtName3').val();
        obj.status=app;
        findByPage(jxmstc.baseURL+"/findByPage", "dgShipped",getCondition3(app),function () {
            $("input[type=switchbutton]").switchbutton({onChange: function(checked){
                    var temp=$(this);
                    if (checked == true){//选中
                        var obj=new Object();
                        obj.id=$(temp).attr("id");
                        obj.type=$(temp).attr("adType");
                        // obj.status="正常";
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
                        // obj.status="关闭";
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
    }else if(app=="未签收"){
        obj.storename=$('#txtName2').val();
        obj.status=app;
        findByPage(jxmstc.baseURL+"/findByPage", "dgUnShipped",getCondition2(app),function () {
            $("input[type=switchbutton]").switchbutton({onChange: function(checked){
                    var temp=$(this);
                    if (checked == true){//选中
                        var obj=new Object();
                        obj.id=$(temp).attr("id");
                        obj.type=$(temp).attr("adType");
                        //obj.status="正常";
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
                        //obj.status="关闭";
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

    }else{
        obj.storename=$('#txtName').val();
        obj.status =app;
        findByPage(jxmstc.baseURL+"/findByPage", "dgCapital",getCondition(app),function () {
            $("input[type=switchbutton]").switchbutton({onChange: function(checked){
                    var temp=$(this);
                    if (checked == true){//选中
                        var obj=new Object();
                        obj.id=$(temp).attr("id");
                        obj.type=$(temp).attr("adType");
                        //obj.status="正常";
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
                        //obj.status="关闭";
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
layui.use(['layer','element'],function () {
    var layer=layui.layer,
        $=layui.jquery,
        element=layui.element;

    find();
    jxmstc.browserForEasyui(function (obj) {
        var toUrl=getRootPath()+"/p_capital/uioperate?type=2&id="+obj.id;
        layer.open({
            title:'店铺信息浏览',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });

    jxmstc.editForEasyui(function (obj) {
        var toUrl=getRootPath()+"/p_capital/uioperate?type=1&id="+obj.id;
        layer.open({
            title:'店铺信息修改',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });
    jxmstc.delForEasyui("您确定删除当前选中的信息吗？",function (data) {
        if (data.code>0){
            layer.msg("删除成功！");
            jxmstc.findForEasyui("dgCapital",getCondition());
        }else
        {
            layer.msg("删除失败，数据在使用中...！");
        }
    });
    $("#btnAdd").click(function () {
        var toUrl=getRootPath()+"/p_capital/uioperate?type=0";
        layer.open({
            title:'店铺信息新增',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });
    $("#btnLoadData").click(function () {
        $("#uploadExcelFile").click();
    });
    $("#btnDeleteAll").click(function () {
        var ids=jxmstc.getEasyuiGridSelectRowsID("dg");
        if (ids=="") return;
        var flag=confirm("删除后数据不可回复，您确定删除选中的店铺信息吗？");
        if (flag==false) return;
        var obj=new Object();
        obj.ids=ids;
        jxmstc.do("deleteAll",obj,function (data) {
            if (data.code>0)
            {
                layer.msg("您选中的店铺信息已经删除！");
                find();
            }
            else
            {
                layer.msg("您选中的店铺信息删除失败，错误代码："+data.code);
            }
        });
    });
});
function txtChange() {
    var obj = new Object();
    var app="";
    find(app);
}
function txtChange2() {
    var obj = new Object();
    var app="未签收";
    find(app);
}
function txtChange3() {
    var obj = new Object();
    var app="已签收";
    find(app);
}
$("#btnFind").click(function () {
    var obj = new Object();
    var app="";
    find(app);
});
$("#btnFind2").click(function () {
    var obj = new Object();
    var app="未签收";

    find(app);
});
$("#btnFind3").click(function () {
    var obj = new Object();
    var app="已签收";
    find(app);
});
function stored() {
    app="";
    find(app);
    location.reload();
    parent.find();

}
function unshipped() {
    app="未签收";
    find(app);


}
function shipped(){
    app="已签收";
    find(app);

}