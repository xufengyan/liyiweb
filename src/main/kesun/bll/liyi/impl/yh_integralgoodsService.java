package kesun.bll.liyi.impl;

import kesun.bll.SuperService;
import kesun.dao.IDoData;
import kesun.dao.liyi.Iyh_integralgoods;
import kesun.entity.liyi.yh_integralgoods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("yh_bintegralgoods")
public class yh_integralgoodsService extends SuperService {


    @Autowired
    private Iyh_integralgoods dao;


    public  yh_integralgoodsService(){
        setModel(new yh_integralgoods());
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

    @Override
    public List getSaveAll(String filePath) {
        return null;
    }



    public List getintegralgoods(Map map){
        return dao.getintegralgoods(map);
    }

}
