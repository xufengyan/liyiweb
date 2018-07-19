package kesun.controller.ht.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.ht.impl.H_OrdersServiceImpl;
import kesun.controller.SuperController;
import kesun.controller.ht.H_IOrders;
import kesun.entity.AbsSuperObject;
import kesun.entity.ht.Orders;
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
@RequestMapping("p_orders")
public class H_OrdersController extends SuperController implements H_IOrders {
    @Resource(name = "p_bOrders")
    private H_OrdersServiceImpl bll;
    public SuperService getService() {
        return bll;
    }

    public Map<String, Object> getConditionParam(JSONObject param) {

            if (param==null) return  null;//判断条件是否为空param是页面传递的值
            Map<String,Object> values=new HashMap<String, Object>();
            if (JSONAndObject.GetJsonStringValue(param,"condition")!=null)
            {

                values.put("storename",JSONAndObject.GetJsonStringValue(param,"condition"));
            }

            if (JSONAndObject.GetJsonStringValue(param,"condition1")!=null)
            {

            values.put("status",JSONAndObject.GetJsonStringValue(param,"condition1"));
            }
            return values;


    }
    @RequestMapping("getme2")
    @ResponseBody
    public Object getme2(@RequestBody(required=true) Map<String,Object> p) {
        List list = bll.getme2((String) p.get("id"));
        Map map = new HashMap();
        map.put("obj", list);
        com.alibaba.fastjson.JSONObject jsonAndObject = JSON.parseObject(JSON.toJSONString(map));
        return jsonAndObject;
    }
    @RequestMapping("getfour")
    @ResponseBody
    public Object getfour(@RequestBody(required=true) Map<String,Object> p) {
        List list = bll.getfour((String)p.get("storename"));
        Map map = new HashMap();
        map.put("obj", list);
        com.alibaba.fastjson.JSONObject jsonObject = JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }

    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }

    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new Orders();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }/*查询条件设置*/
    public Map<String, Object> getConditionParam(Map<String, Object> param) {
        if (param == null) return null;//判断条件是否为空param是页面传递的值
        Map<String, Object> values = new HashMap<String, Object>();
        if (param.get("storename")!=null)
            values.put("storename",param.get("storename"));

        return values;
    }

    public Map<String, Object> setFindFilter(Map<String, Object> param) {
        return null;
    }
    @RequestMapping("index")
    public String index() {
        return "ht/h_orders/ordersManage";
    }

    @RequestMapping("uioperate")
    public String uiOperate() {
        return "ht/h_orders/orders";
    }
}
