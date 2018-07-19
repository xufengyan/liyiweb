package kesun.entity.ht;

import kesun.entity.AbsBusinessObject;

public class I_style extends AbsBusinessObject{

    private String id;
    private String category;

    @Override
    public String getId() {
        return id;
    }

    @Override
    public void setId(String id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
