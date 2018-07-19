package kesun.controller.ht.impl;

import kesun.bll.SuperService;
import kesun.bll.ht.impl.CommodityServiceImpl;
import kesun.controller.KesunBusinessController;
import kesun.controller.SuperController;
import kesun.controller.ht.ICommodity;
import kesun.entity.AbsSuperObject;
import kesun.entity.ht.Commodity;
import kesun.util.JSONAndObject;
import kesun.util.Tool;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by xufeng on 2018/4/14.
 */
@Controller
@RequestMapping("p_commodity")
public class CommodityController extends SuperController implements ICommodity {
    @Resource(name ="bllCommodity")
    private CommodityServiceImpl commodityService;


    public SuperService getService() {
        return commodityService;
    }

    public Map<String, Object> getConditionParam(JSONObject param) {
        if (param==null) return  null;//判断条件是否为空param是页面传递的值
        Map<String,Object> values=new HashMap<String, Object>();
        if (JSONAndObject.GetJsonStringValue(param,"condition")!=null)
        {

            values.put("commname",JSONAndObject.GetJsonStringValue(param,"condition"));
        }

        if (JSONAndObject.GetJsonStringValue(param,"sstatus")!=null)
        {
            values.put("sstatus",JSONAndObject.GetJsonStringValue(param,"sstatus"));
        }

        return values;
    }

    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }



    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new Commodity();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }

    @RequestMapping("index")
    public String index(){
        return "ht/commodity/commodityManage";
    }

    @RequestMapping("uioperate")
    public String uioperate(){
        return "ht/commodity/commodity";
}

}
