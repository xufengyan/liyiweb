package kesun.controller.ht.impl;

import kesun.bll.SuperService;
import kesun.bll.ht.IUserInform;
import kesun.bll.ht.impl.UserInformServiceImpl;
import kesun.controller.SuperController;
import kesun.entity.AbsSuperObject;
import kesun.entity.ht.UserInform;
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
@RequestMapping("p_userInform")
public  class UserInformController extends SuperController implements IUserInform {
    @Resource(name ="bllUserInform1")
    private UserInformServiceImpl userInformService;
    public SuperService getService() {
        return userInformService;
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
            model = new UserInform();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }





    @RequestMapping("index")
    public String index(){
        return "ht/userInform/userInformManage";
    }
    @RequestMapping("uioperate")
    public String uioperate(){
        return "ht/userInform/userInform";
    }

}
