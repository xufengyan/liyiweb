package kesun.bll.sj.impl;
import  kesun.dao.sj.inter.jy_ICommodity;
import kesun.bll.SuperService;
import kesun.dao.IDoData;
import kesun.entity.sj.jy_Commodity;
import kesun.entity.sj.jy_Commodity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/****************************
 *
 *@author Xcc😊
 *@CreateTime: 2018年06月15日 13:53 
 *@description 商品
 *@Class: CommodityServiceImpl
 *
 *****************************/

@Service("bCommodity")
public class jy_CommodityServiceImpl extends SuperService {

    @Autowired
    private jy_ICommodity dao;

    public jy_CommodityServiceImpl(){
        setModel(new jy_Commodity());
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
