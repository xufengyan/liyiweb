package kesun.controller.ht.impl;

import kesun.bll.SuperService;

import kesun.bll.ht.impl.p_depositServiceImpl;
import kesun.controller.SuperController;
import kesun.entity.AbsSuperObject;
import kesun.entity.ht.Scold;
import kesun.util.JSONAndObject;
import kesun.util.Tool;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;
@Controller
@RequestMapping("p_deposit")
public class P_depositController extends SuperController {

    @Resource(name = "p_bdeposit")
    private p_depositServiceImpl bll;


    public SuperService getService() {
        return bll;
    }

    public Map<String, Object> getConditionParam(org.json.JSONObject param) {
        if (param==null) return  null;//判断条件是否为空param是页面传递的值
        Map<String,Object> values=new HashMap<String, Object>();
//        if (JSONAndObject.GetJsonStringValue(param,"condition")!=null)
//        {
//            values.put("id", JSONAndObject.GetJsonStringValue(param,"condition"));
//            values.put("s_id",JSONAndObject.GetJsonStringValue(param,"condition"));
//        }
        if (JSONAndObject.GetJsonStringValue(param,"condition")!=null)
        {
            values.put("name", JSONAndObject.GetJsonStringValue(param,"condition"));
        }
        return values;
    }

    public Map<String, Object> setFindFilter(org.json.JSONObject param) {
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

    public Map<String, Object> getConditionParam(Map<String, Object> param) {
        if (param == null) return null;//判断条件是否为空param是页面传递的值
        Map<String, Object> values = new HashMap<String, Object>();
        if (param.get("name")!=null)
            values.put("name",param.get("name"));

        return values;
    }

//@RequestMapping("getme2")
//@ResponseBody
//    public Object getmet(@RequestBody(required=true) Map<String,Object> p){
//        String id=(String) p.get("id");
//    System.out.println("id值："+id);
//        List list= bll.getmet(id);
//        Map map =new HashMap();
//        map.put("obj",list);
//        JSONObject jsonObject= JSON.parseObject(JSON.toJSONString(map));
//        return   jsonObject;
//    }

    public Map<String, Object> setFindFilter(Map<String, Object> param) {
        return null;
    }
    @RequestMapping("index")
    public String index() {
        return "ht/p_deposit/depositManage";
    }
    @RequestMapping("uioperate")
    public String uiOperate() {
        return "ht/p_deposit/deposit";
    }
}
