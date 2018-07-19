package kesun.bll.sj.impl;

import kesun.bll.SuperService;
import kesun.bll.sj.jy_discount;
import kesun.dao.IDoData;
import kesun.entity.sj.jy2_discount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/5/23.
 */
@Service("bsj_discount")
public class jy_discountService extends SuperService implements jy_discount {

    @Autowired
    private kesun.dao.sj.inter.jy2_discount dao;

    public List<Map<String, Object>> getLoadoutExcelColumns() {
        List<Map<String,Object>> temp=new ArrayList<Map<String, Object>>();
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("id","优惠券编号");
        Map<String,Object> map1=new HashMap<String, Object>();
        map1.put("title","活动名称");
        temp.add(map);
        temp.add(map1);

        return temp;
    }

    public jy_discountService(){
        setModel(new jy2_discount());
    }

    @Override
    public Boolean isDelete() {
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }


    public String getLoadoutExcelFileName() {
        return "优惠表";
    }



    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
}
