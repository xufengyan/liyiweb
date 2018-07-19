<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init_layui.jsp"%>

<html>
<head>
  <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>优惠活动</title>

</head>

<body style="background-color: #f6f8fa;">
<div class="layui-tab layui-tab-card">
    <ul class="layui-tab-title">
        <li class="layui-this">首页</li>
        <li>优惠券管理</li>
    </ul>
    <div class="layui-tab-content" style="height: auto;">
        <div class="layui-tab-item layui-show">
            <div id="center-title" class="layui-col-lg9" style="margin-left:38px;margin-top: 60px;">
            <p style="padding:10px 20px 10px 10px;font-size:18px;color: #E2265C;">优惠活动</p>
 
      <form class="layui-form" id="ff" style="width: 80%;margin:20px 0px 50px 0px;">
          <input type="hidden" name="id"/>
         <div class="layui-form-item" hidden>
          <label class="layui-form-label">店铺编号:</label>
          <div class="layui-input-block">
             <input type="text" name="s_id" id="sid" autocomplete="off" placeholder="请输入店铺编号" class="layui-input">
          </div>
        </div>
        <div class="layui-form-item">
          <label class="layui-form-label">活动名称:</label>
           <div class="layui-input-block">
             <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入活动名称" class="layui-input">
          </div>
     </div>
  
  
  <div class="layui-form-item">
  <div class="layui-inline">
    <label class="layui-form-label">活动时间:</label>
    <div class="layui-input-inline" style="width: 100px;">
 <input type="text" name="begining" id="begining" required lay-verify="date" placeholder="活动开始" autocomplete="off" class="layui-input"/>
    </div>
    <div class="layui-form-mid">-</div>
    <div class="layui-input-inline" style="width: 100px;">
 <input type="text" name="ending" id="ending" required lay-verify="date" placeholder="活动结束" autocomplete="off" class="layui-input"/>
    </div>
  </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">活动级别:</label>
    <div class="layui-input-block">
      <input type="radio" name="rank" value="店铺级" title="店铺级" checked>
    </div>
  </div>

  <div class="layui-form-item">
    <label class="layui-form-label">使用条件:</label>
    <div class="layui-input-block">
      <input type="radio" name="term" value="满元" title="满元" checked>
    </div>
  </div>

  <div class="layui-form-item">
    <label class="layui-form-label">发放权益:</label>
    <div class="layui-input-block">
      <input type="radio" name="equity" value="购买时" title="购买时" checked>
    </div>
  </div>

  <div class="layui-form-item">
    <label class="layui-form-label">指定范围:</label>
    <div class="layui-input-block">
      <input type="radio" name="ranges" value="全店" title="全店" checked>
      <input type="radio" name="ranges" value="指定商品" title="指定商品">
    </div>
  </div>

  <div class="layui-form-item">
    <label class="layui-form-label">优惠条件:</label>
     <div class="layui-input-block">
      <div class="layui-card">
        <div class="layui-card-header" style="background-color:gainsboro;border:1px solid gainsboro;">
    <label>购买至</label>
      <input type="number"  name="require1" required lay-verify="required|number" style="height: 30px;width: 70px;"/>
      元
         </div>
      </div>
     </div>
  </div>

     <div class="layui-form-item">
         <label class="layui-form-label">优惠金额:</label>
    	 <div class="layui-input-block" >
    	  	<input type="text" name="amount" required lay-verify="required|number" style="width: 50px;border-color:gainsboro;margin-top:7px"/>&nbsp;元</p>

         </div>
        </div>

     <div class="layui-form-item" id="dButton">
         <div class="layui-input-block">
             <button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
             <button type="reset" class="layui-btn layui-btn-primary">重置</button>
         </div>
     </div>
</form>

      </div>
        </div>
        <div class="layui-tab-item" style="height: auto">
            <iframe src="<%=basePath%>/discount/discount" id="myiframe" name="myFrameName" width="100%" scrolling="yes" wmode="window" frameborder="0" marginwidth="0" marginheight="0"></iframe>
        </div>
    </div>
</div>



<%-------------------------------------script代码------------------------------------------%>
<script>



layui.use(['form', 'layedit', 'laydate','element'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate
      ,element=layui.element;
    laydate.render({
        elem: '#begining'
    });
    laydate.render({
        elem: '#ending'
    });



});
     var kb=new KBLayUI("discount");
        kb.doFormLayui("formDemo",function () {
            var obj = new Object();
            var sid=${sessionScope.get("users_id")};
            obj.s_id=sid.toString();
            $("#sid").val(obj.s_id);
            var obj=serializeArrayToObject("ff");

             kb.add2(obj,function (returnBack) {});

            find();
        });


</script>
<script>
    //iframe自适应
    $(document).ready(function(){
        $("#myiframe").load(function(){
            $(this).height(0); //用于每次刷新时控制IFRAME高度初始化
            var height = $(this).contents().height() + 10;
            $(this).height( height < 669 ? 669 : height );
        });
    });
</script>
</body>
</html>