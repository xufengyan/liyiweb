package kesun.entity.educationbaseinfo;

import kesun.entity.AbsBusinessObject;

/**
 * Created by xufeng on 2018/4/14.
 */
public class UserInform extends AbsBusinessObject{
    private String age;
    private String sex;
    private String usertype;
    private String userimage;

    public String getUserimage() {
        return userimage;
    }

    public void setUserimage(String userimage) {
        this.userimage = userimage;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }
}
