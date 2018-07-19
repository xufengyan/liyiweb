package kesun.bll.sj.impl;

import kesun.bll.SuperService;
import kesun.bll.sj.jy_sales;
import kesun.dao.IDoData;
import kesun.entity.sj.jy2_sales;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/5/23.
 */
@Service("bsj_sales")
public class jy_salesService extends SuperService implements jy_sales {

    @Autowired
    private kesun.dao.sj.inter.jy2_sales dao;

    public List<Map<String, Object>> getLoadoutExcelColumns() {
        List<Map<String,Object>> temp=new ArrayList<Map<String, Object>>();
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("u_id","商家编号");
        Map<String,Object> map1=new HashMap<String, Object>();
        map1.put("commname","商品名称");
        Map<String,Object> map2=new HashMap<String, Object>();
        map2.put("price","总销售额");
        Map<String,Object> map3=new HashMap<String, Object>();
        map3.put("reality","成交额");
        temp.add(map);
        temp.add(map1);
        temp.add(map2);
        temp.add(map3);
        return temp;
    }

    public jy_salesService(){
        setModel(new jy2_sales());
    }

    @Override
    public Boolean isDelete() {
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }


    public String getLoadoutExcelFileName() {
        return "资金统计表";
    }

    public List<Map> find2(String id){

        return dao.find2(id);
    }

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
}
