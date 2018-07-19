package kesun.entity.liyi;

import javafx.scene.chart.PieChart;
import kesun.entity.AbsBusinessObject;

import java.util.Date;

public class sj_evaluation extends AbsBusinessObject {

    private String o_id;//订单id
    private String assess;//评价内容
    private Date assesstime;//评价时间
    private String reply;//回复内容;
    private Date replytime;
    private String type;
    private String status;

    @Override
    public String getStatus() {
        return status;
    }

    @Override
    public void setStatus(String status) {
        this.status = status;
    }

    public String getO_id() {
        return o_id;
    }

    public void setO_id(String o_id) {
        this.o_id = o_id;
    }

    public String getAssess() {
        return assess;
    }

    public void setAssess(String assess) {
        this.assess = assess;
    }

    public Date getAssesstime() {
        return assesstime;
    }

    public void setAssesstime(Date assesstime) {
        this.assesstime = assesstime;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply;
    }

    public Date getReplytime() {
        return replytime;
    }

    public void setReplytime(Date replytime) {
        this.replytime = replytime;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
