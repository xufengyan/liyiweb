package kesun.controller.liyi.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.liyi.impl.ys_StyleService;
import kesun.controller.SuperController;
import kesun.controller.liyi.Iys_Style;
import kesun.entity.liyi.ys_Style;
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

/**
 * Created by xufeng on 2018/5/21.
 */
@Controller
@RequestMapping("ys_style")
public class ys_StyleController extends SuperController implements Iys_Style{

    @Resource(name = "bys_style")
    private ys_StyleService bll;


    @RequestMapping("add2")
    @ResponseBody
    public int add2(ys_Style yss){

        return bll.add2(yss);
    }


    @RequestMapping("getstyle")
    @ResponseBody
    public Object getstyle(@RequestBody(required=true) Map<String,Object> p){
        Map map=p;
        List list=bll.getstyle(map);
        Map listmap=new HashMap();
        listmap.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(listmap));
       return jsonObject;
    }



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

    @Override
    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }
}
