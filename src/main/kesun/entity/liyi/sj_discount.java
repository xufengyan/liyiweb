package kesun.entity.liyi;

import kesun.entity.AbsBusinessObject;

public class sj_discount extends AbsBusinessObject {

   private String amount;//券额
   private String condition; //满足条件
    private String s_id;//店铺id

    //领取表
    private String dis_id;//优惠券id
    private String u_id;//用户id
    private String status;//状态

    public String getDis_id() {
        return dis_id;
    }

    public void setDis_id(String dis_id) {
        this.dis_id = dis_id;
    }

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }

    @Override
    public String getStatus() {
        return status;
    }

    @Override
    public void setStatus(String status) {
        this.status = status;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public String getS_id() {
        return s_id;
    }

    public void setS_id(String s_id) {
        this.s_id = s_id;
    }


}
