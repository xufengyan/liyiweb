/**
 * Created by wph-pc on 2017/10/10.
 */

var jxmstc=new KBOperate("p_integda");
function formatStatus(value, rowData, rowIndex) {
    if (value=="已审核")
        return "<input type='switchbutton' id='"+rowData.id+"' adType='"+rowData.type+"' class='easyui-switchbutton' checked>";
    else
        return "<input type='switchbutton' id='"+rowData.id+"' adType='"+rowData.type+"' class='easyui-switchbutton'>";
}
function firm(mma) {
        var sjs= mma;

    if (confirm("该积分商品是否添加为限时积分商品？")) {
         var toUrl=getRootPath()+"/admin/ht/p_integda/integdaDisplay.jsp?type=0&strid="+sjs;
        layer.open({
            title:'限时礼品时间选择',
            maxmin: true,
            type: 2,
            area:[500,400],
            content: toUrl
        });
    }
    else {
        var yjlip = new  Object();
        yjlip.str_id=mma;
        yjlip.status="普通兑换";
        doData("p_integralgoods/add",yjlip,function (ddata) {

        })
    }

}
function finddd()
{
    var obj = new Object();
    appda();
    obj.condition = store;
    findByPage(jxmstc.baseURL+"/findByPage", "dgintegda", obj,function () {

        $("input[type=switchbutton]").switchbutton({onChange: function(checked){
                var temp=$(this);
                if (checked == true){//选中
                    var obj=new Object();
                    obj.id=$(temp).attr("id");
                    obj.sstatus="已审核";
                    doData(jxmstc.baseURL+"/edit",obj,function (result) {

                        if (result.result<0)
                        {
                            $(temp).attr("checked",false);
                            alert("系统开启失败！");
                        }

                        find();
                    });

                }
                if (checked == false){
                    var obj=new Object();
                    obj.id=$(temp).attr("id");
                    // obj.type=$(temp).attr("adType");
                    obj.sstatus="已审核";
                    if (confirm("是否添加为积分礼品？")) {
                     doData(jxmstc.baseURL+"/edit",obj,function (result) {

                        var mm=new Object();
                        mm.id=obj.id;
                        var stridaa=mm.id;
                        alert("积分礼品添加中。。。。。")
                         firm(stridaa);
                        doData("p_integda/findByPagetwo",mm,function (data) {

                            var fooo=new Object();
                            var comdd=new Object();
                            var aer = parseFloat(data.obj[0].price);
                            comdd=""+data.obj[0].price;
                            var dd=""+parseInt(aer*5);


                            data.obj[0].time = formatDatebox(data.obj[0].time);
                            data.obj[0].price=comdd;
                            data.obj[0].integral= dd;

                            fooo=data.obj[0];

                            doData(jxmstc.baseURL+"/add",fooo,function (fdata) {
                                var daa=new Object();
                                daa.str_id=mm.id;

                                // doData("p_integralgoods/add",daa,function (ddata) {
                                //
                                //
                                //
                                //     find();
                                // })
                                find();

                                // doData("p_integralgoods/findByPagetwo",daa,function (data) {
                                //     alert("sdasdasdasdasdas");
                                //     find();
                                // })

                            })

                        }

                        )
                        if (result.result<0)
                        {

                            $(temp).attr("checked",true);
                            alert("系统关闭失败！");
                        }
                        find();
                     });
                    }
                    else {
                        alert("以取消该操作。")
                        find();
                    }

                }}
        });
    });

}
function getCondition() {
    var obj = new Object();
    appda();
    store=$("#txtName").val();
    obj.condition =store;
    return obj;
}
function getConditiontwo() {
    var obj = new Object();
    obj.condition =  $("#sltWeb").val();
    return obj;
}
function appda() {
    var store="";
    return store;
}

function getCondition2() {
    var obj = new Object();
    appda();
    store=$("#sltWeb").val();
    obj.condition = store;
    return obj;
}

function find() {
    jxmstc.findForEasyui("dgintegda",getCondition());
    finddd();
}
function findtwo() {
    jxmstc.findForEasyui("dgintegda",getConditiontwo());
}

function find2() {
    jxmstc.findForEasyui("dgintegda",getCondition2());
    finddd();
}
function test(){
    find2();

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
    findtwo();
    find();
    jxmstc.browserForEasyuiph(function (obj) {
     //   alert("asdasdasda");
        var toUrl=getRootPath()+"/p_integda/uioperate?type=2&id="+obj.id;
        layer.open({
            title:'店铺礼品信息浏览',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });

    jxmstc.editForEasyuiph(function (obj) {
        var toUrl=getRootPath()+"/p_integda/uioperate?type=1&id="+obj.id;
        layer.open({
            title:'店铺礼品信息修改',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });
    jxmstc.delForEasyuiph("您确定删除当前选中的信息吗？",function (data) {
        if (data.code>0){
            layer.msg("删除成功！");
            jxmstc.findForEasyui("dgintegda",getCondition());
        }else
        {
            layer.msg("删除失败，数据在使用中...！");
        }
    });

    $("#btnAdd").click(function () {
        var toUrl=getRootPath()+"/p_integda/uioperate?type=0";
        layer.open({
            title:'店铺礼品新增',
            type: 2,
            area:["100%","100%"],
            content: toUrl
        });
    });
    $("#btnLoadData").click(function () {
        $("#uploadExcelFile").click();
    });

    $("#btnDeleteAll").click(function () {
        var ids=jxmstc.getEasyuiGridSelectRowsID("dgintegda");
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

    $("#btnDownLoad").click(function () {
        $("#txtHName").val("");
        $("#frmDownloadExcel").form().submit();
    });
});


