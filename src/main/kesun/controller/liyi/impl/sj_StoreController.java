package kesun.controller.liyi.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.liyi.impl.sj_storeService;
import kesun.controller.SuperController;
import kesun.controller.liyi.Isj_Store;
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
 * Created by xufeng on 2018/5/23.
 */
@Controller
@RequestMapping("sj_store")
public class sj_StoreController extends SuperController implements Isj_Store{

    @Resource(name = "bsj_store")
    private sj_storeService sjstore;


    public SuperService getService() {
        return sjstore;
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


    @RequestMapping("getstoreview")
    @ResponseBody
    public Object getstoreview(@RequestBody(required=true) Map<String,Object> p){

        String storename="%"+(String)p.get("storename")+"%";
        List list =sjstore.getstoreview(storename);
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;

    }


    @RequestMapping("getmenewstore")
    @ResponseBody
    public Object getmenewcommodity(){
        List list=sjstore.getmenewstore();
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }




    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }
}
