
//  地址 
var form = $('#updateform');
    $(document).ready(function () {

        form.bootstrapValidator({
            message: '输入值不合法',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                loginname: {
                    message: '用户名不合法',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        },
                        stringLength: {
                            min: 2,
                            max: 30,
                            message: '请输入2到30个字符'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_\. \u4e00-\u9fa5 ]+$/,
                            message: '用户名只能由字母、数字、点、下划线和汉字组成 '
                        }
                    }
                }
                , email: {
                    validators: {
                        notEmpty: {
                            message: 'email不能为空'
                        },
                        emailAddress: {
                            message: '请输入正确的邮件地址如：123@qq.com'
                        }
                    }
                }, phone: {
                    validators: {
                        notEmpty: {
                            message: '手机号不能为空'
                        },
                        regexp: {
                            regexp: "^([0-9]{11})?$",
                            message: '手机号码格式错误'
                        }
                    }
                }, address: {
                    validators: {
                        notEmpty: {
                            message: '地址不能为空'
                        }, stringLength: {
                            min: 5,
                            max: 60,
                            message: '请输入5到60个字符'
                        }
                    }
                }
            }
        });
    });
    $("#submitBtn").click(function () {
        //进行表单验证
        var bv = form.data('bootstrapValidator');
        bv.validate();
        if (bv.isValid()) {
            console.log(form.serialize());
            //发送ajax请求
            $.ajax({
                url: 'validator.json',
                async: false,//同步，会阻塞操作
                type: 'GET',//PUT DELETE POST
                data: form.serialize(),
                complete: function (msg) {
                    console.log('完成了');
                },
                success: function (result) {
                    console.log(result);
                    if (result) {
                        window.location.reload();
                    } else {
                        $("#returnMessage").hide().html('<label class="label label-danger">修改失败!</label>').show(300);
                    }
                }, error: function () {
                    $("#returnMessage").hide().html('<label class="label label-danger">修改失败!</label>').show(300);
                }
            })
        }
    });


//<!-- 联动 --> 

    $(function () {
        var html = "";
        $("#input_city").append(html); $("#input_area").append(html);
        $.each(pdata,function(idx,item){
            if (parseInt(item.level) == 0) {
                html += "<option value='" + item.names + "' exid='" + item.code + "'>" + item.names + "</option>";
            }
        });
        $("#input_province").append(html);
        $("#input_province").change(function(){
            if ($(this).val() == "") return;
            $("#input_city option").remove(); $("#input_area option").remove();
            var code = $(this).find("option:selected").attr("exid"); code = code.substring(0,2);
            var html = "<option value=''>--请选择--</option>"; $("#input_area").append(html);
            $.each(pdata,function(idx,item){
                if (parseInt(item.level) == 1 && code == item.code.substring(0,2)) {
                    html += "<option value='" + item.names + "' exid='" + item.code + "'>" + item.names + "</option>";
                }
            });
            $("#input_city").append(html);
        });
        $("#input_city").change(function(){
            if ($(this).val() == "") return;
            $("#input_area option").remove();
            var code = $(this).find("option:selected").attr("exid"); code = code.substring(0,4);
            var html = "<option value=''>--请选择--</option>";
            $.each(pdata,function(idx,item){
                if (parseInt(item.level) == 2 && code == item.code.substring(0,4)) {
                    html += "<option value='" + item.names + "' exid='" + item.code + "'>" + item.names + "</option>";
                }
            });
            $("#input_area").append(html);
        });
});
