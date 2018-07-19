package kesun.entity.liyi;

import kesun.entity.AbsBusinessObject;

public class yh_address extends AbsBusinessObject {

    String user_id;
    String province;
    String city;
    String area;
    String receiver;
    String address;
    String phone;
    String tacitly;


    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
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

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getTacitly() {
        return tacitly;
    }

    public void setTacitly(String tacitly) {
        this.tacitly = tacitly;
    }
}
