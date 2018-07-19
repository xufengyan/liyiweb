package kesun.bll.sj.impl;

import kesun.bll.SuperService;
import kesun.bll.sj.jy_stock;
import kesun.dao.IDoData;
import kesun.entity.sj.jy_Commodity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/****************************
 *
 *@author Xcc😊
 *@CreateTime: 2018年05月29日 16:51 
 *@description 库存Service
 *@Class: StockServiceImpl
 *
 *****************************/

@Service("bStock")
public class jy_StockServiceImpl extends SuperService implements jy_stock {

    @Autowired
    private kesun.dao.sj.inter.jy_IStock dao;

    public jy_StockServiceImpl(){

        setModel(new jy_Commodity());

    }

    @Override
    public Boolean isDelete(){
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }


    public List<Map<String,Object>> getme2(String id){

        return dao.getme2(id);
    }


    public List<Map<String, Object>> getLoadoutExcelColumns() {
        List<Map<String,Object>> temp = new ArrayList<Map<String, Object>>();
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("id","订单编号");
        Map<String,Object> map2 = new HashMap<String, Object>();
        map2.put("commname","商品名");
        Map<String,Object> map3 = new HashMap<String, Object>();
        map3.put("price","商品价格");
        Map<String,Object> map4 = new HashMap<String, Object>();
        map4.put("stylename","商品样式");
        Map<String,Object> map5 = new HashMap<String, Object>();
        map5.put("stock","商品库存量");
        temp.add(map);
        temp.add(map2);
        temp.add(map3);
        temp.add(map4);
        temp.add(map5);

        return temp;
    }


    public String getLoadoutExcelFileName() {
        return "商品库存信息表";
    }

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
}
