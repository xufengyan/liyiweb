package kesun.controller.sj.impl;

import kesun.bll.SuperService;
import kesun.controller.SuperController;
import kesun.entity.AbsSuperObject;
import kesun.entity.sj.jy_Commodity;
import kesun.util.JSONAndObject;
import kesun.util.Tool;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;
import kesun.bll.sj.impl.jy_CommodityServiceImpl;
/****************************
 *
 *@author Xcc😊
 *@CreateTime: 2018年06月15日 13:56 
 *@description 商品
 *@Class: Commodity
 *
 *****************************/
@Controller
@RequestMapping("commodity")
public class Jy_CommodityController extends SuperController {

    @Resource(name = "bCommodity")
    private jy_CommodityServiceImpl bll;

    public SuperService getService() {
        return bll;
    }

    public Map<String, Object> getConditionParam(JSONObject param) {
        if (param==null) return null;
        Map<String,Object> values = new HashMap<String, Object>();
        if (JSONAndObject.GetJsonStringValue(param,"condition")!=null){
            values.put("id",JSONAndObject.GetJsonStringValue(param,"condition"));

        }
        if (JSONAndObject.GetJsonStringValue(param,"s_id")!=null) {
            values.put("commname",JSONAndObject.GetJsonStringValue(param,"condition"));
            values.put("s_id",JSONAndObject.GetJsonStringValue(param,"s_id"));
        }
        return values;
    }

    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new jy_Commodity();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }/*查询条件设置*/

    public Map<String, Object> getConditionParam(Map<String, Object> param) {
        if (param == null) return null;//判断条件是否为空param是页面传递的值
        Map<String,Object> values = new HashMap<String, Object>();
        if (param.get("id") != null){
            values.put("id",param.get("id"));
        }
        System.out.println(values);
        return values;
    }


    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }





}
