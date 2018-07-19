package kesun.controller.ht.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;
import kesun.bll.ht.impl.StoreServiceImpl;
import kesun.bll.ht.impl.UserInformServiceImpl;
import kesun.controller.SuperController;
import kesun.controller.ht.IDataStatics;
import kesun.entity.ht.Store;
import kesun.entity.ht.UserInform;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/4/14.
 */
@Controller
@RequestMapping("p_dataStatics")
public class DataStaticsController extends SuperController implements IDataStatics {
    @Resource(name="bllUserInform1")
    private UserInformServiceImpl userInformService;
    @Resource(name="bllStore")
    private StoreServiceImpl storeService;






    @RequestMapping(value="find2")
    @ResponseBody
    public Object find2() {
        System.out.println("------------############进来了");

        Map<String,Object>  map=new HashMap();

        List ulist =  userInformService.find2();
       //遍历用户
        for (int i=0;i<ulist.size();i++){
            System.out.println("用户"+ ulist.get(i));
        }

        List slist =storeService.find2();
       //遍历店铺
        for (int i=0;i<slist.size();i++){
            System.out.println("店铺"+slist.get(i));
        }

        map.put("ulist",ulist);
        map.put("slist",slist);
        System.out.print("全部统计"+map.toString());

        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));

        System.out.println("这里是数据："+jsonObject.toString());

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

    @RequestMapping("index")
    public String index(){
        return "ht/dataStatics/dataStatics";
    }


}
