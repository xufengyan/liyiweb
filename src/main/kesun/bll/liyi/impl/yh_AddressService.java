package kesun.bll.liyi.impl;

import kesun.bll.SuperService;
import kesun.bll.liyi.Iyh_address;
import kesun.dao.IDoData;
import kesun.entity.liyi.yh_address;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service("byh_address")
public class yh_AddressService extends SuperService implements Iyh_address {

        @Autowired
        private kesun.dao.liyi.Iyh_address dao;

        public yh_AddressService(){
            setModel(new yh_address());
        }

        @Override
        public Boolean isDelete() {
        if (isInUse()) return false;//当前数据在使用中
        return true;
        }


        //查询地址
        public List<Map> getaddress(yh_address address){

                return dao.getaddress(address);

        }
        //添加地址并返回id
        public int addaddress(yh_address address){

                return dao.addaddress(address);
        }
        public int updateaddress(String id){

                return dao.updateaddress(id);
        }

        public int updateaddress2(String id){

                return dao.updateaddress2(id);
        }

        public List<Map<String, Object>> getLoadoutExcelColumns() {
        return null;
        }

        public String getLoadoutExcelFileName() {
        return null;
        }

        public IDoData getDAO() {
        return dao;
        }

        public List getSaveAll(String filePath) {

            return null;
        }
}
