package kesun.bll.ht.impl;

import kesun.bll.SuperService;
import kesun.bll.ht.IStrategy;
import kesun.dao.IDoData;
import kesun.dao.ht.p_IStrategy;
import kesun.entity.ht.Strategy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("p_bStratgy")
public class p_StrategyServiceImpl extends SuperService implements IStrategy {

    @Autowired
    private p_IStrategy dao;

    public p_StrategyServiceImpl(){

        setModel(new Strategy());
    }

    public List<Map<String, Object>> getLoadoutExcelColumns() {
        List<Map<String,Object>> temp=new ArrayList<Map<String, Object>>();
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("u_id","内容");

        temp.add(map);

        return temp;
    }

    @Override
    public Boolean isDelete() {
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }



    public String getLoadoutExcelFileName() {
        return "押金管理";
    }

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
}
