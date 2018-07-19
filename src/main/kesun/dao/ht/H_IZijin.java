package kesun.dao.ht;

import kesun.dao.IDoData;

import java.util.List;
import java.util.Map;

public interface H_IZijin extends IDoData {
    List<Map<String, Object>> getone(String status);

    List<Map<String, Object>> gettwo(String storename);

    List<Map<String, Object>> getthree(String storename);

    List<Map<String, Object>> getfour(String storename);

    List<Map<String,Object>> findByPagetwo(String storename);

}
