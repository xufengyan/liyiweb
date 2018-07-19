package kesun.dao.liyi;

import kesun.dao.IDoData;

import java.util.List;
import java.util.Map;

public interface Isj_evaluation extends IDoData {

        List<Map<String,Object>> getm2(String storeid,String type,String evalustatus);


        List<Map<String,Object>> getm2Page(Map map);

        int getm2Count(Map map);

        List<Map<String,Object>> getm3(String id);

        List<Map> evaluationgetm (String comid);

        List<Map> evaluationcount(String comid);

        List<Map> evaluationgetme2(String comid,String storeid,String type);

        List<Map> usergetevaluation(Map map);

        int evaluationCount(Map map);
}
