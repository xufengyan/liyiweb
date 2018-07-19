/**
 * Created by wph-pc on 2017/10/10.
 */
var jxmstc=new KBOperate("p_commodity");
function getCondition(sst) {
    var obj = new Object();
    obj.condition=$('#txtName').val();
    obj.sstatus = sst;
    //这里可以给obj添加属性,给它赋页面输入的值
    return obj;
}
function getCondition2(sst) {
    var obj = new Object();
    obj.condition=$('#txtName2').val();
    obj.sstatus = sst;
    //这里可以给obj添加属性,给它赋页面输入的值
    return obj;
}
function getCondition3(sst) {
    var obj = new Object();
    obj.condition=$('#txtName3').val();
    obj.sstatus = sst;
    //这里可以给obj添加属性,给它赋页面输入的值
    return obj;
}
function find(sst) {
    var obj=new Object();
    if(sst=="已审核"){
        obj.condition=$('#txtName3').val();
        obj.sstatus=sst;
        findByPage(jxmstc.baseURL+"/findByPage", "dgShipped",getCondition3(sst),function () {
            $("input[type=switchbutton]").switchbutton({onChange: function(checked){
                    var temp=$(this);
                    if (checked == true){//选中
                        var obj=new Object();
                        obj.id=$(temp).attr("id");
                        obj.type=$(temp).attr("adType");
                        obj.status="商品上架";
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
                        obj.status="商品下架";
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
    }else if(sst=="待审核"){
        obj.condition=$('#txtName2').val();
        obj.sstatus=sst;
        findByPage(jxmstc.baseURL+"/findByPage", "dgUnShipped",getCondition2(sst),function () {
            $("input[type=switchbutton]").switchbutton({onChange: function(checked){
                    var temp=$(this);
                    if (checked == true){//选中
                        var obj=new Object();
                        obj.id=$(temp).attr("id");
                        obj.type=$(temp).attr("adType");
                        obj.status="商品上架";
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
                        obj.status="商品下架";
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
        obj.condition=$('#txtName').val();
        obj.sstatus=sst;
        findByPage(jxmstc.baseURL+"/findByPage", "dgCommodity",getCondition(sst),function () {
            $("input[type=switchbutton]").switchbutton({onChange: function(checked){
                    var temp=$(this);
                    if (checked == true){//选中
                        var obj=new Object();
                        obj.id=$(temp).attr("id");
                        obj.type=$(temp).attr("adType");
                        obj.status="商品上架";
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
                        obj.status="商品下架";
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
    if (value=="商品上架")
        return "<input type='switchbutton' id='"+rowData.id+"' adType='"+rowData.type+"' class='easyui-switchbutton' checked>";
    else
        return "<input type='switchbutton' id='"+rowData.id+"' adType='"+rowData.type+"' class='easyui-switchbutton'>";
}
function doUploadExcel() {
    doUploadFile("uploadfile","frmUploadExcel",null,function (path){
        jxmstc.do("loadData",path,function (data) {
            //编写上传的前后台代码
            // alert(data);
        });
    });
}
layui.use(['layer','element'],function () {
    var layer=layui.layer,
        $=layui.jquery,
        element=layui.element;

    find();

    jxmstc.browserForEasyui2(function (obj) {
        var toUrl=getRootPath()+"/p_commodity/uioperate?type=2&id="+obj.id;
        layer.open({
            title:'商品信息浏览',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });

    jxmstc.editForEasyui2(function (obj) {
        var toUrl=getRootPath()+"/p_commodity/uioperate?type=1&id="+obj.id;
        layer.open({
            title:'商品信息修改',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });
    jxmstc.delForEasyui("您确定删除当前选中的信息吗？",function (data) {
        if (data.code>0){
            layer.msg("删除成功！");
            jxmstc.findForEasyui("dgCommodity",getCondition());
        }else
        {
            layer.msg("删除失败，数据在使用中...！");
        }
    });
    $("#btnAdd").click(function () {
        var toUrl=getRootPath()+"/p_commodity/uioperate?type=0";
        layer.open({
            title:'商品信息新增',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });
    $("#btnLoadData").click(function () {
        $("#uploadExcelFile").click();
    });
    $("#btnDeleteAll").click(function () {
        var ids=jxmstc.getEasyuiGridSelectRowsID("dgCommodity");
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
});
$("#btnFind").click(function () {
    var sst="";
    find(sst);
});
$("#btnFind2").click(function () {
    var sst="待审核";

    find(sst);
});
$("#btnFind3").click(function () {
    var sst="已审核";
    find(sst);
});
function stored() {
    sst="";
    find(sst);
    location.reload();

}
function unshipped() {
    sst="待审核";
    find(sst);

}
function shipped(){
    sst="已审核";
    find(sst);

}
//自动生成按钮
function format(value, rowData, rowIndex) {


    var str =
        "<a class='layui-btn layui-btn-normal layui-btn-mini' href='#' type='browser' valueId='" + rowData.id + "' name='" + rowData.name +"' newtype='"+rowData.type+"'>浏览</a>" +
        "<a class='layui-btn layui-btn-warm layui-btn-mini' href='#' type='edit' valueId='" + rowData.id + "' name='" + rowData.name +"' newtype='"+rowData.type+"'>审核</a>" ;

        return str;

};
//自动生成按钮
function format2(value, rowData, rowIndex) {


    var str =
        "<a class='layui-btn layui-btn-normal layui-btn-mini' href='#' type='browser' valueId='" + rowData.id + "' name='" + rowData.name +"' newtype='"+rowData.type+"'>浏览</a>";

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
       var  obj = new Object();
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