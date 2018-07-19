package kesun.controller.liyi.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.liyi.impl.yh_RaidersService;
import kesun.controller.SuperController;
import kesun.util.JSONAndObject;
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
@RequestMapping("sjyh_raiders")
public class yh_RaidersController extends SuperController {
    @Resource(name = "braiders")
    private yh_RaidersService bll;

    @Override
    public SuperService getService() {
        return bll;
    }

    @Override
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

    @RequestMapping("raidersPage")
    @ResponseBody
    public Object raidersPage(@RequestBody(required=true) Map<String,Object> p){

        Map map=p;
        List list=bll.raidersPage(map);
        int total=bll.raidersCount(map);
        Map listmap=new HashMap();
        listmap.put("obj",list);
        listmap.put("total",total);

        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(listmap));
        return jsonObject;
    }





    @Override
    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }
}
