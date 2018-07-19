/**
 * Created by wph-pc on 2017/10/10.
 */
var jxmstc = new KBOperate("p_store");

function getCondition(app) {
    var obj = new Object();
    obj.condition = $('#txtName').val();
    obj.approval = app;
//这里可以给obj添加属性,给它赋页面输入的值
    return obj;
}

function getCondition2(app) {
    var obj = new Object();
    obj.condition  = $('#txtName2').val();
    obj.approval = app;
//这里可以给obj添加属性,给它赋页面输入的值
    return obj;
}

function getCondition3(app) {
    var obj = new Object();
    obj.condition  = $('#txtName3').val();
    obj.approval = app;
//这里可以给obj添加属性,给它赋页面输入的值
    return obj;
}

function find(app) {
    var obj = new Object();
    if (app == "已审核") {
        obj.condition = $('#txtName3').val();
        obj.approval = app;
        findByPage(jxmstc.baseURL + "/findByPage", "dgShipped", getCondition3(app), function () {
            $("input[type=switchbutton]").switchbutton({
                onChange: function (checked) {
                    var temp = $(this);
                    if (checked == true) {//选中
                        var obj = new Object();
                        obj.id = $(temp).attr("id");
                        obj.type = $(temp).attr("adType");
                        obj.status = "正常";
                        obj.approval = app;
                        doData(jxmstc.baseURL + "/edit", obj, function (result) {
                            if (result.result < 0) {
                                $(temp).attr("checked", false);
                                alert("系统开启失败！");
                            }
                        });

                    }
                    if (checked == false) {
                        var obj = new Object();
                        obj.id = $(temp).attr("id");
                        obj.type = $(temp).attr("adType");
                        obj.status = "关闭";
                        obj.approval = app;
                        doData(jxmstc.baseURL + "/edit", obj, function (result) {
                            if (result.result < 0) {
                                $(temp).attr("checked", true);
                                alert("系统关闭失败！");
                            }
                        });
                    }
                }
            });
        });
    } else if (app == "待审核") {
        obj.condition = $('#txtName2').val();
        obj.approval = app;
        findByPage(jxmstc.baseURL + "/findByPage", "dgUnShipped", getCondition2(app), function () {
            $("input[type=switchbutton]").switchbutton({
                onChange: function (checked) {
                    var temp = $(this);
                    if (checked == true) {//选中
                        var obj = new Object();
                        obj.id = $(temp).attr("id");
                        obj.type = $(temp).attr("adType");
                        obj.status = "正常";
                        obj.approval = app;
                        doData(jxmstc.baseURL + "/edit", obj, function (result) {
                            if (result.result < 0) {
                                $(temp).attr("checked", false);
                                alert("系统开启失败！");
                            }
                        });

                    }
                    if (checked == false) {
                        var obj = new Object();
                        obj.id = $(temp).attr("id");
                        obj.type = $(temp).attr("adType");
                        obj.status = "关闭";
                        obj.approval = app;
                        doData(jxmstc.baseURL + "/edit", obj, function (result) {
                            if (result.result < 0) {
                                $(temp).attr("checked", true);
                                alert("系统关闭失败！");
                            }
                        });
                    }
                }
            });
        });

    } else {
        obj.condition = $('#txtName').val();
        obj.approval = "";
        findByPage(jxmstc.baseURL + "/findByPage", "dgStore", getCondition(app), function () {
            $("input[type=switchbutton]").switchbutton({
                onChange: function (checked) {
                    var temp = $(this);
                    if (checked == true) {//选中
                        var obj = new Object();
                        obj.id = $(temp).attr("id");
                        obj.type = $(temp).attr("adType");
                        obj.status = "正常";
                        obj.approval = app;
                        doData(jxmstc.baseURL + "/edit", obj, function (result) {
                            if (result.result < 0) {
                                $(temp).attr("checked", false);
                                alert("系统开启失败！");
                            }
                        });

                    }
                    if (checked == false) {
                        var obj = new Object();
                        obj.id = $(temp).attr("id");
                        obj.type = $(temp).attr("adType");
                        obj.status = "关闭";
                        obj.approval = app;
                        doData(jxmstc.baseURL + "/edit", obj, function (result) {
                            if (result.result < 0) {
                                $(temp).attr("checked", true);
                                alert("系统关闭失败！");
                            }
                        });
                    }
                }
            });
        });
    }
}

function formatStatus(value, rowData, rowIndex) {
    if (value == "正常")
        return "<input type='switchbutton' id='" + rowData.id + "' adType='" + rowData.type + "' class='easyui-switchbutton' checked>";
    else
        return "<input type='switchbutton' id='" + rowData.id + "' adType='" + rowData.type + "' class='easyui-switchbutton'>";
}

