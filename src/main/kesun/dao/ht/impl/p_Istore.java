package kesun.dao.ht.impl;

import kesun.dao.DaoSupport;
import org.springframework.stereotype.Repository;

@Repository("dstore")
public class p_Istore extends DaoSupport implements kesun.dao.ht.p_Istore {

    public p_Istore(){
        setMapperName("mapper.storeMapper");
    }
}
