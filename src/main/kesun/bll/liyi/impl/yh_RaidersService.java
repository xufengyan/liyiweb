package kesun.bll.liyi.impl;

import kesun.bll.SuperService;
import kesun.dao.IDoData;
import kesun.dao.liyi.Iyh_raiders;
import kesun.entity.liyi.yh_raiders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("braiders")
public class yh_RaidersService extends SuperService {

    @Autowired
    private Iyh_raiders dao;


    public yh_RaidersService(){

        setModel(new yh_raiders());
    }



    @Override
    public List<Map<String, Object>> getLoadoutExcelColumns() {
        return null;
    }

    @Override
    public String getLoadoutExcelFileName() {
        return null;
    }

    @Override
    public IDoData getDAO() {
        return dao;
    }

    public List<Map> raidersPage(Map map){
        return dao.raidersPage(map);
    }

    public int  raidersCount(Map map){
        return dao.raidersCount(map);
    }



    @Override
    public List getSaveAll(String filePath) {
        return null;
    }
}
