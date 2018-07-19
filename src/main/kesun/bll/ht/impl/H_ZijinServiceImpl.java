package kesun.bll.ht.impl;

import kesun.bll.SuperService;
import kesun.bll.ht.H_IZijin;
import kesun.dao.IDoData;
import kesun.entity.ht.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service("p_bZijin")
public class H_ZijinServiceImpl extends SuperService implements H_IZijin {
    @Autowired
    private kesun.dao.ht.H_IZijin dao;
    public H_ZijinServiceImpl() {
        setModel(new Orders());
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
        return null;
    }

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
    public List<Map<String, Object>> getone(String status){
        return dao.getone(status);
    }
    public List<Map<String, Object>> gettwo(String storename){
        return dao.gettwo(storename);
    }
    public List<Map<String, Object>> getthree(String storename){
        return dao.getthree(storename);
    }
    public List<Map<String, Object>> getfour(String storename){
        return dao.getfour(storename);
    }
    public List<Map<String,Object>> findByPagetwo(String storename){
    return dao.findByPagetwo(storename);
}

}
