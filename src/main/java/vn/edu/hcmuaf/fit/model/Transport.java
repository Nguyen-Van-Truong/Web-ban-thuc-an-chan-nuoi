package vn.edu.hcmuaf.fit.model;

public class Transport {
    private int transport_id;
    private String transport_name;
    private int price;
    private int time;

    public Transport(int transport_id, String transport_name, int price, int time) {
        this.transport_id = transport_id;
        this.transport_name = transport_name;
        this.price = price;
        this.time = time;
    }

    public Transport() {
    }

    public int getTransport_id() {
        return transport_id;
    }

    public void setTransport_id(int transport_id) {
        this.transport_id = transport_id;
    }

    public String getTransport_name() {
        return transport_name;
    }

    public void setTransport_name(String transport_name) {
        this.transport_name = transport_name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getTime() {
        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Transport{" +
                "transport_id=" + transport_id +
                ", transport_name='" + transport_name + '\'' +
                ", price=" + price +
                ", time=" + time +
                '}';
    }
}
