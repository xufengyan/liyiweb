package kesun.dao.sj.inter;

import kesun.dao.IDoData;

import java.util.List;
import java.util.Map;

/****************************
 *
 *@author: Xcc😊
 *@CreateTime: 2018年05月29日 16:36 
 *@description: 库存dao接口
 *@interface： IStock
 *
 *****************************/
public interface jy_IStock extends IDoData {

    List<Map<String,Object>> getme2(String id);

}
