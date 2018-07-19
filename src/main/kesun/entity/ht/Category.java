package kesun.entity.ht;

import kesun.entity.AbsBusinessObject;

import java.util.Date;

/**
 * Created by xufeng on 2018/4/14.
 */
//商品类别
public class Category extends AbsBusinessObject {
    private String  category;//类别名
    private String  superid;//类别名
    private String  subid;//类别名
    private String  subcategory;//类别名

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getSuperid() {
        return superid;
    }

    public void setSuperid(String superid) {
        this.superid = superid;
    }

    public String getSubid() {
        return subid;
    }

    public void setSubid(String subid) {
        this.subid = subid;
    }

    public String getSubcategory() {
        return subcategory;
    }

    public void setSubcategory(String subcategory) {
        this.subcategory = subcategory;
    }
}