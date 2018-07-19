package kesun.controller.liyi.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.liyi.impl.yh_AddressService;
import kesun.controller.SuperController;
import kesun.controller.liyi.Iyh_Address;
import kesun.entity.liyi.yh_address;
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
@RequestMapping("yh_address")
public class yh_AddressController extends SuperController implements Iyh_Address {


    @Resource(name = "byh_address")
    private yh_AddressService bll;

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


    @RequestMapping("getaddress")
    @ResponseBody
    public Object getaddress(@RequestBody(required=true) Map<String,Object> p){
        String userid=(String)p.get("user_id");
        String id="";
        if((String)p.get("ressid")!=null){
           id=(String)p.get("ressid");
        }
        yh_address address=new yh_address();
        address.setUser_id(userid);
        address.setId(id);
        List list=bll.getaddress(address);
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }

    @RequestMapping("addaddress")
    @ResponseBody
    public int addaddress(@RequestBody(required=true) Map<String,Object> p){
        yh_address address=new yh_address();
        address.setId(Tool.CreateID());
        address.setUser_id((String)p.get("user_id"));
        address.setAddress((String)p.get("address"));
        address.setArea((String)p.get("area"));
        address.setCity((String)p.get("city"));
        address.setProvince((String)p.get("province"));
        address.setPhone((String)p.get("phone"));
        address.setTacitly(""+p.get("tacitly"));
        address.setReceiver((String)p.get("receiver"));
        int a=bll.addaddress(address);
        if (a!=0){
           int b =bll.updateaddress(address.getId());
        }


        return a;
    }
    @RequestMapping("updateaddress")
    @ResponseBody
    public int updateaddress(@RequestBody(required=true) Map<String,Object> p){
        String id=(String)p.get("id");
        int a=bll.updateaddress(id);
        return a;
    }


    @RequestMapping("updateaddress2")
    @ResponseBody
    public int updateaddress2(@RequestBody(required=true) Map<String,Object> p){
        String id=(String)p.get("id");
        int a=bll.updateaddress2(id);
        int b=0;
        if(a>0){
           b=bll.updateaddress(id);
        }
        return b;
    }


    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }


}
