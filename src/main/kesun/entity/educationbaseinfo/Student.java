package kesun.entity.educationbaseinfo;

import kesun.entity.AbsBusinessObject;

/**
 * Created by wph-pc on 2018/1/17.
 */
public class Student extends AbsBusinessObject {
    private char sex;

    public char getSex() {
        return sex;
    }

    public void setSex(char sex) {
        this.sex = sex;
    }
}
