
package kesun.bll.educationbaseinfo.impl;

import kesun.bll.SuperService;
import kesun.bll.educationbaseinfo.ICollege;
import kesun.dao.IDoData;
import kesun.entity.educationbaseinfo.College;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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
@Service("bCollege")
public class CollegeServiceImpl extends SuperService implements ICollege {
    @Autowired
    private kesun.dao.educataionbaseinfo.inter.ICollege dao;

    public CollegeServiceImpl() {
        setModel(new College());
    }

    public List<Map<String, Object>> getLoadoutExcelColumns() {
        List<Map<String,Object>> temp=new ArrayList<Map<String, Object>>();
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("name","名称");
        Map<String,Object> map2=new HashMap<String, Object>();
        map2.put("address","地址");
        temp.add(map);
        temp.add(map2);
        return temp;
    }

    @Override
    public Boolean isDelete() {
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }

    public String getLoadoutExcelFileName() {
        return "高校基本信息";
    }

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
}
