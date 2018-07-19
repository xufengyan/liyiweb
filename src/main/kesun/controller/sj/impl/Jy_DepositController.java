package kesun.controller.sj.impl;

import kesun.bll.SuperService;
import kesun.bll.sj.impl.DepositServiceImpl;

import kesun.controller.SuperController;
import kesun.entity.AbsSuperObject;
import kesun.entity.sj.jy2_Deposit;
import kesun.util.Tool;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;


@Controller
@RequestMapping("Deposit")
public class Jy_DepositController extends SuperController{
    @Resource(name ="bllDeposit")
    private DepositServiceImpl depositService;


    public SuperService getService() {
        return depositService;
    }

    public Map<String, Object> getConditionParam(JSONObject param) {
        return null;
    }

    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }

    public Map<String, Object> getConditionParam(Map<String,Object> param) {
            if (param == null) return null;//判断条件是否为空param是页面传递的值
            Map<String, Object> values = new HashMap<String, Object>();
            if (param.get("name") != null)
                values.put("name", param.get("name"));

            return  values;
        }

        public Map<String, Object> setFindFilter(Map<String, Object> param) {
            return null;
        }



        public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new jy2_Deposit();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }


}
