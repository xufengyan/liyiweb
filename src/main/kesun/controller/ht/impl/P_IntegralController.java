package kesun.controller.ht.impl;

import kesun.bll.SuperService;
import kesun.bll.ht.impl.p_IntegralServiceImpl;
import kesun.controller.SuperController;
import kesun.controller.ht.IIntegral;
import kesun.entity.AbsSuperObject;
import kesun.entity.ht.Integral;
import kesun.util.JSONAndObject;
import kesun.util.Tool;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("p_integral")
public class P_IntegralController extends SuperController implements IIntegral {

    @Resource(name = "p_bIntegral")
    private p_IntegralServiceImpl bll;

    public SuperService getService() {
        return bll;
    }

    public Map<String, Object> getConditionParam(JSONObject param) {
        if (param==null) return  null;//判断条件是否为空param是页面传递的值
        Map<String,Object> values=new HashMap<String, Object>();
//        if (JSONAndObject.GetJsonStringValue(param,"condition")!=null)
//        {
//            values.put("id", JSONAndObject.GetJsonStringValue(param,"condition"));
//            values.put("s_id",JSONAndObject.GetJsonStringValue(param,"condition"));
//        }
        if (JSONAndObject.GetJsonStringValue(param,"condition")!=null)
        {
            values.put("commname", JSONAndObject.GetJsonStringValue(param,"condition"));
        }
        return values;
    }

    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }

    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new Integral();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }/*查询条件设置*/

    public Map<String, Object> getConditionParam(Map<String, Object> param) {
        if (param == null) return null;//判断条件是否为空param是页面传递的值
        Map<String, Object> values = new HashMap<String, Object>();
        if (param.get("commname")!=null)
            values.put("commname",param.get("commname"));

        return values;
    }

    public Map<String, Object> setFindFilter(Map<String, Object> param) {
        return null;
    }

    @RequestMapping("index")
    public String index() {
        return "ht/p_integral/integralManage";
    }
    @RequestMapping("uioperate")
    public String uiOperate() {
        return "ht/p_integral/integral";
    }

    @RequestMapping("data")
    public String Operate() {
        return "ht/p_integda/integdaManage";
    }
    @RequestMapping("yhq")
    public String indextwo() {
        return "ht/p_discount/discountManage";
    }

}
