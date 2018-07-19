package kesun.bll.sj.impl;

import kesun.bll.SuperService;
import kesun.bll.sj.jy_IRefund;
import kesun.dao.IDoData;
import kesun.entity.sj.jy_Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/****************************
 *
 *@author Xcc😊
 *@CreateTime: 2018年06月07日 19:42 
 *@description 退款管理
 *@Class: RefundServiceImpl
 *
 *****************************/


@Service("bRefund")
public class jy_RefundServiceImpl extends SuperService implements jy_IRefund {

    @Autowired
    private kesun.dao.sj.inter.jy_IRefund dao;

    public jy_RefundServiceImpl(){

        setModel(new jy_Order());

    }

    @Override
    public Boolean isDelete(){
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }

    public List<Map<String,Object>> getrefund(String id){

        return dao.getrefund(id);
    }

    public int modify(Object obj){
        return dao.modify(obj);
    }

    public int refuse(Object obj){
        return dao.refuse(obj);
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
