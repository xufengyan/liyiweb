package kesun.bll.liyi.impl;

import kesun.bll.SuperService;
import kesun.bll.liyi.Iys_style;
import kesun.dao.IDoData;
import kesun.dao.liyi.Iys_Style;
import kesun.entity.liyi.ys_Style;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/5/21.
 */

@Service("bys_style")
public class ys_StyleService extends SuperService implements Iys_style{



    @Autowired
    private Iys_Style dao;


    public ys_StyleService(){
        setModel(new ys_Style());
    }



    public int add2(ys_Style yss){

        return dao.add2(yss);
    }


    public List<Map> getstyle(Map map){
        return dao.getstyle(map);
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
}
