package kesun.entity.sj;

import kesun.entity.AbsBusinessObject;

import java.util.Date;

/****************************
 *
 *@author Xcc😊
 *@CreateTime: 2018年05月25日 09:20 
 *@description 用户实体
 *@Class: UserInform
 *
 *****************************/
public class jy_UserInform extends AbsBusinessObject {
    private String  nickname;//用户昵称
    private String  phone;//手机号
    private String   s_id;//店铺编号
    private String  sex;//性别
    private String  address;//地址
    private String  province;//省
    private String  city;//市
    private String  area;// 县
    private String  email;//邮箱
    private Date birthday;//生日
    private int  integral=0;//积分
    private String  password;//密码
    private String  avatar;//头像
    private Date time=getCreateDate();//注册时间


    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getS_id() {
        return s_id;
    }

    public void setS_id(String s_id) {
        this.s_id = s_id;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public int getIntegral() {
        return integral;
    }

    public void setIntegral(int integral) {
        this.integral = integral;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }





}
