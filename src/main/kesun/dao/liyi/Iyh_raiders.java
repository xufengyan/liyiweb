package kesun.dao.liyi;

import kesun.dao.IDoData;

import java.util.List;
import java.util.Map;

public interface Iyh_raiders extends IDoData {


    List<Map> raidersPage(Map map);

    int raidersCount(Map map);

}
