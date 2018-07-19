package kesun.controller.liyi.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.liyi.impl.yh_CollcetService;
import kesun.controller.SuperController;
import kesun.controller.liyi.Iyh_Collect;
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
@RequestMapping("yh_collect")
public class yh_CollectController extends SuperController implements Iyh_Collect {

    @Resource(name = "byh_collect")
    private yh_CollcetService bll;

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


    @RequestMapping("getcollect")
    @ResponseBody
    public Object getcollect(@RequestBody(required=true) Map<String,Object> p){
        Map map=p;
        List list=bll.getcollect(map);
        Map listmap=new HashMap();
        listmap.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(listmap));
        return jsonObject;
    }



    //查询收藏店铺商品
    @RequestMapping("collectstorecomm")
    @ResponseBody
    public Object collectstorecomm(@RequestBody(required=true) Map<String,Object> p){
        Map map=p;
        List list=bll.collectstorecomm(map);
        Map listmap=new HashMap();
        listmap.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(listmap));
        return jsonObject;
    }


    //分页查询收藏店铺
    @RequestMapping("collectPage")
    @ResponseBody
    public Object collectPage(@RequestBody(required=true) Map<String,Object> p){
        Map map =p;
        List list=bll.collectPage(map);
        int total=bll.collectCount(map);
        Map listmap=new HashMap();
        listmap.put("obj",list);
        listmap.put("total",total);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(listmap));
        return jsonObject;
    }


}
