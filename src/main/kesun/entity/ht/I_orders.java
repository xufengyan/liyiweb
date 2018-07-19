package kesun.entity.ht;

import kesun.entity.AbsBusinessObject;

import java.util.Date;

public class I_orders extends AbsBusinessObject{

    private Commodity commodity;
    private Date ordertime =new Date();
    private Float price;
    private Float reality;
    private I_user iuser;
    private String goodsnumber;
    private String a_receiver;
    private String id="";
    private String orders_id="";
    private String c_id="";
    private String u_id="";

    private String a_address="";
    private String a_phone="";

    private String st_id="";
    private Date shiptime=new Date();

    private String logisticsnumber ="";
    private String status="";
    private String note="";
    private String sendername="";
    private String senderaddress="";
    private String senderphone="";


    @Override
    public String getId() {
        return id;
    }

    @Override
    public void setId(String id) {
        this.id = id;
    }

    public String getOrders_id() {
        return orders_id;
    }

    public void setOrders_id(String orders_id) {
        this.orders_id = orders_id;
    }

    public String getC_id() {
        return c_id;
    }

    public void setC_id(String c_id) {
        this.c_id = c_id;
    }

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }

    public String getA_receiver() {
        return a_receiver;
    }

    public void setA_receiver(String a_receiver) {
        this.a_receiver = a_receiver;
    }

    public String getA_address() {
        return a_address;
    }

    public void setA_address(String a_address) {
        this.a_address = a_address;
    }

    public String getA_phone() {
        return a_phone;
    }

    public void setA_phone(String a_phone) {
        this.a_phone = a_phone;
    }


    public String getSt_id() {
        return st_id;
    }

    public void setSt_id(String st_id) {
        this.st_id = st_id;
    }

    public Date getShiptime() {
        return shiptime;
    }

    public void setShiptime(Date shiptime) {
        this.shiptime = shiptime;
    }

    public float getReality() {
        return reality;
    }

    public void setReality(float reality) {
        this.reality = reality;
    }

    public String getLogisticsnumber() {
        return logisticsnumber;
    }

    public void setLogisticsnumber(String logisticsnumber) {
        this.logisticsnumber = logisticsnumber;
    }

    @Override
    public String getStatus() {
        return status;
    }

    @Override
    public void setStatus(String status) {
        this.status = status;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getSendername() {
        return sendername;
    }

    public void setSendername(String sendername) {
        this.sendername = sendername;
    }

    public String getSenderaddress() {
        return senderaddress;
    }

    public void setSenderaddress(String senderaddress) {
        this.senderaddress = senderaddress;
    }

    public String getSenderphone() {
        return senderphone;
    }

    public void setSenderphone(String senderphone) {
        this.senderphone = senderphone;
    }

    public Commodity getCommodity() {
        return commodity;
    }

    public void setCommodity(Commodity commodity) {
        this.commodity = commodity;
    }

    public Date getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(Date ordertime) {
        this.ordertime = ordertime;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }



    public void setReality(Float reality) {
        this.reality = reality;
    }

    public I_user getIuser() {
        return iuser;
    }

    public void setIuser(I_user iuser) {
        this.iuser = iuser;
    }

    public String getGoodsnumber() {
        return goodsnumber;
    }

    public void setGoodsnumber(String goodsnumber) {
        this.goodsnumber = goodsnumber;
    }


}
