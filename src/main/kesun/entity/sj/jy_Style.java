package kesun.entity.sj;

import kesun.entity.AbsBusinessObject;

/****************************
 *
 *@author Xcc😊
 *@CreateTime: 2018年05月25日 11:27 
 *@description 商品样式
 *@Class: Style
 *
 *****************************/
public class jy_Style extends AbsBusinessObject {

    private String com_id;//商品id
    private String styleImage;//样式图
    private String stylename;//样式名

    public String getCom_id() {
        return com_id;
    }

    public void setCom_id(String com_id) {
        this.com_id = com_id;
    }

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



}
