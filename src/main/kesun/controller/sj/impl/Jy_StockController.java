package kesun.controller.sj.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.sj.impl.jy_StockServiceImpl;
import kesun.controller.SuperController;
import kesun.controller.sj.jy_IStock;
import kesun.entity.AbsSuperObject;
import kesun.entity.sj.jy_Order;
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

/****************************
 *
 *@author Xcc😊
 *@CreateTime: 2018年05月29日 17:01 
 *@description 库存Controller
 *@Class: StockController
 *
 *****************************/

@Controller
@RequestMapping("stock")
public class Jy_StockController extends SuperController implements jy_IStock {

    @Resource(name = "bStock")
    private jy_StockServiceImpl bll;


    public SuperService getService() {
        return bll;
    }

    public Map<String, Object> getConditionParam(JSONObject param) {
        if (param==null) return null;
        Map<String,Object> values = new HashMap<String, Object>();
        if (JSONAndObject.GetJsonStringValue(param,"condition")!=null){
            values.put("id",JSONAndObject.GetJsonStringValue(param,"condition"));
            values.put("commname",JSONAndObject.GetJsonStringValue(param,"condition"));
        }

        if (JSONAndObject.GetJsonStringValue(param,"s_id")!=null){

            values.put("s_id",JSONAndObject.GetJsonStringValue(param,"s_id"));
        }

        return values;
    }


    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new jy_Order();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }/*查询条件设置*/




    public Map<String, Object> getConditionParam(Map<String, Object> param) {
        if (param == null) return null;//判断条件是否为空param是页面传递的值
        Map<String,Object> values = new HashMap<String, Object>();
        if (param.get("id") != null){
            values.put("id",param.get("id"));
        }

        return values;
    }


    @RequestMapping("getme2")
    @ResponseBody
    public Object getme2(@RequestBody(required=true) Map<String,Object> p){
        List list=bll.getme2((String)p.get("id"));
        Map map =new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonAndObject=JSON.parseObject(JSON.toJSONString(map));
        return  jsonAndObject;
    }




    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }


    @RequestMapping("index")
    public String index(){

        return "sj/jy_stock";
    }

    @RequestMapping("stock")
    public String stock(){
        return "sj/jy_stockManage";
    }

    @RequestMapping("home")
    public String home(){
        return "sj/jy_stockHomePage";
    }


}
