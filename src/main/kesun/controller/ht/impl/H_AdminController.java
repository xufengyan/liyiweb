package kesun.controller.ht.impl;

import kesun.bll.SuperService;
import kesun.bll.ht.impl.H_AdminServiceImpl;
import kesun.controller.SuperController;
import kesun.controller.ht.H_IAdmin;
import kesun.entity.AbsSuperObject;
import kesun.entity.ht.Admin;
import kesun.util.JSONAndObject;
import kesun.util.Tool;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("p_admin")
public class H_AdminController extends SuperController implements H_IAdmin {
    @Resource(name = "p_bAdmin")
    private H_AdminServiceImpl bll;
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

    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }

    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new Admin();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }/*查询条件设置*/
    public Map<String, Object> getConditionParam(Map<String, Object> param) {
        if (param == null) return null;//判断条件是否为空param是页面传递的值
        Map<String, Object> values = new HashMap<String, Object>();
        if (param.get("name")!=null)
            values.put("name",param.get("name"));

        return values;
    }

    /*数据过滤方法*/
    public Map<String, Object> setFindFilter(Map<String,Object> param) {
        return null;
    }

    @RequestMapping("index")
    public String index() {
        return "ht/h_admin/adminManage";
    }
    @RequestMapping("uioperate")
    public String uiOperate() {
        return "ht/h_admin/admin";
    }
}

