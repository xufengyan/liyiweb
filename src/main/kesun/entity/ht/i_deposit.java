package kesun.entity.ht;

import kesun.entity.AbsBusinessObject;

public class i_deposit  extends AbsBusinessObject {

    private Float deposit;

    public Float getDeposit() {
        return deposit;
    }

    public void setDeposit(Float deposit) {
        this.deposit = deposit;
    }

    private String u_id;

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }



    private I_user iuser;

    public I_user getIuser() {
        return iuser;
    }

    public void setIuser(I_user iuser) {
        this.iuser = iuser;
    }
}
