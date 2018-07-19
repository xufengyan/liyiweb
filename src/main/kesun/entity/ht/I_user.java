package kesun.entity.ht;

public class I_user {
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


    private String id;
    private String name;

    public String getS_id() {
        return s_id;
    }

    public void setS_id(String s_id) {
        this.s_id = s_id;
    }

    public Store getStore() {
        return store;
    }

    public void setStore(Store store) {
        this.store = store;
    }

    private String s_id;
    private Store store;
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
