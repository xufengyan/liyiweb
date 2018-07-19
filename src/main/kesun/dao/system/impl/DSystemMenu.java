package kesun.dao.system.impl;

import kesun.dao.DaoSupport;
import kesun.dao.system.ISystemMenu;
import kesun.entity.system.SystemMenu;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by wph-pc on 2017/9/23.
 */
@Repository("dSystemMenu")
public class DSystemMenu extends DaoSupport implements ISystemMenu {
    public DSystemMenu() {
        setMapperName("mapper.SystemMenuMapper");
    }

    public int saveAll(List<SystemMenu> objs) {
        return batchSave(objs);
        //return getSqlSessionTemplate().insert("mapper.SystemMenuMapper.saveAll",objs);
    }
}
