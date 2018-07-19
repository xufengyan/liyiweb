package kesun.bll.ht.impl;


import kesun.bll.SuperService;
import kesun.dao.IDoData;
import kesun.dao.ht.impl.p_Istore;
import kesun.entity.ht.Store;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service("bstore")
public class p_storeServiceImpl extends SuperService {

    @Resource(name="dstore")
    private p_Istore dao;

    public p_storeServiceImpl()
    {
        setModel(new Store());
    }

    public List<Map<String, Object>> getLoadoutExcelColumns() {
        return null;
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
