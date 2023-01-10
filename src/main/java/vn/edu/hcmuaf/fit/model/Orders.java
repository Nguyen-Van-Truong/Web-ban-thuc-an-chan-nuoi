package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Orders implements Serializable {

    private int order_id;
    private int account_id;
    private Date date;
    private String address;
    private String phonenumber;

    private int status;
    private int transport_id;
    private int total_price;


    private List<OrdersDetails> ordersDetailsList;

    public Orders() {
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public Date getCreate_date() {
        return date;
    }

    public void setCreate_date(Date create_date) {
        this.date = create_date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone_number() {
        return phonenumber;
    }

    public void setPhone_number(String phone_number) {
        this.phonenumber = phone_number;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getTransport_id() {
        return transport_id;
    }

    public void setTransport_id(int transport_id) {
        this.transport_id = transport_id;
    }

    public int getTotal_price() {
        return total_price;
    }

    public void setTotal_price(int total_price) {
        this.total_price = total_price;
    }

    public List<OrdersDetails> getOrdersDetailsList() {
        return ordersDetailsList;
    }

    public void setOrdersDetailsList(List<OrdersDetails> ordersDetailsList) {
        this.ordersDetailsList = ordersDetailsList;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "order_id=" + order_id +
                ", account_id=" + account_id +
                ", create_date=" + date +
                ", address='" + address + '\'' +
                ", phone_number='" + phonenumber + '\'' +
                ", status=" + status +
                ", transport_id=" + transport_id +
                ", total_price=" + total_price +
                ", ordersDetailsList=" + ordersDetailsList +
                '}';
    }
}


