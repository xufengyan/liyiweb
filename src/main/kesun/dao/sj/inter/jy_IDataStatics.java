package kesun.dao.sj.inter;

import kesun.dao.IDoData;

import java.util.List;
import java.util.Map;

/****************************
 *
 *@author: Xcc😊
 *@CreateTime: 2018年06月04日 09:10 
 *@description: 数据统计
 *@interface： IDataStatics
 *
 *****************************/
public interface jy_IDataStatics extends IDoData {
    List<Map<String,Object>> cList(Map map);
    List<Map> heard(Map map);
}
