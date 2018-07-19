package kesun.controller.sj.impl;

import kesun.bll.SuperService;
import kesun.bll.sj.impl.jy_discountService;
import kesun.controller.SuperController;
import kesun.controller.sj.jy_discount;
import kesun.entity.AbsSuperObject;
import kesun.entity.sj.jy2_discount;
import kesun.util.JSONAndObject;
import kesun.util.Tool;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by xufeng on 2018/4/14.
 */
@Controller
@RequestMapping("discount")
public class Jy_discountController extends SuperController implements jy_discount {
    @Resource(name ="bsj_discount")
    private jy_discountService discountService;
    String id;

    public SuperService getService() {
        return discountService;
    }

    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new jy2_discount();
            (model).setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }


    public Map<String, Object> getConditionParam(JSONObject param) {
        if (param==null) return  null;//判断条件是否为空param是页面传递的值
        Map<String,Object> values=new HashMap<String, Object>();

        if (JSONAndObject.GetJsonStringValue(param,"condition")!=null)
        {
            values.put("title",JSONAndObject.GetJsonStringValue(param,"condition"));

        }
        if (JSONAndObject.GetJsonStringValue(param,"s_id")!=null)
        {
            values.put("s_id",JSONAndObject.GetJsonStringValue(param,"s_id"));

        }

        System.out.println("ssssssssss："+param);
        return values;
    }

    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }
    @RequestMapping("index")
    public String index(){
        return "sj/jy2_discount";
    }
    @RequestMapping("discount")
    public String discount(){
        return "sj/jy2_discountManage";
    }
    @RequestMapping("uioperate")
    public String uioperate(){
        return "sj/jy2_discount2";
    }

}
