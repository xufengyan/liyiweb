package kesun.bll.ht.impl;

import kesun.bll.SuperService;
import kesun.bll.ht.IStore;
import kesun.dao.IDoData;
import kesun.entity.ht.Store;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/4/14.
 */
@Service("bllStore")
public class StoreServiceImpl extends SuperService implements IStore {
    @Autowired
    private kesun.dao.ht.IStore dao;

    public StoreServiceImpl() {
        setModel(new Store());
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
        return "店铺基本信息";
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