function doUploadExcel() {
    doUploadFile("uploadfile", "frmUploadExcel", null, function (path) {
        jxmstc.do("loadData", path, function (data) {
//编写上传的前后台代码

        });
    });
}

layui.use(['layer', 'element'], function () {
    var layer = layui.layer,
        $ = layui.jquery,
        element = layui.element;

    find();
    jxmstc.browserForEasyui2(function (obj) {
        var toUrl = getRootPath() + "/p_store/uioperate?type=2&id=" + obj.id;
        layer.open({
            title: '店铺信息浏览',
            type: 2,
            area: ["100%", "100%"],
            content: toUrl
        });
    });

    jxmstc.editForEasyui2(function (obj) {
        var toUrl = getRootPath() + "/p_store/uioperate?type=1&id=" + obj.id;
        layer.open({
            title: '店铺信息修改',
            type: 2,
            area: ["100%", "100%"],
            content: toUrl
        });
    });
    jxmstc.delForEasyui("您确定删除当前选中的信息吗？", function (data) {
        if (data.code > 0) {
            layer.msg("删除成功！");
            jxmstc.findForEasyui("dgStore", getCondition());
        } else {
            layer.msg("删除失败，数据在使用中...！");
        }
    });
    $("#btnAdd").click(function () {
        var toUrl = getRootPath() + "/p_store/uioperate?type=0";
        layer.open({
            title: '店铺信息新增',
            type: 2,
            area: ["100%", "100%"],
            content: toUrl
        });
    });
    $("#btnLoadData").click(function () {
        $("#uploadExcelFile").click();
    });
    $("#btnDeleteAll").click(function () {
        var ids = jxmstc.getEasyuiGridSelectRowsID("dgStore");
        if (ids == "") return;
        var flag = confirm("删除后数据不可回复，您确定删除选中的店铺信息吗？");
        if (flag == false) return;
        var obj = new Object();
        obj.ids = ids;
        jxmstc.do("deleteAll", obj, function (data) {
            if (data.code > 0) {
                layer.msg("您选中的店铺信息已经删除！");
                find();
            }
            else {
                layer.msg("您选中的店铺信息删除失败，错误代码：" + data.code);
            }
        });
    });
});

function txtChange() {
    var app = "";
    find(app);
}

function txtChange2() {
    var app = "待审核";
    find(app);
}

function txtChange3() {
    var app = "已审核";
    find(app);
}

$("#btnFind").click(function () {
    var app = "";
    find(app);
});
$("#btnFind2").click(function () {
    var app = "待审核";

    find(app);
});
$("#btnFind3").click(function () {
    var app = "已审核";
    find(app);
});

function stored() {
    app = "";
    find(app);
    location.reload();
    parent.find();

}

function unshipped() {
    app = "待审核";
    find(app);


}

function shipped() {
    app = "已审核";
    find(app);

}

//自动生成按钮
function format(value, rowData, rowIndex) {
    var str =
        "<a class='layui-btn layui-btn-normal layui-btn-mini' href='#' type='browser' valueId='" + rowData.id + "' name='" + rowData.name + "' newtype='" + rowData.type + "'>浏览</a>" +
        "<a class='layui-btn layui-btn-warm layui-btn-mini' href='#' type='edit' valueId='" + rowData.id + "' name='" + rowData.name + "' newtype='" + rowData.type + "'>审核</a>";
    return str;
};
//自动生成按钮
function format2(value, rowData, rowIndex) {
    var str =
        "<a class='layui-btn layui-btn-normal layui-btn-mini' href='#' type='browser' valueId='" + rowData.id + "' name='" + rowData.name + "' newtype='" + rowData.type + "'>浏览</a>";
    return str;
};
KBOperate.prototype.browserForEasyui2 = function (callback) {
    var temp = this;
    $("a[type=browser]").live("click", function () {
        var obj = new Object();
        obj.id = $(this).attr("valueId");
        obj.name = $(this).attr("name");
        obj.button = this;
        callback(obj);
    });
}
KBOperate.prototype.editForEasyui2 = function (callback) {
    $("a[type=edit]").live("click", function () {
        var obj = new Object();
        obj.id = $(this).attr("valueId");
        obj.name = $(this).attr("name");
        obj.button = this;
        if (obj.id == null || obj.id.trim() == "") {
            callback(null);//参数不符合条件
            return;
        }
        else
            callback(obj);
    });
}
