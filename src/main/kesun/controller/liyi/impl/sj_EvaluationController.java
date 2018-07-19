package kesun.controller.liyi.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.liyi.impl.sj_EvaluationService;
import kesun.controller.SuperController;
import kesun.controller.liyi.Isj_Evaluation;
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
@RequestMapping("sj_evaluation")
public class sj_EvaluationController extends SuperController implements Isj_Evaluation {

    @Resource(name = "sjevaluation")
    private sj_EvaluationService  bll;




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

        return values;    }



        
        @RequestMapping("getm2")
        @ResponseBody
        public Object getm2(@RequestBody(required=true) Map<String,Object> p) {
            String storeid = ""+ p.get("storeid");//获取页面传来的商家id
            System.out.println("敖德萨多撒"+storeid);
            String type = "%"+(String) p.get("type")+"%";//获取查看的评价的类型
            String evalustatus=(String)p.get("status");
            List list = bll.genm2(storeid,type,evalustatus);
            Map map = new HashMap();
            map.put("obj", list);
            com.alibaba.fastjson.JSONObject jsonObject =JSON.parseObject(JSON.toJSONString(map));
            return jsonObject;
        }

    @RequestMapping("getm2Page")
    @ResponseBody
    public Object getm2Page(@RequestBody(required=true) Map<String,Object> p) {
        Map map=p;
        List list=bll.genm2Page(map);
        int total=bll.genm2Count(map);
        Map listmap=new HashMap();
        listmap.put("obj",list);
        listmap.put("total",total);
        com.alibaba.fastjson.JSONObject jsonObject =JSON.parseObject(JSON.toJSONString(listmap));
        return jsonObject;

    }

        @RequestMapping("getm3")
        @ResponseBody
        public Object getm3(@RequestBody(required=true) Map<String,Object> p){
        String id= (String) p.get("id");
        List list=bll.getm3(id);
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
        }


        @RequestMapping("evaluationgetm")
        @ResponseBody
        public Object evaluationgetm(@RequestBody(required=true) Map<String,Object> p){
        String comid= (String) p.get("comid");
        List list =bll.evaluationgetm(comid);
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
        }



        @RequestMapping("evaluationcount")
        @ResponseBody
        public Object evaluationcount(@RequestBody(required=true) Map<String,Object> p){
        String comid=(String)p.get("id");
        List list=bll.evaluationcount(comid);
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
        }



        @RequestMapping("evaluationgetme2")
        @ResponseBody
        public Object evaluationgetme2(@RequestBody(required=true) Map<String,Object> p){
            String storeid = ""+ p.get("storeid");//获取页面传来的商家id
            String type = (String) p.get("type");//获取查看的评价的类型
            String comid=(String) p.get("id");
            List list=bll.evalyationgetme2(comid,storeid,type);
            Map map=new HashMap();
            map.put("obj",list);
            com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
        }


    /**
     *用户分页查询评价订单
     * @param p
     * @return
     */
    @RequestMapping("usergetevaluation")
        @ResponseBody
        public Object usergetevaluation(@RequestBody(required=true) Map<String,Object> p){
        Map map=p;
        List list=bll.usergetevaluation(map);
        int total=bll.evaluationCount(map);
        Map listmap=new HashMap();
        listmap.put("obj",list);
        listmap.put("total",total);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(listmap));
        return jsonObject;
        }



    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }
}
