package kesun.entity.ht;

import kesun.entity.AbsBusinessObject;

import java.util.Date;

public class Admin extends AbsBusinessObject {
    private String phone="";
    private String email="";
    private String role="";
    private Date time=new Date();

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
