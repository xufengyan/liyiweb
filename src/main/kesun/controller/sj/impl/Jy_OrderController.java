package kesun.controller.sj.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.sj.jy_IBusiness;
import kesun.bll.sj.impl.jy_BusinessServiceImpl;
import kesun.controller.SuperController;
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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("business")
public class Jy_OrderController extends SuperController implements jy_IBusiness {

    @Resource(name = "bBusiness")
    private jy_BusinessServiceImpl bll;

    public SuperService getService() {
        return bll;
    }


    public Map<String, Object> getConditionParam(JSONObject param) {
        if (param==null) return  null;//判断条件是否为空param是页面传递的值
        Map<String,Object> values=new HashMap<String, Object>();
        if (JSONAndObject.GetJsonStringValue(param,"condition")!=null)
        {
            values.put("id", JSONAndObject.GetJsonStringValue(param,"condition"));
            values.put("status",JSONAndObject.GetJsonStringValue(param,"condition"));
        }

        if (JSONAndObject.GetJsonStringValue(param,"s_id")!=null)
        {
            values.put("s_id", JSONAndObject.GetJsonStringValue(param,"s_id"));

        }

        if (JSONAndObject.GetJsonStringValue(param,"ordertime")!=null)
        {
            values.put("ordertime",JSONAndObject.GetJsonStringValue(param,"ordertime"));

        }

        if (JSONAndObject.GetJsonStringValue(param,"orders_id")!=null)
        {
            values.put("orders_id", JSONAndObject.GetJsonStringValue(param,"orders_id"));

        }

        return values;
    }


    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
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

    @RequestMapping("getme2")
    @ResponseBody
    public Object getme2(@RequestBody(required=true) Map<String,Object> p){
        List list=bll.getme2((String)p.get("id"));
        Map map =new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonAndObject=JSON.parseObject(JSON.toJSONString(map));
        return  jsonAndObject;
    }



    public Map<String, Object> setFindFilter(Map<String, Object> param) {
        return null;
    }

    @RequestMapping("index")
    public String index(){
        return "sj/sj_index";
    }

    @RequestMapping("browsing")
    public String browsing(){
        return "sj/jy_Order";
    }

    @RequestMapping("infor")
    public String information(){
        return "sj/jy_OrderManagement";
    }

    @RequestMapping("ship")
    public String ship(){

        return "sj/jy_Ship";
    }

    @RequestMapping("allOrders")
    public String allOrders(){
        return "sj/allOrders";
    }

    @RequestMapping("haveBeen")
    public String haveBeen(){
        return "sj/haveBeen";
    }

    @RequestMapping("unShipped")
    public String unshipped(){
        return "sj/jy_unShipped";
    }

    @RequestMapping("shipped")
    public String shipped(){
        return "sj/jy_shipped";
    }

}
