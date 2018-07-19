package kesun.controller.sj.impl;

import kesun.bll.SuperService;
import kesun.controller.sj.jy_notice;
import kesun.bll.sj.impl.jy_noticeService;
import kesun.controller.SuperController;
import kesun.entity.AbsSuperObject;
import kesun.entity.sj.jy2_notice;
import kesun.util.JSONAndObject;
import kesun.util.Tool;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by xufeng on 2018/4/14.
 */
@Controller
@RequestMapping("notice")
public class Jy_noticeController extends SuperController implements jy_notice {
    @Resource(name ="bsj_notice")
    private jy_noticeService noticeService;

    public SuperService getService() {
        return noticeService;
    }

    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new jy2_notice();
            (model).setId(Tool.CreateID());
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
            values.put("s_id",JSONAndObject.GetJsonStringValue(param,"condition"));

        }
        if (JSONAndObject.GetJsonStringValue(param,"createDate")!=null)
        {
            values.put("createDate",JSONAndObject.GetJsonStringValue(param,"createDate"));

        }
        System.out.println("ssssssssss："+param);
        return values;
    }

    public Map<String, Object> setFindFilter(JSONObject param) {
        return null;
    }
    @RequestMapping("index")
    public String index(){
        return "sj/jy2_noticeManage";
    }

    @RequestMapping("uioperate")
    public String notice(){
        return "sj/jy2_notice";
    }
}
