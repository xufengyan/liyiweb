package kesun.dao.ht.impl;

import kesun.dao.DaoSupport;
import org.springframework.stereotype.Repository;

@Repository("dcategory")
public class p_Icategory extends DaoSupport {
    public p_Icategory(){
        setMapperName("mapper.categoryMapper");
    }
}
