package kesun.controller.liyi.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.liyi.impl.sjyh_OrderService;
import kesun.controller.SuperController;
import kesun.controller.liyi.Isjyh_Order;
import kesun.util.JSONAndObject;
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
@RequestMapping("sjyh_order")
public class sjyh_OrderController extends SuperController implements Isjyh_Order {

    @Resource(name = "bsjyh_order")
    private sjyh_OrderService bll;



    public SuperService getService() {
        return bll;
    }

    public Map<String, Object> getConditionParam(JSONObject param) {
        if (param==null) return  null;//判断条件是否为空param是页面传递的值
        Map<String,Object> values=new HashMap<String, Object>();
        if (JSONAndObject.GetJsonStringValue(param,"condition")!=null)
        {
            values.put("id", JSONAndObject.GetJsonStringValue(param,"condition"));
            values.put("name",JSONAndObject.GetJsonStringValue(param,"condition"));
        }
        return values;
    }



    @RequestMapping("getstatus")
    @ResponseBody
    public Object getstatus(@RequestBody(required=true) Map<String,Object> p){
        String u_id=""+p.get("id");
        List list=bll.getstatus(u_id);
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }
    @RequestMapping("getstatus2")
    @ResponseBody
    public Object getstatus2(@RequestBody(required=true) Map<String,Object> p){
        String u_id=""+p.get("id");
        List list=bll.getstatus2(u_id);
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }
    @RequestMapping("fandorder")
    @ResponseBody
    public Object fandorder(@RequestBody(required=true) Map<String,Object> p){
        String u_id=""+p.get("id");
        List list=bll.fandorder(u_id);
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }
    @RequestMapping("fandbyPageorder")
    @ResponseBody
    public Object fandbyPageorder(@RequestBody(required=true) Map<String,Object> p){
        Map map=p;
        List list=bll.fandbyPageorder(map);
        int total=bll.getOrderCount(map);
        Map listmap=new HashMap();

        listmap.put("obj",list);
        listmap.put("total",total);

        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(listmap));
        return jsonObject;
    }

    @RequestMapping("fandbyPageorder2")
    @ResponseBody
    public Object fandbyPageorder2(@RequestBody(required=true) Map<String,Object> p){
        Map map=p;
        List list=bll.fandbyPageorder2(map);
        int total=bll.getOrderCount2(map);
        Map listmap=new HashMap();

        listmap.put("obj",list);
        listmap.put("total",total);

        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(listmap));
        return jsonObject;
    }


    @RequestMapping("refundPageorder")
    @ResponseBody
    public Object refundPageorder(@RequestBody(required=true) Map<String,Object> p) {
        Map map = p;
        List list = bll.refundPageorder(map);
        int total=bll.getRefundCount(map);
        Map listmap=new HashMap();
        listmap.put("obj",list);
        listmap.put("total",total);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(listmap));
        return jsonObject;
    }

    @RequestMapping("ordersviewgetMe")
    @ResponseBody
    public Object ordersviewgetMe(@RequestBody(required=true) Map<String,Object> p) {

        String id=""+p.get("id");
        List list=bll.ordersviewgetMe(id);
        Map map =new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;

    }

    @RequestMapping("ordersviewgetMe2")
    @ResponseBody
    public Object ordersviewgetMe2(@RequestBody(required=true) Map<String,Object> p) {

        String id=""+p.get("id");
        List list=bll.ordersviewgetMe2(id);
        Map map =new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;

    }



    @RequestMapping("ordergetMe2")
    @ResponseBody
    public Object ordergetMe2(@RequestBody(required=true) Map<String,Object> p) {
    Map map=p;
    List list=bll.ordergetMe2(map);
    Map listmap=new HashMap();
    listmap.put("obj",list);

    com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(listmap));

    return jsonObject;
    }



        public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }
}
