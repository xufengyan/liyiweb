package kesun.controller.liyi.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.liyi.impl.sj_DiscountService;
import kesun.controller.SuperController;
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
@RequestMapping("sj_discount")
public class sj_DiscountController extends SuperController {

    @Resource(name = "bsjb_discount")
    private sj_DiscountService bll;


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

    @RequestMapping("getdiscountview")
    @ResponseBody
    public Object getdiscountview(@RequestBody(required=true) Map<String,Object> p){
        String u_id=""+p.get("u_id");
        String status=""+p.get("status");
        List list =bll.getdiscountview(u_id,status);
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }


    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }
}
