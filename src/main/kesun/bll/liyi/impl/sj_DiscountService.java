package kesun.bll.liyi.impl;

import kesun.bll.SuperService;
import kesun.dao.IDoData;
import kesun.dao.liyi.Isj_discount;
import kesun.entity.liyi.sj_discount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service("bsjb_discount")
public class sj_DiscountService extends SuperService {

    @Autowired
    private Isj_discount dao;

    public sj_DiscountService(){
        setModel(new sj_discount());
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


    public List<Map> getdiscountview(String u_id,String status){

        return dao.getdiscountview(u_id,status);
    }


    public List getSaveAll(String filePath) {
        return null;
    }
}
