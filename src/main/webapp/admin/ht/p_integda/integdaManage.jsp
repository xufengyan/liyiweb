<%--
  Created by IntelliJ IDEA.
  User: 鹏
  Date: 2018-05-21
  Time: 下午 3:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init.jsp"%>
<html>
<head>
    <title>Title</title>
    <style>
        #xia-la{
            height: 37px;
        }
        td{
            height: 35px;
            margin-top: 0px;
        }
        #dgintegda{
            height: 200px;
        }
        #tb{
            margin-inside: 37px;
        }
        .datagrid-view{
            height: 495px;
        }
    </style>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0">
    <link href="<%=basePath%>/plugins/layui/css/layui.css" rel="stylesheet" />
    <script src="<%=basePath%>/plugins/layui/layui.js"></script>
</head>
<body>
<div class="layui-form-item" id="xia-la" style="height: 37px" >
    <label class="layui-form-label">选择店铺：</label>
    <div class="layui-input-block"style="width:500px;">
        <select name="storename" onchange="test()" id="sltWeb"   style="width: 200px;height: 37px"></select>
    </div>
</div>

<div class="layui-table-tool" id="tb">

    <input type="text"  style="width: 300px; height: 28px;" name="name" id="txtName"  required placeholder="请输入需要查找店铺名"   autocomplete="off"/>
    <div class="layui-btn-group">
        <button class="layui-btn layui-btn-small" id="btnFind">
            <i class="layui-icon">&#xe615;</i> 搜索
        </button>

    </div>
</div>

<table class="easyui-datagrid" title="积分礼品新增"  id="dgintegda"
       data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#tb'">
    <thead>
    <tr>
        <th data-options="field:'id1',checkbox:true"></th>
        <th data-options="field:'id',width:80">商品编号：</th>
        <th data-options="field:'commname',width:80">商品名字：</th>
        <th data-options="field:'storename',width:80">店铺名字：</th>
        <th data-options="field:'image1',width:90" hidden="hidden">商品图片：</th>
        <th data-options="field:'image2',width:90" hidden="hidden">商品图片2：</th>
        <th data-options="field:'image3',width:90" hidden="hidden">商品图片3：</th>
        <th data-options="field:'image4',width:90" hidden="hidden">商品图片4：</th>
        <th data-options="field:'status',width:70">状态:</th>
        <th data-options="field:'sstatus',width:70,formatter:formatStatus">积分礼品添加:</th>
        <th data-options="field:'ids',formatter:formone" width="120"
            align="center">操作</th>
    </tr>
    </thead>
</table>


<script>
    var model=new Object();
    $(function () {
        /*完成站点加载，如果是不是新增，要实现数据选中*/
        model.storename="";
        doData("p_zijin/getfour",model,function (data) {

            if (data!=null && data.obj!=undefined && data.obj!=null)
                for(var i=0;i<data.obj.length;i++)
                {
                    $("#sltWeb").append("<option value='"+data.obj[i].storename+"'>"+data.obj[i].storename+"</option>"+"}");
                }
        });
    });

</script>

<script src="<%=basePath%>/script/business/ht/p_integda.js"></script>


</body>
</html>
