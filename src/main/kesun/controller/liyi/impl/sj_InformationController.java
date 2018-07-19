package kesun.controller.liyi.impl;

import com.alibaba.fastjson.JSON;
import kesun.bll.SuperService;

import kesun.controller.SuperController;
import kesun.controller.liyi.Isj_Information;
import kesun.bll.liyi.impl.sj_InformationServic;
import kesun.entity.AbsSuperObject;
import kesun.entity.educationbaseinfo.College;
import kesun.entity.liyi.sj_Information;
import kesun.util.JSONAndObject;
import kesun.util.Tool;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/5/16.
 */
@Controller
@RequestMapping("sj_information")
public class sj_InformationController extends SuperController implements Isj_Information{
    @Resource(name = "bsj_information")
    private sj_InformationServic sj_informationServic;

//获取页面上的数据重新设置
    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new College();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }

    public SuperService getService() {
        return sj_informationServic;
    }

//继承的方法
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


    //控制登录操作的代码
    @RequestMapping("useradmin")
    public String useradmin(sj_Information uadmin, HttpServletRequest request, HttpSession session){
        String password= uadmin.getPassword();//密码
        String phone= uadmin.getPhone();//账号
        sj_Information sj=new sj_Information();
        sj.setPhone(phone);
        sj.setPassword(password);
        List<sj_Information> list=(List<sj_Information>)(List)sj_informationServic.getmet2(sj);
        String userid = null;
        String usernick=null;
        String users_id=null;
        String userphone=null;
        String userpassword=null;
        for (sj_Information s:list
             ) {
           userid=s.getId();
           usernick=s.getNickname();
           users_id=s.getS_id();
           userpassword=s.getPassword();
           userphone=s.getPhone();
        }
        System.out.println("查询的数据："+userid+","+usernick+","+users_id+","+userpassword+userphone);


        if (userid==null){


        }else {
            session.setAttribute("userid",userid);
            session.setAttribute("usernick",usernick);
            session.setAttribute("users_id",users_id);
        }


//获取到session里面保存的name的值，
        Object s=session.getAttribute("userid");
        System.out.println("放在session里面的name"+session.getAttribute("users_id"));

        System.out.println("phone:"+phone+"pass"+password);
        //判断name和放在session里面的值，有一个不为空都可以进入后台系统，
        if (phone.equals(userphone) || password.equals(userpassword)){
            System.out.println("进入数据");
            return "/sj/sj_index";
        }else {
            System.out.println("进入登录");
            return "/liyi/admin/LoginAdmin";
        }

    }







    //前台登录操作的代码
    @RequestMapping("useradmin2")
    @ResponseBody
    public Object useradmin2(@RequestBody(required=true) Map<String,Object> p,HttpSession session){
        sj_Information sj=new sj_Information();
        sj.setPhone((String)p.get("phone"));
        sj.setPassword((String)p.get("password"));
        List<sj_Information> list=(List<sj_Information>)(List)sj_informationServic.getmet2(sj);
        String userid = null;
        String usernick=null;
        String users_id=null;
        String userphone=null;
        String userpassword=null;

        for (sj_Information s:list
                ) {
            userid=s.getId();
            usernick=s.getNickname();
            users_id=s.getS_id();
            userpassword=s.getPassword();
            userphone=s.getPhone();
        }

        System.out.println("查询的数据："+userid+","+usernick+","+users_id+","+userpassword+userphone);
        int code=0;
        Map map=new HashMap();

        if (userid==null){
            code=0;
        }else {
            session.setAttribute("userid",userid);
            session.setAttribute("usernick",usernick);
            session.setAttribute("users_id",users_id);

            code=1;
        }
        map.put("code2",code);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }





    @RequestMapping("yanzheng")
    @ResponseBody
    public Object yanzheng(@RequestBody(required=true) Map<String,Object> p){

        String password=(String)p.get("password");
        String id=""+p.get("id");
        List list=sj_informationServic.yanzheng(password,id);
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;

    }





    //商家信息查询操作
    @RequestMapping("getmet3")
    @ResponseBody
  public Object getment3(@RequestBody(required=true) Map<String,Object> p){
        String id=""+p.get("id");
       List list=sj_informationServic.getmet3(id);
        Map map=new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));
        return jsonObject;
    }

    //查询所有用户
    @RequestMapping("getuser")
    @ResponseBody
    public Object getuser() {
        List list=sj_informationServic.getuser();
        Map map =new HashMap();
        map.put("obj",list);
        com.alibaba.fastjson.JSONObject jsonObject=JSON.parseObject(JSON.toJSONString(map));

      return jsonObject;
    }


//映射地址
@RequestMapping("esc")
public String esc(HttpServletRequest request){
    HttpSession session=request.getSession();
    //将session销毁
    session.invalidate();
  return "/liyi/admin/LoginAdmin";
}

    @RequestMapping("sj_index")
    public String sjindex(HttpSession session){

    Object s=  session.getAttribute("userid");

        if (s==null){
            return "/liyi/admin/LoginAdmin";

        }else {
            return "/sj/sj_index";
        }
    }
    @RequestMapping("sj_information")
    public String sjinformation(){
        return "/sj/sj_information";
    }
    @RequestMapping("sj_getinformation")
    public String sjgetinformation(){
        return "/sj/sj_getinformation";
    }

    @RequestMapping("sj_issue")
    public String sjissue(){
        return "/sj/sj_issue";
    }

    @RequestMapping("us_admin")
    public String usadmin(){
        return "/liyi/admin/LoginAdmin";
    }

    @RequestMapping("sj_evaluation")
    public String evaluation(){
        return "/sj/sj_evaluation";
    }
    @RequestMapping("sj_evalanswer")
    public String evalanswer(){
        return "/sj/sj_evalanswer";
    }


    @RequestMapping("sj_sales")
    public String sj_sales(){
        return "sj/sj_sales";
    }


}
