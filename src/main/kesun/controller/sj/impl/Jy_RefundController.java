package kesun.controller.sj.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.sj.impl.jy_RefundServiceImpl;
import kesun.controller.ControlTool;
import kesun.controller.SuperController;
import kesun.controller.sj.jy_IRefund;
import kesun.entity.AbsSuperObject;
import kesun.entity.sj.jy_Order;
import kesun.util.JSONAndObject;
import kesun.util.Tool;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/****************************
 *
 *@author Xcc😊
 *@CreateTime: 2018年06月07日 19:47 
 *@description 退款管理
 *@Class: RefundController
 *
 *****************************/

@Controller
@RequestMapping("Refund")
public class Jy_RefundController extends SuperController implements jy_IRefund {

    @Resource(name = "bRefund")
    private jy_RefundServiceImpl bll;

    public SuperService getService() {
        return bll;
    }

    public Map<String, Object> getConditionParam(JSONObject param) {
        if (param==null) return  null;//判断条件是否为空param是页面传递的值
        Map<String,Object> values=new HashMap<String, Object>();
        if (JSONAndObject.GetJsonStringValue(param,"condition")!=null)
        {
           // values.put("id", JSONAndObject.GetJsonStringValue(param,"condition"));

            values.put("status",JSONAndObject.GetJsonStringValue(param,"condition"));
        }

        if (JSONAndObject.GetJsonStringValue(param,"s_id")!=null)
        {
            values.put("s_id", JSONAndObject.GetJsonStringValue(param,"s_id"));

        }

        if (JSONAndObject.GetJsonStringValue(param,"ordertime")!=null)
        {
            values.put("ordertime", JSONAndObject.GetJsonStringValue(param,"ordertime"));

        }

        return values;
    }


    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new jy_Order();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;

    }/*查询条件设置*/

    public Map<String, Object> getConditionParam(Map<String, Object> param) {
        if (param == null) return null;//判断条件是否为空param是页面传递的值
        Map<String,Object> values = new HashMap<String, Object>();
        if (param.get("orders_id") != null){
            values.put("orders_id",param.get("orders_id"));
        }
        System.out.println(values);
        return values;
    }


    @RequestMapping("getrefund")
    @ResponseBody
    public Object getme2(@RequestBody(required=true) Map<String,Object> p){
        List list=bll.getrefund((String)p.get("id"));
        Map map =new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonAndObject=JSON.parseObject(JSON.toJSONString(map));
        return  jsonAndObject;
    }


    @RequestMapping("modify")
    @ResponseBody
    public Object modify(HttpServletRequest request, HttpServletResponse response){

    JSONObject param= ControlTool.GetRequestJSON(request,response);//获取页面JSON对象参数
    int value = bll.modify(param.getString("id"));

     return value;
    }

    @RequestMapping("refuse")
    @ResponseBody
    public Object refuse(HttpServletRequest request, HttpServletResponse response){
        JSONObject param= ControlTool.GetRequestJSON(request,response);//获取页面JSON对象参数
        int value = bll.modify(param.getString("id"));

        return value;
    }


    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }


    @RequestMapping("refund")
    public String refund(){
        return "/sj/jy_Refund";
    }

    @RequestMapping("find")
    public String find(){
        return "/sj/jy_RefundManage";
    }

}
