
package kesun.controller.educationbaseinfo.impl;

import kesun.bll.SuperService;
import kesun.bll.educationbaseinfo.impl.StudentServiceImpl;
import kesun.controller.KesunBusinessController;
import kesun.controller.educationbaseinfo.IStudent;
import kesun.entity.AbsSuperObject;
import kesun.entity.educationbaseinfo.College;
import kesun.util.Tool;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/*****************************************************
 类：StudentController;中文：
 功能描述：控制层，
 作者：
 创建日期：Mon Jan 15 22:31:42 CST 2018
 版本：1.0.0.0
 ******************************************************/
@Controller
@RequestMapping("student")
public class StudentController extends KesunBusinessController implements IStudent {
    @Resource(name = "bStudent")
    private StudentServiceImpl bll;

    public SuperService getService() {
        return bll;
    }

    public AbsSuperObject updateModel(AbsSuperObject model) {
        if (model == null) {
            model = new College();
            model.setId(Tool.CreateID());
        }
        if (model.getId().trim().equals(""))
            model.setId(Tool.CreateID());
        return model;
    }/*查询条件设置*/

    public Map<String, Object> getConditionParam(Map<String,Object> param) {
        if (param == null) return null;//判断条件是否为空param是页面传递的值
        Map<String, Object> values = new HashMap<String, Object>();
        if (param.get("name")!=null)
            values.put("name",param.get("name"));

        return values;
    }

    /*数据过滤方法*/
    public Map<String, Object> setFindFilter(Map<String,Object> param) {
        return null;
    }

    @RequestMapping("index")
    public String index() {
        return "educationbaseinfo/student/studentManage";
    }
    @RequestMapping("uioperate")
    public String uiOperate() {
        return "educationbaseinfo/student/student";
    }
}
