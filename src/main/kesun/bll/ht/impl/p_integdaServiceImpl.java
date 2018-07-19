package kesun.bll.ht.impl;


import kesun.bll.SuperService;
import kesun.dao.IDoData;
import kesun.dao.ht.p_IIntegda;
import kesun.entity.ht.Commodity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Map;
@Service("p_bintegda")
public class p_integdaServiceImpl extends SuperService {

   @Autowired
    private p_IIntegda dao;

    public p_integdaServiceImpl(){
        setModel(new Commodity());
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
        return "店铺信息";
    }

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }

}
