<%--
  Created by IntelliJ IDEA.
  User: xufeng
  Date: 18/6/15
  Time: 下午3:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header/init.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<input onclick="dd()" type="checkbox" name="test" value="1"/><span id="money1">44</span>
<input onclick="dd()" type="checkbox" name="test" value="2"/><span id="money2">55</span>
<input onclick="dd()" type="checkbox" name="test" value="3"/><span id="money3">66</span>
<input onclick="dd()" type="checkbox" name="test" value="4"/><span id="money4">77</span>
<input onclick="dd()" type="checkbox" name="test" value="5"/><span id="money5">88</span>
<input  type='button' value='提交' onclick="show()"/>


<a href="#" id="sd">asdasdasdasdasd</a>
</body>


<script>
    
    var groupCheckbox=$("input[name='test']");
    for(i=0;i<groupCheckbox.length;i++){
        if(groupCheckbox[i].checked){
            var val =groupCheckbox[i].value;
            alert(val );
        }
    }


    //将checkbox里面的值放到一个数组里面
    function show(){
        obj = document.getElementsByName("test");
        check_val = [];
        for(k in obj){
            if(obj[k].checked)
                check_val.push(obj[k].value);
        }
        alert(check_val);
        var hf=check_val;
        for (var i=0;i<hf.length;i++){
            alert(hf[i]);
        }
    }

    //获取复选框里面每个对应的值
    function dd(){
        var sum=0;
        var groupCheckbox=$("input[name='test']");
        for(i=0;i<groupCheckbox.length;i++){
            if(groupCheckbox[i].checked){
                sum+=parseInt($("#money"+(i+1)).html());
                var val=groupCheckbox[i].value;
                alert(val);
              $("#sd").html(sum);
            }
        }
    }


</script>
</html>
