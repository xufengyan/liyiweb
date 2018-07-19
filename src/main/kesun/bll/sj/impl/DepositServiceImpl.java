package kesun.bll.sj.impl;

import kesun.bll.SuperService;
import kesun.dao.IDoData;
import kesun.dao.sj.inter.jy2_IDeposit;
import kesun.entity.liyi.sj_store;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/4/14.
 */
@Service("bllDeposit")
public class DepositServiceImpl extends SuperService  {
    @Autowired
    private jy2_IDeposit dao;

    public DepositServiceImpl() {
        setModel(new sj_store());
    }

    public List<Map<String, Object>> getLoadoutExcelColumns() {
        List<Map<String,Object>> temp=new ArrayList<Map<String, Object>>();
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("name","名称");
        Map<String,Object> map2=new HashMap<String, Object>();
        map2.put("usertype","角色类型");
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
        return "押金基本信息";
    }

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
    //统计
    public List<Map> find2(){
        try {
            return dao.find2();
        } catch (Exception e) {
            e.printStackTrace();
            return  null;
        }
    }
}
