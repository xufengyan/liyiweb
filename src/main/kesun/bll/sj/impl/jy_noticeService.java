package kesun.bll.sj.impl;

import kesun.bll.SuperService;
import kesun.bll.sj.jy_notice;
import kesun.dao.IDoData;
import kesun.entity.sj.jy2_notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/5/23.
 */
@Service("bsj_notice")
public class jy_noticeService extends SuperService implements jy_notice {

    @Autowired
    private kesun.dao.sj.inter.jy2_notice dao;

    public List<Map<String, Object>> getLoadoutExcelColumns() {
        List<Map<String,Object>> temp=new ArrayList<Map<String, Object>>();
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("id","编号");

        temp.add(map);

        return temp;
    }

    public jy_noticeService(){
        setModel(new jy2_notice());
    }

    @Override
    public Boolean isDelete() {
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }


    public String getLoadoutExcelFileName() {
        return "公告表";
    }



    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }
}
