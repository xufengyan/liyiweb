package kesun.bll.sj.impl;

import kesun.bll.SuperService;
import kesun.bll.sj.jy_ILogistics;
import kesun.dao.IDoData;
import kesun.entity.sj.jy_Logistics;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/****************************
 *
 *@author Xcc😊
 *@CreateTime: 2018年05月27日 13:45 
 *@description 物流Service
 *@Class: LogisticsServiceImpl
 *
 *****************************/

@Service("bLogistics")
public class jy_LogisticsServiceImpl extends SuperService implements jy_ILogistics {

    @Autowired
    private kesun.dao.sj.inter.jy_ILogistics dao;

    public jy_LogisticsServiceImpl(){
        setModel(new jy_Logistics());
    }

    @Override
    public Boolean isDelete(){
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }



    public List<Map<String, Object>> getLoadoutExcelColumns() {
        return null;
    }

    public String getLoadoutExcelFileName() {
        return null;
    }

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
}
