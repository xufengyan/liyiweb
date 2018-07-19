/**
 * Created by wph-pc on 2017/10/10.
 */
var jxmstc=new KBOperate("p_dataStatics");
function getCondition() {
    var obj = new Object();
    return obj;
}
function find() {

       jxmstc.findForEasyui("container",getCondition());

    }

layui.use(['layer'],function () {
    var layer = layui.layer;
    find();
})


function  find2() {
    $.ajax({

        type: "post",
        async: true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url: "/web/ht/p_dataStatics/find2",//请求发送到TestServlet处
        data: {},
        dataType: "script",
        success: function (result) {
            alert("ajax成功来了");
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            if (result) {

                for (var i = 0; i < result.length; i++) {
                    num1.push(result[i].);    //挨个取出用户并填入库存数组
                }
                for (var i = 0; i < result.length; i++) {
                    num2.push(result[i].sales);    //挨个取出店铺并填入销量数组
                }
                for (var i = 0; i < result.length; i++) {
                    num3.push(result[i].stock / 10);    //挨个算出押金并填入平均销量数组
                }
                myChart.hideLoading();    //隐藏加载动画
                myChart.setOption({        //加载数据图表
                    // xAxis: {
                    //     data: names
                    // },
                    series: [{
                        // 根据名字对应到相应的系列
                        name: '库存',
                        data: num1
                    }, {
                        // 根据名字对应到相应的系列
                        name: '销量',
                        data: num2
                    }, {
                        // 根据名字对应到相应的系列
                        name: '平均销量',
                        data: num3
                    }

                    ]
                });

            }

        },
        error: function (errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!" + errorMsg);
            myChart.hideLoading();
        }
    })

}

