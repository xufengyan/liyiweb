package kesun.dao.ht;

import kesun.dao.IDoData;

import java.util.List;
import java.util.Map;

public interface p_integralgoods extends IDoData {
    List<Map<String,Object>> findByPagetwo(String id);
}
