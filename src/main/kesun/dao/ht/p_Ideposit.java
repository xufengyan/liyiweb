package kesun.dao.ht;

import kesun.dao.IDoData;

import java.util.List;
import java.util.Map;

public interface p_Ideposit extends IDoData {

    List<Map<String,Object>> getmet(String id);
    /*查找符合条件values的数据*/
    List<Map<String,Object>> find3a(Map conValues);
}
