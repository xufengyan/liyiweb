package kesun.bll.liyi.impl;

import kesun.bll.SuperService;
import kesun.bll.liyi.Iyh_collect;
import kesun.dao.IDoData;
import kesun.dao.liyi.Iyh_Collect;
import kesun.entity.liyi.yh_collect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("byh_collect")
public class yh_CollcetService extends SuperService implements Iyh_collect {


    @Autowired
    private Iyh_Collect dao;


    public yh_CollcetService(){

        setModel(new yh_collect());
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


    public List getcollect(Map map){
        return dao.getcollect(map);
    }

    public List collectstorecomm(Map map){
        return dao.collectstorecomm(map);
    }

    public List collectPage(Map map){
        return dao.collectPage(map);
    }

    public int collectCount(Map map){
        return dao.collectCount(map);
    }
}
