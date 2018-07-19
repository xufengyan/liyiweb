package kesun.entity.liyi;

import kesun.entity.AbsBusinessObject;

import java.util.Date;

public class sjyh_order extends AbsBusinessObject {

    private String orders_id;//订单编号
    private Date ordertime;//下单时间
    private String goodsnumber;//数量
    private float price;//交易金额
    private float reality;//实际金额
    private String st_id;//样式id
    private String note;//备注说明
    private String a_receiver;//收件人
    private String a_address;//收件人地址
    private String a_phone;//收件人电话
    private Date shiptime;//发货时间
    private String sendername;//发货人
    private String senderaddress;//发货地址
    private String senderphone;//寄件人电话
    private String logisname;//物流名
    private String logisticsnumber;//物流编号
    private String evalustatus;//物流状态
    private Date signtime;//签收时间
    private String c_id;//商品id
    private String u_id;//用户id

    public String getOrders_id() {
        return orders_id;
    }

    public void setOrders_id(String orders_id) {
        this.orders_id = orders_id;
    }

    public Date getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(Date ordertime) {
        this.ordertime = ordertime;
    }

    public String getGoodsnumber() {
        return goodsnumber;
    }

    public void setGoodsnumber(String goodsnumber) {
        this.goodsnumber = goodsnumber;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getReality() {
        return reality;
    }

    public void setReality(float reality) {
        this.reality = reality;
    }

    public String getSt_id() {
        return st_id;
    }

    public void setSt_id(String st_id) {
        this.st_id = st_id;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
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

    public Date getShiptime() {
        return shiptime;
    }

    public void setShiptime(Date shiptime) {
        this.shiptime = shiptime;
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

    public String getLogisname() {
        return logisname;
    }

    public void setLogisname(String logisname) {
        this.logisname = logisname;
    }

    public String getLogisticsnumber() {
        return logisticsnumber;
    }

    public void setLogisticsnumber(String logisticsnumber) {
        this.logisticsnumber = logisticsnumber;
    }

    public String getEvalustatus() {
        return evalustatus;
    }

    public void setEvalustatus(String evalustatus) {
        this.evalustatus = evalustatus;
    }

    public Date getSigntime() {
        return signtime;
    }

    public void setSigntime(Date signtime) {
        this.signtime = signtime;
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
}
