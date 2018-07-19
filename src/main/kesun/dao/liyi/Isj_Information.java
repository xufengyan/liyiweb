package kesun.dao.liyi;

import kesun.dao.IDoData;
import kesun.entity.liyi.sj_Information;

import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/5/16.
 */
public interface Isj_Information extends IDoData{

 List<sj_Information> getmet2(Object obj);

 List<Map<String,Object>> getmet3(String id);

 List<Map> yanzheng(String password,String id);


 List<Map> getuser();
}
