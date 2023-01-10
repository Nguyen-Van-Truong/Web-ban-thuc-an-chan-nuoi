package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Orders implements Serializable {

    private int orders_id;
    private int account_id;
    private Date create_date;
    private String address;
    private String phone_number;
    private int transport_id;
    private int total_price;
    private int statuss;

    private List<OrdersDetails> ordersDetailsList;

    public Orders(int orders_id, int account_id, Date create_date, String address, String phone_number, int transport_id, int total_price, int statuss) {
        this.orders_id = orders_id;
        this.account_id = account_id;
        this.create_date = create_date;
        this.address = address;
        this.phone_number = phone_number;
        this.transport_id = transport_id;
        this.total_price = total_price;
        this.statuss = statuss;
    }

    public Orders(){

    }

    public int getOrders_id() {
        return orders_id;
    }

    public void setOrders_id(int orders_id) {
        this.orders_id = orders_id;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
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

    public int getStatuss() {
        return statuss;
    }

    public void setStatuss(int statuss) {
        this.statuss = statuss;
    }


}
