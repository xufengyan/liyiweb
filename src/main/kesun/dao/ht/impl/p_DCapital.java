package kesun.dao.ht.impl;

import kesun.dao.DaoSupport;
import org.springframework.stereotype.Repository;

@Repository("dCapital")
public class p_DCapital extends DaoSupport  {
    public p_DCapital(){
        setMapperName("mapper.CapitalMapper");
    }

}
