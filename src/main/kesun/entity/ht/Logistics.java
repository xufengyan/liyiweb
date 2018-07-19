package kesun.entity.ht;

import kesun.entity.AbsBusinessObject;

public class Logistics extends AbsBusinessObject {
    private String id="";
    private String logisticsname="";

    @Override
    public String getId() {
        return id;
    }

    @Override
    public void setId(String id) {
        this.id = id;
    }

    public String getLogisticsname() {
        return logisticsname;
    }

    public void setLogisticsname(String logisticsname) {
        this.logisticsname = logisticsname;
    }
}
