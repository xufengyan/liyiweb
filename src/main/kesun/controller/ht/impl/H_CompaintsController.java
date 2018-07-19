package kesun.controller.ht.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.ht.impl.H_CompaintsServiceImpl;
import kesun.controller.SuperController;
import kesun.controller.ht.H_ICompaints;
import kesun.entity.AbsSuperObject;
import kesun.entity.ht.Compaints;
import kesun.util.JSONAndObject;
import kesun.util.Tool;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("p_compaints")
public class H_CompaintsController extends SuperController implements H_ICompaints{
    @Resource(name = "p_bCompaintsa")
    private H_CompaintsServiceImpl bll;

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
        if (JSONAndObject.GetJsonStringValue(param,"condition1")!=null)
        {

            values.put("processed", JSONAndObject.GetJsonStringValue(param,"condition1"));


        }
        return values;
    }
    @RequestMapping("getme2")
    @ResponseBody
    public Object getme2(@RequestBody(required=true) Map<String,Object> p){
        List list=bll.getme2((String)p.get("id"));
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonAndObject= JSON.parseObject(JSON.toJSONString(map));
        return jsonAndObject;
    }


    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }

    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new Compaints();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }/*查询条件设置*/

    public Map<String, Object> getConditionParam(Map<String,Object> param) {
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
        return "ht/h_compaints/compaintsManage";
    }
    @RequestMapping("uioperate")
    public String uiOperate() {
        return "ht/h_compaints/compaints";
    }
}
