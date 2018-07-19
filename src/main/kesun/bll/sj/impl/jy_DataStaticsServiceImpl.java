package kesun.bll.sj.impl;
import kesun.bll.SuperService;


import kesun.dao.IDoData;
import kesun.dao.sj.inter.jy_IDataStatics;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/****************************
 *
 *@author Xcc😊
 *@CreateTime: 2018年06月04日 09:21
 *@description
 *@Class: DataStaticsServiceImpl
 *
 *****************************/

@Service("sjbDataStatics")
public class jy_DataStaticsServiceImpl  extends SuperService {

    @Autowired
    private jy_IDataStatics dao;

    public List<Map<String, Object>> cList(Map map){
        return dao.cList(map);
    }

    public List<Map> heard(Map map){
        return dao.heard(map);
    }

    public List<Map<String, Object>> getLoadoutExcelColumns() {
        return null;
    }

    public String getLoadoutExcelFileName() {
        return null;
    }

    public IDoData getDAO() {
        return null;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
}
