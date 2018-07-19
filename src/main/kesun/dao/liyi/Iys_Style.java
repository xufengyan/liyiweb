package kesun.dao.liyi;

import kesun.dao.IDoData;

import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/5/21.
 */
public interface Iys_Style extends IDoData{

    int add2(Object obj);

    List<Map> getstyle(Map map);
}
