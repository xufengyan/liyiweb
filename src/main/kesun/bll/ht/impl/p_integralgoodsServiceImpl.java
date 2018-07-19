package kesun.bll.ht.impl;

import kesun.bll.SuperService;
import kesun.dao.IDoData;
import kesun.entity.ht.i_integralgoods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kesun.dao.ht.p_integralgoods;
import java.util.List;
import java.util.Map;

@Service("p_bintegdralgoods")
public class p_integralgoodsServiceImpl extends SuperService {
    @Autowired
    private p_integralgoods dao;

    public p_integralgoodsServiceImpl(){
        setModel(new i_integralgoods());
    }

    public List<Map<String, Object>> getLoadoutExcelColumns() {
        return null;
    }

    @Override
    public Boolean isDelete() {
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }
    public List<Map<String,Object>> findByPagetwo(String id){
        return dao.findByPagetwo(id);
    }

    public String getLoadoutExcelFileName() {
        return "";
    }

    public IDoData getDAO() {
        return dao;
    }


    public List getSaveAll(String filePath) {
        return null;
    }



}
