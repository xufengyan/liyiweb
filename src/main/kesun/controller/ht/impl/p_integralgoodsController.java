package kesun.controller.ht.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.ht.impl.p_integralgoodsServiceImpl;
import kesun.controller.SuperController;
import kesun.entity.AbsSuperObject;
import kesun.entity.ht.i_integralgoods;
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
@RequestMapping("p_integralgoods")
public class p_integralgoodsController extends SuperController{
    @Resource(name = "p_bintegdralgoods")
    private p_integralgoodsServiceImpl bll;


    public SuperService getService() {
        return bll;
    }

    public Map<String, Object> getConditionParam(JSONObject param) {
        if (param==null) return  null;//判断条件是否为空param是页面传递的值
        Map<String,Object> values=new HashMap<String, Object>();

        if (JSONAndObject.GetJsonStringValue(param,"condition")!=null)
        {
            values.put("dis_id", JSONAndObject.GetJsonStringValue(param,"condition"));
        }
        if (JSONAndObject.GetJsonStringValue(param,"str_id")!=null)
        {
            values.put("str_id", JSONAndObject.GetJsonStringValue(param,"str_id"));
        }
        return values;
    }

    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }

    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new i_integralgoods();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }/*查询条件设置*/
    @RequestMapping("findByPagetwo")
    @ResponseBody
    public Object findByPagetwo(@RequestBody(required=true) Map<String,Object> p){
        List list= bll.findByPagetwo((String)p.get("str_id"));
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject= JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }

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




}
