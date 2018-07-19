package kesun.bll.system.impl;

import kesun.bll.SuperService;
import kesun.bll.system.ISystemMenu;
import kesun.dao.IDoData;
import kesun.dao.system.impl.DSystemMenu;
import kesun.entity.system.SystemMenu;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wph-pc on 2017/9/23.
 */
@Service("bSystemMenu")
public class SystemMenuServiceImpl extends SuperService implements ISystemMenu {
    @Resource(name="dSystemMenu")
    private DSystemMenu dao;
    public SystemMenuServiceImpl(){
        setModel(new SystemMenu());
    }
    public List<Map<String, Object>> getLoadoutExcelColumns() {
        return null;
    }
    @Override
    public  Boolean isDelete()
    {
        Map<String,Object> cons=new HashMap<String, Object>();
        cons.put("parent",getModel().getId());
        List<?> lObjs=find(cons);
        if (lObjs!=null && lObjs.size()>0) return false;//存在子权限

        if (isInUse()) return  false;//当前权限在使用中
        return true;
    }
    public String getLoadoutExcelFileName() {
        return "系统功能权限菜单";
    }

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        return null;
    }

    private void setSystemMenus(List<SystemMenu> source,SystemMenu param,String id,String name,String address)
    {
        SystemMenu temp=new SystemMenu();//新增功能
        temp.setName(param.getName()+name);
        temp.setCreateDate(param.getCreateDate());
        temp.setParent(param.getParent());
        temp.setStatus(param.getStatus());
        temp.setAddress("/"+param.getAddress()+"/"+address);
        temp.setId(param.getId()+id);
        source.add(temp);
    }
    public int savaAll() {
        if (getModel()==null || getModel() instanceof SystemMenu==false) return 0;
        List<SystemMenu> objs=new ArrayList<SystemMenu>();
        /*创建常规的地址操作*/
        SystemMenu sm=(SystemMenu)getModel();//获取参数

        setSystemMenus(objs,sm,"00","管理","");//根级菜单
        setSystemMenus(objs,sm,"01","新增","add");//
        setSystemMenus(objs,sm,"02","批量新增","loadData");//
        setSystemMenus(objs,sm,"03","修改","edit");
        setSystemMenus(objs,sm,"04","删除","del");
        setSystemMenus(objs,sm,"05","批量删除","deleteAll");
        setSystemMenus(objs,sm,"06","查找","find");
        setSystemMenus(objs,sm,"07","分页查找","findByPage");
        setSystemMenus(objs,sm,"08","数据导出","loadout");
        setSystemMenus(objs,sm,"09","单个对象获取","getMe");
        setSystemMenus(objs,sm,"10","管理页面","index");
        setSystemMenus(objs,sm,"11","编辑页面",sm.getAddress());
        return ((DSystemMenu)getDAO()).saveAll(objs);
    }
}
