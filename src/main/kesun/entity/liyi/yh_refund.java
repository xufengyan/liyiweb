package kesun.entity.liyi;

import kesun.entity.AbsBusinessObject;

import java.util.Date;

public class yh_refund extends AbsBusinessObject {


    String o_id;//订单id
    String refundstatus;//退款类型
    String reason;//退款原因
    String money;//退款金额
    String explains; //退款说明
    String u_id;//用户id
    Date refundtime;
    String refundresult;
    Date succeedtime;

    public Date getSucceedtime() {
        return succeedtime;
    }

    public void setSucceedtime(Date succeedtime) {
        this.succeedtime = succeedtime;
    }

    public String getRefundresult() {
        return refundresult;
    }

    public void setRefundresult(String refundresult) {
        this.refundresult = refundresult;
    }

    public String getO_id() {
        return o_id;
    }

    public void setO_id(String o_id) {
        this.o_id = o_id;
    }

    public String getRefundstatus() {
        return refundstatus;
    }

    public void setRefundstatus(String refundstatus) {
        this.refundstatus = refundstatus;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public String getExplains() {
        return explains;
    }

    public void setExplains(String explains) {
        this.explains = explains;
    }

    public Date getRefundtime() {
        return refundtime;
    }

    public void setRefundtime(Date refundtime) {
        this.refundtime = refundtime;
    }

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }
}
