package kesun.controller.sj.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.sj.impl.jy_salesService;
import kesun.controller.SuperController;
import kesun.controller.sj.jy_Sales;
import kesun.entity.AbsSuperObject;

import kesun.entity.sj.jy2_sales;
import kesun.entity.sj.jy_Order;
import kesun.util.JSONAndObject;
import kesun.util.Tool;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/4/14.
 */
@Controller
@RequestMapping("sales")
public class Jy_salesController extends SuperController implements jy_Sales {
    @Resource(name ="bsj_sales")
    private jy_salesService salesService;
    //资金统计操作

    @RequestMapping("find2")
    @ResponseBody
    public Object find2(HttpSession session) {
        System.out.println("------------############进来了");

        Map<String,Object>  map=new HashMap();
        String userid=(String) session.getAttribute("users_id");
        System.out.println(userid);
        List saleslist = salesService.find2(userid);
        //遍历
        for (int i=0;i<saleslist.size();i++) {
            System.out.println("资金：" + saleslist.get(i));
        }
        map.put("saleslist",saleslist);

        System.out.print("全部统计"+map.toString());

        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));

        System.out.println("这里是数据："+jsonObject.toString());

        return jsonObject;

    }

    public SuperService getService() {
        return salesService;
    }

    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new jy_Order();
            ((jy_Order) model).setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }


    public Map<String, Object> getConditionParam(JSONObject param) {
        if (param==null) return  null;//判断条件是否为空param是页面传递的值
        Map<String,Object> values=new HashMap<String, Object>();
            if (JSONAndObject.GetJsonStringValue(param,"condition")!=null)
        {
            values.put("commname",JSONAndObject.GetJsonStringValue(param,"condition"));

        }

        if (JSONAndObject.GetJsonStringValue(param,"s_id")!=null)
        {
            values.put("s_id",JSONAndObject.GetJsonStringValue(param,"s_id"));

        }


        System.out.println("ssssssssss："+param);
        return values;
    }

    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }
    @RequestMapping("index")
    public String index(){
        return "sj/jy2_salesManage";
    }
    @RequestMapping("uioperate")
    public String uioperate(){
        return "sj/jy2_sales";
    }

}
