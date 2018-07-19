package kesun.entity.ht;

import kesun.entity.AbsBusinessObject;
import kesun.util.Tool;

import java.util.Date;

public class p_discount extends AbsBusinessObject {


   private Store store;
   private String title;
    private String amount;
    private Date begining;
    private Date ending;
    private String term;
    private String ranges;
    private String equity;
    private i_integralgoods i_integralgoods;

    private String disid=Tool.CreateID();

    public String getDisid() {
        return disid;
    }

    public void setDisid(String disid) {
        this.disid = disid;
    }

    public kesun.entity.ht.i_integralgoods getI_integralgoods() {
        return i_integralgoods;
    }

    public void setI_integralgoods(kesun.entity.ht.i_integralgoods i_integralgoods) {
        this.i_integralgoods = i_integralgoods;
    }

    private String integraldhs;
    public Store getStore() {
        return store;
    }

    public void setStore(Store store) {
        this.store = store;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getIntegraldhs() {
        return integraldhs;
    }

    public void setIntegraldhs(String integraldhs) {
        this.integraldhs = integraldhs;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public Date getBegining() {
        return begining;
    }

    public void setBegining(Date begining) {
        this.begining = begining;
    }

    public Date getEnding() {
        return ending;
    }

    public void setEnding(Date ending) {
        this.ending = ending;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public String getRanges() {
        return ranges;
    }

    public void setRanges(String ranges) {
        this.ranges = ranges;
    }

    public String getEquity() {
        return equity;
    }

    public void setEquity(String equity) {
        this.equity = equity;
    }




}
