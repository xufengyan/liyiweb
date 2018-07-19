package kesun.dao.sj.inter;

import kesun.dao.IDoData;

import java.util.List;
import java.util.Map;

/****************************
 *
 *@author: Xcc😊
 *@CreateTime: 2018年06月07日 19:41 
 *@description: 退款管理接口
 *@interface： IRefund
 *
 *****************************/
public interface jy_IRefund extends IDoData {

    List<Map<String,Object>> getrefund(String id);

    int modify(Object obj);

    int refuse(Object obj);

}
