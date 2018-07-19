package kesun.controller.ht.impl;

import kesun.bll.SuperService;
import kesun.bll.ht.impl.StoreServiceImpl;
import kesun.controller.KesunBusinessController;
import kesun.controller.SuperController;
import kesun.controller.ht.IStore;
import kesun.entity.AbsSuperObject;
import kesun.entity.ht.Store;
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
@RequestMapping("p_store")
public class StoreController extends SuperController implements IStore {
    @Resource(name ="bllStore")
    private StoreServiceImpl storeService;


    public SuperService getService() {
        return storeService;
    }

    public Map<String, Object> getConditionParam(JSONObject param) {
        if (param==null) return  null;//判断条件是否为空param是页面传递的值
        Map<String,Object> values=new HashMap<String, Object>();
        if (JSONAndObject.GetJsonStringValue(param,"condition")!=null)
        {

            values.put("storename",JSONAndObject.GetJsonStringValue(param,"condition"));
        }

        if (JSONAndObject.GetJsonStringValue(param,"approval")!=null)
        {
            values.put("approval",JSONAndObject.GetJsonStringValue(param,"approval"));
        }

        return values;
    }

    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }




    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new Store();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }


    @RequestMapping("index")
    public String index(){
        return "ht/store/storeManage";
    }
    @RequestMapping("uioperate")
    public String uioperate(){
        return "ht/store/store";
    }

}
