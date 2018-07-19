package kesun.controller;

import kesun.entity.AbsBusinessObject;
import kesun.entity.AbsSuperObject;
import kesun.entity.system.User;
import kesun.util.JSONAndObject;
import kesun.util.Tool;

import java.util.Map;

/**
 * 业务数据超级控制层类
 * Created by wph-pc on 2017/9/8.
 */
public abstract class KesunBusinessController extends KesunTopController {

    /*获取客户端参数初始化*/
    public AbsSuperObject initParameter(Map<String,Object> p)
     {
         AbsBusinessObject model= JSONAndObject.MapToJavaBean(p,((AbsBusinessObject)getService().getModel()).getClass()); //获取页面对象

         /*如果id为空，就将id设置随机数*/
         if (model.getId().trim().equals(""))
             model.setId(Tool.CreateID());
         /*此处写入用户操作信息，组织结构信息、角色信息*/
         User temp= KesunTopController.GetCurrentUser();
         model.setActor(temp.getActors()==null?null:temp.getActors().get(0));//设置用户角色
         model.setOrg(temp.getOrg()==null?null:temp.getOrg());
         model.setUser(temp);

         getService().setModel(model);//设置操作实体对象
         return model;
     }
}
