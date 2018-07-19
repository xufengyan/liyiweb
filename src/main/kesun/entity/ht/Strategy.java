package kesun.entity.ht;
import kesun.entity.AbsBusinessObject;
import java.util.Date;

public class Strategy extends AbsBusinessObject{

    private Date time=new Date();
    private int likenum=0;
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getLikenum() {
        return likenum;
    }

    public void setLikenum(int likenum) {
        this.likenum = likenum;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

//    public String getC_id() {
//        return c_id;
//    }
//
//    public void setC_id(String c_id) {
//        this.c_id = c_id;
//    }
//    private String c_id;
//    private String u_id;
    private String content="";

    private I_user iuser;
    private I_category icategory;
    private String reason="";
    private String title;
    private String image;
    private String description;

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String getDescription() {
        return description;
    }

    @Override
    public void setDescription(String description) {
        this.description = description;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

//    public String getU_id() {
//        return u_id;
//    }
//
//    public void setU_id(String u_id) {
//        this.u_id = u_id;
//    }

    public I_user getIuser() {
        return iuser;
    }

    public void setIuser(I_user iuser) {
        this.iuser = iuser;
    }

    public I_category getIcategory() {
        return icategory;
    }

    public void setIcategory(I_category icategory) {
        this.icategory = icategory;
    }
}
