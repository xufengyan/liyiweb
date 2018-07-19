package kesun.dao.liyi;

import kesun.dao.IDoData;

import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/5/23.
 */
public interface sj_Store extends IDoData{


   List<Map> getstoreview(String storename);

   List<Map> getmenewstore();
}
