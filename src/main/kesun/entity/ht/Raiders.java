package kesun.entity.ht;

import kesun.entity.AbsBusinessObject;

import java.util.Date;

public class Raiders  extends AbsBusinessObject {
    private   int likenum;
    private String content;//攻略内容
    private String sub_id;//商品分类id
    private String u_id;//用户id
    private String  reason;//未通过审核理由
    private Date time=getCreateDate();//发布时间
    private UserInform userInform;//用户
    private Category category;//商品分类
    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }
    public int getLikenum() {
        return likenum;
    }

    public void setLikenum(int likenum) {
        this.likenum = likenum;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getSub_id() {
        return sub_id;
    }

    public void setSub_id(String sub_id) {
        this.sub_id = sub_id;
    }

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public UserInform getUserInform() {
        return userInform;
    }

    public void setUserInform(UserInform userInform) {
        this.userInform = userInform;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
