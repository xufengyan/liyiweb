package kesun.bll.liyi.impl;

import kesun.bll.SuperService;
import kesun.bll.liyi.Isj_commodity;
import kesun.dao.IDoData;
import kesun.dao.liyi.Isj_Commodity;
import kesun.entity.liyi.sj_commodity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/5/20.
 */
@Service("bsj_commodity")
public class sj_CommodityService extends SuperService implements Isj_commodity{


    @Autowired
    private Isj_Commodity dao;


    public sj_CommodityService(){
        setModel(new sj_commodity());
    }


    public int add2(sj_commodity comm){

        return dao.add2(comm);
    }

    public List commget(String subname,int start,int limit){

        return dao.commget(subname,start,limit);
    };


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

    public List commfandbyPage(Map map){
        return dao.commfandbyPage(map);
    }
    public int commfandbyCount(Map map){
        return dao.commfandbyCount(map);
    }


    //购买页面样式查询
    public List<Map> getmecommstyle(String id){
        return dao.getmecommstyle(id);
    }

    public List<Map> getmecommstore(String id,String storeid){
        return dao.getmecommstore(id,storeid);
    }

    //支付页面商品查询
    public List<Map> getmecommstyle2(String id,String styleid){
        return dao.getmecommstyle2(id,styleid);
    }

    public List<Map> getdiscount(Map map){
        return dao.getdiscount(map);
    }


    public List<Map> getmecommstorePage(Map map){
        return dao.getmecommstorePage(map);
    }

    public int getmecommstorePageCount(Map map){
        return dao.getmecommstorePageCount(map);
    }

}
