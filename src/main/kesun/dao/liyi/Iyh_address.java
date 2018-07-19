package kesun.dao.liyi;

import kesun.dao.IDoData;
import kesun.entity.liyi.yh_address;

import java.util.List;
import java.util.Map;

public interface Iyh_address extends IDoData {


    List<Map> getaddress(yh_address address);

    int addaddress(yh_address address);
    int updateaddress(String id);

    int updateaddress2(String id);
}
