package vn.edu.hcmuaf.fit.model;

import java.util.Date;

public class Order {
    private int orderId;
    private int accountId;
    private String date;
    private String address;
    private String phoneNumber;
    private String status;
    private int transportId;

    public Order(int orderId, int accountId, String date, String address, String phoneNumber, String status, int transportId) {
        this.orderId = orderId;
        this.accountId = accountId;
        this.date = date;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.status = status;
        this.transportId = transportId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getTransportId() {
        return transportId;
    }

    public void setTransportId(int transportId) {
        this.transportId = transportId;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId=" + orderId +
                ", accountId=" + accountId +
                ", date='" + date + '\'' +
                ", address='" + address + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", status='" + status + '\'' +
                ", transportId=" + transportId +
                '}';
    }
}
