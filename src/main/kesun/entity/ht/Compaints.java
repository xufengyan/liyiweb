package kesun.entity.ht;

import kesun.entity.AbsBusinessObject;
import kesun.entity.ht.User;

import java.util.Date;

public class Compaints extends AbsBusinessObject {

    private String u_id="";
    private String content="";
    private String c_id="";
    private Date complaintstime=new Date();
    private String processed="";
    private User usere;
    private Commodity commodity;

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getC_id() {
        return c_id;
    }

    public void setC_id(String c_id) {
        this.c_id = c_id;
    }

    public Date getComplaintstime() {
        return complaintstime;
    }

    public void setComplaintstime(Date complaintstime) {
        this.complaintstime = complaintstime;
    }

    public String getProcessed() {
        return processed;
    }

    public void setProcessed(String processed) {
        this.processed = processed;
    }

    public User getUsere() {
        return usere;
    }

    public void setUsere(User usere) {
        this.usere = usere;
    }

    public Commodity getCommodity() {
        return commodity;
    }

    public void setCommodity(Commodity commodity) {
        this.commodity = commodity;
    }
}
