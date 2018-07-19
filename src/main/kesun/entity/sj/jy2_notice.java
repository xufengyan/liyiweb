package kesun.entity.sj;

import kesun.entity.AbsBusinessObject;

import java.util.Date;

/**
 * Created by xufeng on 2018/4/14.
 */
//公告
public class jy2_notice extends AbsBusinessObject {
    private String  content;//公告内容
    private String  s_id;//店铺编号
    private Date createDate=new Date();//发布时间
    @Override
    public Date getCreateDate() {
        return createDate;
    }

    @Override
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getS_id() {
        return s_id;
    }

    public void setS_id(String s_id) {
        this.s_id = s_id;
    }
}