package kesun.entity.sj;

import kesun.entity.AbsBusinessObject;
import kesun.entity.sj.jy_Commodity;

/****************************
 *
 *@author Xcc😊
 *@CreateTime: 2018年05月17日 10:43
 *@description 订单
 *@Class: Order
 *
 *****************j************/
public class jy2_sales extends AbsBusinessObject {

    private String price;//订单总价
    private String reality;//订单成交价
    private jy_Commodity commodity;//商品表
    private jy2_store store;// 店铺表

    public void setCommodity(jy_Commodity commodity) {
        this.commodity = commodity;
    }

    public jy_Commodity getCommodity() {
        return commodity;
    }

    public jy2_store getStore() {
        return store;
    }

    public void setStore(jy2_store store) {
        this.store = store;
    }



    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getReality() {
        return reality;
    }

    public void setReality(String reality) {
        this.reality = reality;
    }

}
