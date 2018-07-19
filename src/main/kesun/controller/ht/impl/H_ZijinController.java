package kesun.controller.ht.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.ht.impl.H_ZijinServiceImpl;
import kesun.controller.SuperController;
import kesun.controller.ht.H_IZijin;
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
@RequestMapping("p_zijin")
public class H_ZijinController extends SuperController implements H_IZijin {
    @Resource(name = "p_bZijin")
    private H_ZijinServiceImpl bll;

    public SuperService getService() {
        return bll;
    }

    public Map<String, Object> getConditionParam(JSONObject param) {
        return null;
    }

    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }

    public Map<String, Object> getConditionParam(Map<String, Object> param) {
        if (param == null) return null;//判断条件是否为空param是页面传递的值
        Map<String, Object> values = new HashMap<String, Object>();
        if (param.get("storename")!=null)
            values.put("storename",param.get("storename"));

        return values;
    }

    public Map<String, Object> setFindFilter(Map<String, Object> param) {
        return null;
    }
    @RequestMapping("getone")
    @ResponseBody
    public Object getone(@RequestBody(required=true) Map<String,Object> p) {
        List list = bll.getone((String)p.get("status"));
        Map map = new HashMap();
        map.put("obj", list);
        com.alibaba.fastjson.JSONObject jsonObject = JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }
    @RequestMapping("gettwo")
    @ResponseBody
    public Object gettwo(@RequestBody(required=true) Map<String,Object> p) {
        List list = bll.gettwo((String)p.get("storename"));
        Map map = new HashMap();
        map.put("obj", list);
        com.alibaba.fastjson.JSONObject jsonObject = JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }
    @RequestMapping("getthree")
    @ResponseBody
    public Object getthree(@RequestBody(required=true) Map<String,Object> p) {
        List list = bll.getthree((String)p.get("storename"));
        Map map = new HashMap();
        map.put("obj", list);
        com.alibaba.fastjson.JSONObject jsonObject = JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }
    @RequestMapping("getfour")
    @ResponseBody
    public Object getfour(@RequestBody(required=true) Map<String,Object> p) {
        List list = bll.getfour((String)p.get("storename"));
        Map map = new HashMap();
        map.put("obj", list);
        com.alibaba.fastjson.JSONObject jsonObject = JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }

    @RequestMapping("findByPagetwo")
    @ResponseBody
    public Object findByPagetwo(@RequestBody(required=true) Map<String,Object> p){
        //System.out.println("--------------------------"+p.get("storename")+"--------------------------");

        List list= bll.findByPagetwo((String)p.get("storename"));

        Map map=new HashMap();

        map.put("oList",list);
        //System.out.println("==================="+map.toString());
        com.alibaba.fastjson.JSONObject jsonObject= JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }





    @RequestMapping("index")
    public String index() {
        return "ht/h_zijin/zijinManage";
    }
    @RequestMapping("uioperate")
    public String uiOperate() {
        return "";
    }
}
