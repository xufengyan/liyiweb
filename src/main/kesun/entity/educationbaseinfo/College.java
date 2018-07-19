package kesun.entity.educationbaseinfo;

import kesun.entity.AbsBusinessObject;

/**
 * Created by wph-pc on 2018/1/14.
 */
public class College extends AbsBusinessObject {
    private String address="";//高校地址
    private String logo="";//高校logo
    private String postcode="";//邮政编码
    private String url="";//网址
    private String introduce="";//简介
    private String charger="";//负责人

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public String getCharger() {
        return charger;
    }

    public void setCharger(String charger) {
        this.charger = charger;
    }
}
