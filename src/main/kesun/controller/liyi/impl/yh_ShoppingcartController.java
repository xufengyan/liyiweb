package kesun.controller.liyi.impl;

import com.alibaba.fastjson.JSON;
import freemarker.ext.beans.HashAdapter;
import kesun.bll.SuperService;
import kesun.bll.liyi.impl.yh_ShoppingcartService;
import kesun.controller.SuperController;
import kesun.controller.liyi.Iyh_shoppingcart;
import kesun.entity.AbsSuperObject;
import kesun.entity.educationbaseinfo.College;
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
@RequestMapping("yh_shoppingcart")
public class yh_ShoppingcartController extends SuperController implements Iyh_shoppingcart {

    @Resource(name = "byh_shoppingcart")
    private yh_ShoppingcartService bll;

    //获取页面上的数据重新设置
    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new College();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }

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




    @RequestMapping("getusershoopingcart")
    @ResponseBody
    public Object getusershoopingcart(@RequestBody(required=true) Map<String,Object> p){
        Map map=p;
        List list=bll.getusershoopingcart(map);
        Map listmap =new HashMap();
        listmap.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(listmap));
        return jsonObject;
    }









    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }



}
