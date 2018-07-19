package kesun.entity.sj;

import kesun.entity.AbsBusinessObject;

import java.util.Date;

/**
 * Created by xufeng on 2018/4/14.
 */
//优惠
public class jy2_discount extends AbsBusinessObject {
    private String  title;//活动名称
    private Date  begining;//开始时间
    private Date  ending;//结束时间
    private String  amount;//优惠金额
    private String  ranges;//发放权益
    private String  require1;//优惠条件
    private String  s_id;//店铺id

    public Date getBegining() {
        return begining;
    }

    public void setBegining(Date begining) {
        this.begining = begining;
    }

    public Date getEnding() {
        return ending;
    }

    public void setEnding(Date ending) {
        this.ending = ending;
    }



    public String getS_id() {
        return s_id;
    }

    public void setS_id(String s_id) {
        this.s_id = s_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }



    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }



    public String getRanges() {
        return ranges;
    }

    public void setRanges(String ranges) {
        this.ranges = ranges;
    }

    public String getRequire1() {
        return require1;
    }

    public void setRequire1(String require1) {
        this.require1 = require1;
    }

  
}