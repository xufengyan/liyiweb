package kesun.bll.ht.impl;

import kesun.bll.SuperService;
import kesun.bll.ht.IUserInform;
import kesun.dao.IDoData;
import kesun.entity.ht.UserInform;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by xufeng on 2018/4/14.
 */
@Service("bllUserInform1")
public class UserInformServiceImpl extends SuperService implements IUserInform {
    @Autowired
    private kesun.dao.ht.IUserInform dao;

    public UserInformServiceImpl() {
        setModel(new UserInform());
    }

    public List<Map<String, Object>> getLoadoutExcelColumns() {
        List<Map<String, Object>> temp = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("name", "名称");

        Map<String, Object> map2 = new HashMap<String, Object>();
        map2.put("sex", "性别");
        Map<String, Object> map3 = new HashMap<String, Object>();
        map3.put("phone", "手机号码");
        temp.add(map);
        temp.add(map2);
        temp.add(map3);

        return temp;
    }

    @Override
    public Boolean isDelete() {
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }



    //统计
    public List<Map> find2(){
        try {
            return dao.find2();
        } catch (Exception e) {
            e.printStackTrace();
            return  null;
        }
    }








    public String getLoadoutExcelFileName() {
        return "用户基本信息";
    }

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;

    }
}