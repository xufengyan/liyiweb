package kesun.dao.system;

import kesun.entity.system.SystemMenu;

import java.util.List;

/**
 * Created by wph-pc on 2017/9/23.
 */
public interface ISystemMenu {
    /*多对象保存*/
    int saveAll(List<SystemMenu> objs);
}
