package kesun.dao.liyi;

import kesun.dao.IDoData;

import java.util.List;
import java.util.Map;

public interface Isjhy_order extends IDoData {



    //查询订单状态
    List<Map> getstatus(String u_id);


    List<Map> getstatus2(String u_id);


    List<Map> fandorder(String u_id);


    List<Map> fandbyPageorder(Map map);

    List<Map> fandbyPageorder2(Map map);


    List<Map> refundPageorder(Map map);

    int getRefundCount(Map map);

    int getOrderCount(Map map);

    int getOrderCount2(Map map);

    List<Map> ordersviewgetMe(String id);
    List<Map> ordersviewgetMe2(String id);



    List<Map> ordergetMe2(Map map);

}
