package kesun.controller.ht.impl;

import kesun.bll.SuperService;
import kesun.bll.ht.impl.p_categoryServiceImpl;
import kesun.controller.SuperController;
import kesun.entity.AbsSuperObject;
import kesun.entity.ht.Scold;
import kesun.util.JSONAndObject;
import kesun.util.Tool;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("p_category")
public class p_categoryController extends SuperController {


    @Resource(name = "p_bllcategory")
    private p_categoryServiceImpl bll;


    public SuperService getService() {
        return bll;
    }

    public Map<String, Object> getConditionParam(JSONObject param) {
        if (param==null) return  null;//判断条件是否为空param是页面传递的值
        Map<String,Object> values=new HashMap<String, Object>();

        if (JSONAndObject.GetJsonStringValue(param,"condition")!=null)
        {
            values.put("name", JSONAndObject.GetJsonStringValue(param,"condition"));
        }
        return values;
    }

    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }

    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new Scold();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }/*查询条件设置*/


    public Map<String, Object> setFindFilter(Map<String, Object> param) {
        return null;
    }


}
