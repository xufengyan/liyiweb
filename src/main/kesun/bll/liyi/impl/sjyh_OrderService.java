package kesun.bll.liyi.impl;


import kesun.bll.SuperService;
import kesun.bll.liyi.Isjhy_order;
import kesun.dao.IDoData;
import kesun.entity.liyi.sjyh_order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("bsjyh_order")
public class sjyh_OrderService extends SuperService implements Isjhy_order {


    @Autowired
    private kesun.dao.liyi.Isjhy_order dao;

    public sjyh_OrderService(){
        setModel(new sjyh_order());
    }
    @Override
    public Boolean isDelete() {
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }

    public List<Map<String, Object>> getLoadoutExcelColumns() {
        return null;
    }

    public List<Map> getstatus(String u_id){

        return dao.getstatus(u_id);
    }
    public List<Map> getstatus2(String u_id){

        return dao.getstatus2(u_id);
    }

    public List<Map> fandorder(String u_id){

        return dao.fandorder(u_id);
    }


    public int getOrderCount(Map map){

        return dao.getOrderCount(map);
    }

    public int getOrderCount2(Map map){

        return dao.getOrderCount2(map);
    }
    public int getRefundCount(Map map){
        return dao.getRefundCount(map);
    }

    public List<Map> ordersviewgetMe(String id){

        return dao.ordersviewgetMe(id);
    }
    public List<Map> ordersviewgetMe2(String id){

        return dao.ordersviewgetMe2(id);
    }

    public List<Map> refundPageorder(Map map){
        return dao.refundPageorder(map);
    }

    public List<Map> ordergetMe2(Map map){
        return dao.ordergetMe2(map);
    }


    public List<Map> fandbyPageorder(Map map){
        return dao.fandbyPageorder(map);
    }

    public List<Map> fandbyPageorder2(Map map){
        return dao.fandbyPageorder2(map);
    }



    public String getLoadoutExcelFileName() {
        return null;
    }

    public IDoData getDAO() {
        return dao;
    }


    public List getSaveAll(String filePath) {
        return null;
    }


}
