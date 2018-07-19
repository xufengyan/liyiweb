package kesun.controller.ht.impl;

import kesun.bll.SuperService;
import kesun.bll.ht.impl.RaidersServiceImpl;
import kesun.controller.KesunBusinessController;
import kesun.controller.SuperController;
import kesun.controller.ht.IRaiders;
import kesun.entity.AbsSuperObject;
import kesun.entity.ht.Raiders;
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
@RequestMapping("p_raiders")
public class RaidersController extends  SuperController implements IRaiders{
    @Resource(name ="bllRaiders")
    private RaidersServiceImpl raidersService;

//    public Map<String, Object> getConditionParam(Map<String,Object> param) {
//        if (param == null) return null;//判断条件是否为空param是页面传递的值
//        Map<String, Object> values = new HashMap<String, Object>();
//        if (param.get("name") != null)
//            values.put("name", param.get("name"));
//        if (param.get("status") != null)
//            values.put("status", param.get("status"));
//        return  values;
//    }

    public Map<String, Object> setFindFilter(Map<String, Object> param) {
        return null;
    }


    public SuperService getService() {
        return raidersService;
    }

    public Map<String, Object> getConditionParam(JSONObject param) {
        if (param==null) return  null;//判断条件是否为空param是页面传递的值
        Map<String,Object> values=new HashMap<String, Object>();
        if (JSONAndObject.GetJsonStringValue(param,"condition")!=null)
        {

            values.put("name",JSONAndObject.GetJsonStringValue(param,"condition"));
        }

        if (JSONAndObject.GetJsonStringValue(param,"status")!=null)
        {
            values.put("status",JSONAndObject.GetJsonStringValue(param,"status"));
        }

        return values;
    }

    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }


    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new Raiders();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }


    @RequestMapping("index")
    public String index(){
        return "ht/raiders/raidersManage";
    }
    @RequestMapping("uioperate")
    public String uioperate(){
        return "ht/raiders/raiders";
    }

}
