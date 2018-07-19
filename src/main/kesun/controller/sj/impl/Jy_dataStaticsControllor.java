package kesun.controller.sj.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.sj.impl.jy_DataStaticsServiceImpl;
import kesun.controller.ControlTool;
import kesun.controller.SuperController;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/****************************
 *
 *@author Xcc😊
 *@CreateTime: 2018年06月01日 11:49 
 *@description 商家销售统计
 *@Class: dataStaticsControllor
 *
 *****************************/
@Controller
@RequestMapping("datastatics")
public class Jy_dataStaticsControllor extends SuperController {

    @Resource(name = "sjbDataStatics")
    private jy_DataStaticsServiceImpl bll;


    @RequestMapping("cList")
    @ResponseBody
    public Object cList(@RequestBody(required=true) Map<String,Object> p){

        Map listmap=p;
        System.out.println("查询参数"+p);
        Map<String,Object> map = new HashMap<String, Object>();
        List<Map<String,Object>> cList = bll.cList(p);
        map.put("clist",cList);
        long [] a = new long[13];
        for (int i=0;i<cList.size();i++){
            Map map1 = cList.get(i);
            //System.out.println(map1);
            long  val = (Long) map1.get("time");
            int   value1=    Integer.parseInt((String) map1.get("goodsnumber"));

            for (int j=1;j<=12;j++){

                if (val==j){

                   a[j]+=value1;
                }
            }
        }

        map.put("a",a);

        System.out.println(map);

        com.alibaba.fastjson.JSONObject jsonObject = JSON.parseObject(JSON.toJSONString(map));

        System.out.println(jsonObject.toJSONString());

        return jsonObject;
    }


    @RequestMapping("heard")
    @ResponseBody
    public Object heard(@RequestBody(required=true) Map<String,Object> p){
        Map<String,Object> map2 = new HashMap<String, Object>();
        Map listmap=p;
        List<Map> heard = bll.heard(listmap);
        map2.put("heard",heard);
        long [] b = new long[13];
        for (int i=0;i<heard.size();i++){
            Map heardmap = heard.get(i);
            //System.out.println(map1);
            long  val = (Long) heardmap.get("time");
            int   value= Integer.parseInt((String) heardmap.get("goodsnumber"));
            for (int j=1;j<=12;j++){
                if (val==j){
                    b[j]+=value;
                }
            }
        }

        map2.put("b",b);

        System.out.println(map2);

        com.alibaba.fastjson.JSONObject jsonObject = JSON.parseObject(JSON.toJSONString(map2));

        System.out.println(jsonObject.toJSONString());

        return jsonObject;

    }



    public SuperService getService() {
        return null;
    }

    public Map<String, Object> getConditionParam(JSONObject param) {
        return null;
    }

    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }
}
