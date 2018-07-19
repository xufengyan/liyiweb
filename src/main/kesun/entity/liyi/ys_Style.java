package kesun.entity.liyi;

import kesun.entity.AbsBusinessObject;

/**
 * Created by xufeng on 2018/5/21.
 */


//商品样式表
public class ys_Style extends AbsBusinessObject{
    private String styleImage;//第一张样式图片
    private String stylename;//样式名
    private String com_id;//

    public String getStyleImage() {
        return styleImage;
    }

    public void setStyleImage(String styleImage) {
        this.styleImage = styleImage;
    }

    public String getStylename() {
        return stylename;
    }

    public void setStylename(String stylename) {
        this.stylename = stylename;
    }

    public String getCom_id() {
        return com_id;
    }

    public void setCom_id(String com_id) {
        this.com_id = com_id;
    }
}
