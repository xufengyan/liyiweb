package kesun.entity.ht;

import kesun.entity.AbsBusinessObject;
import kesun.util.Tool;

import java.util.Date;

/**
 * Created by xufeng on 2018/4/14.
 */
//用户
public class UserInform extends AbsBusinessObject{
    private String  nickname;//用户昵称
    private String  phone;//手机号
    private String   s_id;//店铺编号
    private String  sex;//性别
    private String  address;//地址

    private String  email;//邮箱
    private Date  birthday;//生日
    private int  integral=0;//积分
    private String  password;//密码
    private String  avatar;//头像
    private String  reason;//未通过审核原因
    private Date time=getCreateDate();//注册时间
    private Store   store;//拥有店铺

    @Override
    public void setStatus(String status) {
        super.setStatus("正常");
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }


    public String getS_id() {
        return s_id;
    }

    public void setS_id(String s_id) {
        this.s_id = Tool.CreateID();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public Store getStore() {
        return store;
    }

    public void setStore(Store store) {
        this.store = store;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
