package kesun.bll.liyi.impl;

import kesun.bll.SuperService;
import kesun.dao.IDoData;
import kesun.dao.liyi.Iyh_Refund;
import kesun.entity.liyi.yh_refund;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("byh_refund")
public class yh_RefundService extends SuperService {

    @Autowired
    private Iyh_Refund dao;

    public yh_RefundService(){
    setModel(new yh_refund());
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

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
}
