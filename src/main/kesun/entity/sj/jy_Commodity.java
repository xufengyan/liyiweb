package kesun.entity.sj;

import kesun.entity.AbsBusinessObject;

import java.util.Date;

/****************************
 *
 *@author Xcc😊
 *@CreateTime: 2018年05月25日 09:11 
 *@description 商品实体
 *@Class: commodity
 *
 *****************************/
public class jy_Commodity extends AbsBusinessObject {
    private String commname;//商品名
    private String sub_id;//商品子类id
    private String title;//商品标题
    private String image1;//图片1
    private String image2;//图片2
    private String image3;//图片3
    private String image4;//图片4
    private String description;//商品描述
    private int price;//商品价格
    private String stock;//商品库存
    private Date time;//上架时间
    private String s_id;//商家id
    private String st_id;//样式表id
    private int integral;//返还的积分数
    //private String status;//商品状态
    private String sstatus;//商品审核状态
    private jy_Style style;//商品样式

    public String getCommname() {
        return commname;
    }

    public void setCommname(String commname) {
        this.commname = commname;
    }

    public String getSubid() {
        return sub_id;
    }

    public void setSubid(String subid) {
        this.sub_id = subid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getImage3() {
        return image3;
    }

    public void setImage3(String image3) {
        this.image3 = image3;
    }

    public String getImage4() {
        return image4;
    }

    public void setImage4(String image4) {
        this.image4 = image4;
    }

    @Override
    public String getDescription() {
        return description;
    }

    @Override
    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getStock() {
        return stock;
    }

    public void setStock(String stock) {
        this.stock = stock;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getS_id() {
        return s_id;
    }

    public void setS_id(String s_id) {
        this.s_id = s_id;
    }

    public String getSt_id() {
        return st_id;
    }

    public void setSt_id(String st_id) {
        this.st_id = st_id;
    }

    public int getIntegral() {
        return integral;
    }

    public void setIntegral(int integral) {
        this.integral = integral;
    }

    public String getSstatus() {
        return sstatus;
    }

    public void setSstatus(String sstatus) {
        this.sstatus = sstatus;
    }




}
