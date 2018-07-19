package kesun.bll.ht.impl;

import kesun.bll.SuperService;
import kesun.bll.ht.H_IOrders;
import kesun.dao.IDoData;
import kesun.entity.ht.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service("p_bOrders")
public class H_OrdersServiceImpl extends SuperService implements H_IOrders {
    @Autowired
    private kesun.dao.ht.H_IOrders dao;

    public H_OrdersServiceImpl() {
        setModel(new Orders());
    }
    public List<Map<String, Object>> getLoadoutExcelColumns() {
        List<Map<String,Object>> temp=new ArrayList<Map<String, Object>>();
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("commname","商品名");
        temp.add(map);
        return temp;
    }

    @Override
    public Boolean isDelete() {
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }

    public String getLoadoutExcelFileName() {
        return "订单基本信息";
    }

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
    public List<Map<String, Object>> getme2(String id){
        return dao.getme2(id);
    }
    public List<Map<String, Object>> getfour(String storename){
        return dao.getfour(storename);
    }
}
