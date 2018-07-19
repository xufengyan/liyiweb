package kesun.controller.ht.impl;

import kesun.bll.SuperService;
import kesun.bll.ht.impl.p_discountServiceImpl;
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
@RequestMapping("p_discount")
public class p_discountController extends SuperController  {

    @Resource(name = "p_bdiscount")
    private p_discountServiceImpl bll;



    public SuperService getService() {
        return bll;
    }

    public Map<String, Object> getConditionParam(JSONObject param) {
        if (param==null) return  null;//判断条件是否为空param是页面传递的值
        Map<String,Object> values=new HashMap<String, Object>();
        if (JSONAndObject.GetJsonStringValue(param,"condition")!=null)
        {
            //values.put("id", JSONAndObject.GetJsonStringValue(param,"condition"));
            values.put("title",JSONAndObject.GetJsonStringValue(param,"condition"));
        }
        return values;
    }
    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new Scold();
            model.setId(Tool.CreateID());

        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }
    /*查询条件设置*/
    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }
    @RequestMapping("index")
    public String index() {
        return "ht/p_discount/discountManage";
    }
    @RequestMapping("uioperate")
    public String uiOperate() {
        return "ht/p_discount/discount";
    }
    @RequestMapping("yhq")
    public String indextwo() {
        return "ht/p_discount/discountManage";
    }

}
