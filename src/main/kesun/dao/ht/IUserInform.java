package kesun.dao.ht;

import kesun.dao.IDoData;


import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/4/14.
 */
public interface IUserInform extends IDoData{

    /*查找符合条件values的对象,以List的对象形式返回*/
    List<Map> find2();
}
