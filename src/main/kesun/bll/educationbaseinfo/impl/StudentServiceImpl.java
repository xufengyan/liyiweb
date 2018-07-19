
package kesun.bll.educationbaseinfo.impl;

import kesun.bll.SuperService;
import kesun.bll.educationbaseinfo.ICollege;
import kesun.bll.educationbaseinfo.IStudent;
import kesun.dao.IDoData;
import kesun.entity.educationbaseinfo.College;
import kesun.entity.educationbaseinfo.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*****************************************************
 类：CollegeServiceImpl;中文：
 功能描述：服务层，
 作者：
 创建日期：Mon Jan 15 22:31:42 CST 2018
 版本：1.0.0.0
 *****************************************************/
@Service("bStudent")
public class StudentServiceImpl extends SuperService implements IStudent {
    @Autowired
    private kesun.dao.educataionbaseinfo.inter.IStudent dao;

    public StudentServiceImpl() {
        setModel(new Student());
    }

    public List<Map<String, Object>> getLoadoutExcelColumns() {
        List<Map<String,Object>> temp=new ArrayList<Map<String, Object>>();
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("name","姓名");
        temp.add(map);
        return temp;
    }

    @Override
    public Boolean isDelete() {
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }

    public String getLoadoutExcelFileName() {
        return "学生基本信息";
    }

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
}
