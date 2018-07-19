package kesun.dao.ht;

import kesun.dao.IDoData;

import java.util.List;
import java.util.Map;

public interface H_IOrders extends IDoData {
    List<Map<String, Object>> getme2(String id);
    List<Map<String, Object>> getfour(String storename);
}
