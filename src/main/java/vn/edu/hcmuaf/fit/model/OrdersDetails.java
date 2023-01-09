package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class OrdersDetails implements Serializable {

    private int serial;
    private int orders_id;
    private int product_id;
    private int quantity;
    private int in_price;
    private int out_price;

    public OrdersDetails(int serial, int orders_id, int product_id, int quantity, int in_price, int out_price) {
        this.serial = serial;
        this.orders_id = orders_id;
        this.product_id = product_id;
        this.quantity = quantity;
        this.in_price = in_price;
        this.out_price = out_price;
    }

    public OrdersDetails() {
    }

    public int getSerial() {
        return serial;
    }

    public void setSerial(int serial) {
        this.serial = serial;
    }

    public int getOrders_id() {
        return orders_id;
    }

    public void setOrders_id(int orders_id) {
        this.orders_id = orders_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getIn_price() {
        return in_price;
    }

    public void setIn_price(int in_price) {
        this.in_price = in_price;
    }

    public int getOut_price() {
        return out_price;
    }

    public void setOut_price(int out_price) {
        this.out_price = out_price;
    }

    public int totalAmount(){
        return quantity * out_price;
    }
}
