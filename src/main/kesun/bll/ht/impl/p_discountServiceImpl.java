package kesun.bll.ht.impl;

import kesun.bll.SuperService;
import kesun.dao.IDoData;
import kesun.entity.ht.p_discount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("p_bdiscount")
public class p_discountServiceImpl extends SuperService {

    @Autowired
    private kesun.dao.ht.p_discount dao;

    private p_discountServiceImpl(){

        setModel(new p_discount());
    }

    public List<Map<String, Object>> getLoadoutExcelColumns() {
        return null;
    }

    @Override
    public Boolean isDelete() {
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }

    public String getLoadoutExcelFileName() {
        return "优惠券";
    }

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
}
