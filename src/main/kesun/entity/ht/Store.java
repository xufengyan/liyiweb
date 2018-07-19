package kesun.entity.ht;

import kesun.entity.AbsBusinessObject;
import kesun.util.Tool;

import java.util.Date;

/**
 * Created by xufeng on 2018/4/14.
 */
//店铺
public class Store extends AbsBusinessObject {
    private String id="";
    private String storename="";
    private String description="";
    private String province="";
    private String city="";
    private String area="";
    private String address="";
    private String storeimage="";
    private String status="";
    private String number="";
    private String idcard="";
    private String idimage="";
    private String bcnumber="";
    private Date time=new Date();
    private String d_id="";
    private String credit="";
    private String approval="";
    private String rank="";
    private String reason="";

    @Override
    public String getId() {
        return id;
    }

    @Override
    public void setId(String id) {
        this.id = id;
    }

    public String getStorename() {
        return storename;
    }

    public void setStorename(String storename) {
        this.storename = storename;
    }

    @Override
    public String getDescription() {
        return description;
    }

    @Override
    public void setDescription(String description) {
        this.description = description;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getStoreimage() {
        return storeimage;
    }

    public void setStoreimage(String storeimage) {
        this.storeimage = storeimage;
    }

    @Override
    public String getStatus() {
        return status;
    }

    @Override
    public void setStatus(String status) {
        this.status = status;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
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

    public String getBcnumber() {
        return bcnumber;
    }

    public void setBcnumber(String bcnumber) {
        this.bcnumber = bcnumber;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
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

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }
}