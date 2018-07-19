package kesun.controller.liyi.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.liyi.impl.sj_CommodityService;
import kesun.bll.liyi.impl.ys_StyleService;
import kesun.controller.KesunBusinessController;
import kesun.controller.SuperController;
import kesun.controller.liyi.Isj_Commodity;
import kesun.entity.liyi.sj_commodity;
import kesun.entity.liyi.ys_Style;
import kesun.miaodiyun.httpApiDemo.IndustrySMS;
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

/**
 * Created by xufeng on 2018/5/20.
 */
@Controller
@RequestMapping("sj_commodity")
public class sj_CommodityController extends SuperController implements Isj_Commodity{

    @Resource(name = "bsj_commodity")
    private sj_CommodityService sj_commodityService;

    @Resource(name="bys_style")
    private ys_StyleService  ys_styleService;

    public SuperService getService() {
        return sj_commodityService;
    }




    @RequestMapping("duanxing")
    @ResponseBody
    public Object duanxing(@RequestBody(required=true) Map<String,Object> p){
        String phone= (String) p.get("phone");
        String yanzma=IndustrySMS.dunx(phone);
        System.out.println("验证码:"+yanzma);
        Map map=new HashMap();
        map.put("yanzma",yanzma);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }
    @RequestMapping("add2")
    @ResponseBody
    public int add2(@RequestBody(required=true) Map<String,Object> p){
        sj_commodity commodity =new sj_commodity();
        commodity.setCommname((String)p.get("commname"));
        commodity.setId(Tool.CreateID());
        commodity.setDescription((String) p.get("description"));
        commodity.setImage1((String) p.get("image1"));
        commodity.setImage2((String) p.get("image2"));
        commodity.setImage3((String) p.get("image3"));
        commodity.setImage4((String) p.get("image4"));
        commodity.setTime(commodity.getCreateDate());
        commodity.setPrice(Integer.parseInt((String) p.get("price")));
        commodity.setTitle((String) p.get("title"));
        commodity.setSstatus("待审核");
        commodity.setS_id(""+p.get("s_id"));
        commodity.setSub_id(""+p.get("sub_id"));
        commodity.setStock(Integer.valueOf((String)p.get("stock")) );
        int inte= (int) (Integer.parseInt((String)p.get("price"))*0.2);
        commodity.setIntegral(inte);
        commodity.setStatus("商品上架");
        commodity.setSales(0);
        commodity.setImages((List<ys_Style>) p.get("images"));
        int re=sj_commodityService.add2(commodity);
        System.out.println("值："+re);
        return re;
    }

    @RequestMapping("getcomm")
    @ResponseBody
    public Object getcomm(@RequestBody(required=true) Map<String,Object> p){
        String subname=(String) p.get("subcategory");
        int  start=(Integer)p.get("start");
        int limit=(Integer)p.get("limit");
        List list=sj_commodityService.commget(subname,start,limit);
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }

    @RequestMapping("commfandbyPage")
    @ResponseBody
    public Object commfandbyPage(@RequestBody(required=true) Map<String,Object> p){

        Map<String,Object> map=p;
        List list =sj_commodityService.commfandbyPage(map);
        int total=sj_commodityService.commfandbyCount(map);
        Map listmap=new HashMap();
        listmap.put("obj",list);
        listmap.put("total",total);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(listmap));
        return jsonObject;
    }


    /**
     * 通过商品id查询商品样式
     * @param p
     * @return
     */
    @RequestMapping("getmecommstyle")
    @ResponseBody
    public Object getmecommstyle(@RequestBody(required=true) Map<String,Object> p){
        String id=(String)p.get("id");
        List list=sj_commodityService.getmecommstyle(id);
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }


    /**
     * 通过商品id店铺信息
     * @param p
     * @return
     */
    @RequestMapping("getmecommstore")
    @ResponseBody
    public Object getmecommstore(@RequestBody(required=true) Map<String,Object> p){
        String id=(String)p.get("id");
        String storeid=(String)p.get("storeid");
        List list=sj_commodityService.getmecommstore(id,storeid);
        Map map =new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));

        return jsonObject;
    }

    @RequestMapping("getmecommstyle2")
    @ResponseBody
    public Object getmecommmstyle2(@RequestBody(required=true) Map<String,Object> p){
        String id=(String)p.get("id");
        String styleid=(String)p.get("styleid");
        List list=sj_commodityService.getmecommstyle2(id,styleid);
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }

    @RequestMapping("getdiscount")
    @ResponseBody
    public Object getdiscount(@RequestBody(required=true) Map<String,Object> p){
        Map map=p;
        List list=sj_commodityService.getdiscount(map);
        Map map2=new HashMap();
        map2.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map2));
        return jsonObject;
    }



    @RequestMapping("getmecommstorePage")
    @ResponseBody
    public Object getmecommstorePage(@RequestBody(required=true) Map<String,Object> p){
        Map map=p;
        List list=sj_commodityService.getmecommstorePage(map);
        int total=sj_commodityService.getmecommstorePageCount(map);
        Map listmap=new HashMap();
        listmap.put("obj",list);
        listmap.put("total",total);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(listmap));
        return jsonObject;
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
}
