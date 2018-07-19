package kesun.dao.sj.inter;

import kesun.dao.IDoData;

import java.util.List;
import java.util.Map;

/****************************
 *
 *@author: Xcc😊
 *@CreateTime: 2018年05月15日 16:09 
 *@description: 商家dao层
 *@interface： IBusiness
 *
 *****************************/
public interface jy_IBusiness extends IDoData {

    List<Map<String,Object>> getme2(String id);

}
