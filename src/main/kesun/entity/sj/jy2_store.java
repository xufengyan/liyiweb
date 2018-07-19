package kesun.entity.sj;

import kesun.entity.AbsBusinessObject;

import java.util.Date;

/**
 * Created by xufeng on 2018/5/23.
 */
public class jy2_store extends AbsBusinessObject{

    private String storename;//店铺名称
    private String number;//营业执照编号
    private String address;//经营地址
    private String  province;//省
    private String  city;//市
    private String  area;// 县
    private String idcard;//身份证号
    private String idimage;  //身份证照片
    private String storeimage;//店铺头像
    private String bcNumber;//银行卡号
    private String d_id;//押金
    private String credit; //信用
    private String approval;//审核状态
    private Date time = getCreateDate();// 注册时间


    public String getStorename() {
        return storename;
    }

    public void setStorename(String storename) {
        this.storename = storename;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getIdimage() {
        return idimage;
    }

    public void setIdimage(String idimage) {
        this.idimage = idimage;
    }

    public String getStoreimage() {
        return storeimage;
    }

    public void setStoreimage(String storeimage) {
        this.storeimage = storeimage;
    }

    public String getBcNumber() {
        return bcNumber;
    }

    public void setBcNumber(String bcNumber) {
        this.bcNumber = bcNumber;
    }

    public String getD_id() {
        return d_id;
    }

    public void setD_id(String d_id) {
        this.d_id = d_id;
    }

    public String getCredit() {
        return credit;
    }

    public void setCredit(String credit) {
        this.credit = credit;
    }

    public String getApproval() {
        return approval;
    }

    public void setApproval(String approval) {
        this.approval = approval;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
