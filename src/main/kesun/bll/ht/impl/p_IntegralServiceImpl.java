package kesun.bll.ht.impl;

import kesun.bll.SuperService;
import kesun.bll.ht.IIntegral;
import kesun.dao.IDoData;
import kesun.dao.ht.p_IIntegral;
import kesun.entity.ht.Integral;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("p_bIntegral")
public class p_IntegralServiceImpl extends SuperService implements IIntegral {

    @Autowired
    private p_IIntegral dao;

    public p_IntegralServiceImpl(){
        setModel(new Integral());
    }


    public List<Map<String, Object>> getLoadoutExcelColumns() {
        List<Map<String,Object>> temp=new ArrayList<Map<String, Object>>();
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("commname","名称");
        Map<String,Object> map2=new HashMap<String, Object>();
        map2.put("status","状态");
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
        return "积分兑换管理";
    }

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
}
