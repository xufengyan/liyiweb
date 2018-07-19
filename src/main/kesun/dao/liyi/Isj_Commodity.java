package kesun.dao.liyi;

import kesun.dao.IDoData;

import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/5/20.
 */
public interface Isj_Commodity extends IDoData{

     /**
      * 添加商品
      * @param obj
      * @return
      */
     int add2(Object obj);

     /**
      *前台查询商品
      * @param subname
      * @param start
      * @param limit
      * @return
      */
     List<Map<String,Object>> commget(String subname,int  start,int limit);

     List<Map> commfandbyPage(Map map);

     int commfandbyCount(Map map);

     List<Map> getmecommstyle(String id);

     List<Map> getmecommstore(String id,String storeid);

     List<Map> getmecommstyle2(String id,String styleid);

     List<Map> getdiscount(Map map);

     List<Map> getmecommstorePage(Map map);

     int getmecommstorePageCount(Map map);
}
