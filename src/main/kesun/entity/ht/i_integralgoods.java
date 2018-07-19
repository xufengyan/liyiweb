package kesun.entity.ht;

import kesun.entity.AbsBusinessObject;

import java.util.Date;

public class i_integralgoods extends AbsBusinessObject {


    private String str_id;
    private Date begintime;
    private Date endtime;

    public Date getBegintime() {
        return begintime;
    }

    public void setBegintime(Date begintime) {
        this.begintime = begintime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public String getStr_id() {
        return str_id;
    }

    public void setStr_id(String str_id) {
        this.str_id = str_id;
    }


}
