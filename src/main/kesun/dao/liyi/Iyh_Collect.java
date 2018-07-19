package kesun.dao.liyi;

import kesun.dao.IDoData;

import java.util.List;
import java.util.Map;

public interface Iyh_Collect extends IDoData {

    List getcollect(Map map);


    List collectstorecomm(Map map);

    List collectPage(Map map);

    int  collectCount(Map map);
}
