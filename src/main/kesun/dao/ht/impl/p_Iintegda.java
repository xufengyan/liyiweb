package kesun.dao.ht.impl;

import kesun.dao.DaoSupport;
import org.springframework.stereotype.Repository;

@Repository("dintegda")
public class p_Iintegda extends DaoSupport {
    public p_Iintegda(){
        setMapperName("mapper.integdaMapper");
    }
    public Boolean objectInUse(String id)
    {
        return false;
    }

}
