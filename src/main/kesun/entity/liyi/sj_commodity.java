package kesun.entity.liyi;

import kesun.entity.AbsBusinessObject;

import java.util.Date;
import java.util.List;

/**
 * Created by xufeng on 2018/5/19.
 */

//商品表
public class sj_commodity extends AbsBusinessObject{

    private String commname;//商品名
    private String sub_id;//商品子类id
    private String title;//商品标题
    private String image1;//图片1
    private String image2;//图片2
    private String image3;//图片3
    private String image4;//图片4
    private String description;//商品描述
    private int price;//商品价格
    private int stock;//商品库存
    private Date time;//上架时间
    private String s_id;//商家id
    private String st_id;//样式表id
    private int integral;//返还的积分数
    private String status;//商品状态
    private int sales;//商品销量
    private String sstatus;//商品审核状态
    private List<ys_Style> images;//样式数组

    public List<ys_Style> getImages() {
        return images;
    }

    public void setImages(List<ys_Style> images) {
        this.images = images;
    }

    public String getCommname() {
        return commname;
    }

    public void setCommname(String commname) {
        this.commname = commname;
    }

    public String getSub_id() {
        return sub_id;
    }

    public void setSub_id(String sub_id) {
        this.sub_id = sub_id;
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

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getSales() {
        return sales;
    }

    public void setSales(int sales) {
        this.sales = sales;
    }

    public String getSstatus() {
        return sstatus;
    }

    public void setSstatus(String sstatus) {
        this.sstatus = sstatus;
    }


}
