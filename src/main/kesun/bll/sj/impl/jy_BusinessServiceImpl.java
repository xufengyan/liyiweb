package kesun.bll.sj.impl;

import kesun.bll.SuperService;
import kesun.bll.sj.jy_IBusiness;
import kesun.dao.IDoData;

import kesun.entity.sj.jy_Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/****************************
 *
 *@author Xcc😊
 *@CreateTime: 2018年05月15日 16:05 
 *@description 商家服务层
 *@Class: BusinessServiceImpl
 *
 *****************************/

@Service("bBusiness")
public class jy_BusinessServiceImpl extends SuperService implements jy_IBusiness {

    @Autowired
    private kesun.dao.sj.inter.jy_IBusiness dao;

    public jy_BusinessServiceImpl(){
        setModel(new jy_Order());
    }

//    orders_id,ordertime,a_receiver,a_address,a_phone,commname,goodsnumber,reality

    public List<Map<String, Object>> getLoadoutExcelColumns() {
        List<Map<String,Object>> temp = new ArrayList<Map<String, Object>>();
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("orders_id","订单编号");
        Map<String,Object> map1 = new HashMap<String, Object>();
        map1.put("ordertime","下单时间");
        Map<String,Object> map2 = new HashMap<String, Object>();
        map2.put("commname","商品名");
        Map<String,Object> map3 = new HashMap<String, Object>();
        map3.put("goodsnumber","购买数量");
        Map<String,Object> map4 = new HashMap<String, Object>();
        map4.put("reality","实际价格");
        Map<String,Object> map5 = new HashMap<String, Object>();
        map5.put("a_receiver","收件人");
        Map<String,Object> map6 = new HashMap<String, Object>();
        map6.put("a_address","收货地址");
        Map<String,Object> map7 = new HashMap<String, Object>();
        map7.put("a_phone","联系方式");
        temp.add(map);
        temp.add(map2);
        temp.add(map3);
        temp.add(map4);
        temp.add(map5);
        temp.add(map6);
        temp.add(map7);

        return temp;
    }


    @Override
    public Boolean isDelete(){
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }


    public List<Map<String,Object>> getme2(String id){

        return dao.getme2(id);
    }

    public String getLoadoutExcelFileName() {
        return "订单信息";
    }

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
}
