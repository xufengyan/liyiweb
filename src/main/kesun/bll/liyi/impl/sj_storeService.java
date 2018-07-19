package kesun.bll.liyi.impl;

import kesun.bll.SuperService;
import kesun.bll.liyi.Isj_store;
import kesun.dao.IDoData;
import kesun.dao.liyi.sj_Store;
import kesun.entity.liyi.sj_store;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/5/23.
 */
@Service("bsj_store")
public class sj_storeService extends SuperService implements Isj_store{

    @Autowired
    private sj_Store dao;

    public sj_storeService (){
        setModel(new sj_store());
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

    public List<Map> getstoreview(String storename){

        return dao.getstoreview(storename);
    }

    //查询新产品
    public List<Map> getmenewstore(){
        return dao.getmenewstore();
    }


    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
}
