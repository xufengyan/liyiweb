package kesun.bll.liyi.impl;

import kesun.bll.SuperService;
import kesun.bll.liyi.Iyh_Shoppingcart;
import kesun.dao.IDoData;
import kesun.entity.liyi.yh_shoppingcart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service("byh_shoppingcart")
public class yh_ShoppingcartService extends SuperService implements Iyh_Shoppingcart {

    @Autowired
    private kesun.dao.liyi.Iyh_Shoppingcart dao;


    public yh_ShoppingcartService(){
        setModel(new yh_shoppingcart());
    }

    @Override
    public Boolean isDelete() {
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }
    public List<Map<String, Object>> getLoadoutExcelColumns() {
        return null;
    }

    public String getLoadoutExcelFileName() {
        return null;
    }

    public List<Map> getusershoopingcart(Map map){

        return dao.getusershoopingcart(map);
    }


    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
}
