package kesun.dao.liyi;

import kesun.dao.IDoData;

import java.util.List;
import java.util.Map;

public interface Isj_discount extends IDoData {

    List<Map> getdiscountview(String u_id,String status);


}
