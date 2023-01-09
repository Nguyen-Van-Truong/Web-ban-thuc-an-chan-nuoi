package vn.edu.hcmuaf.fit.model;

public class Transport {
    private int transportId;
    private String name;
    private double price;

    public Transport(int transportId, String name, double price) {
        this.transportId = transportId;
        this.name = name;
        this.price = price;
    }

    public Transport() {
    }

    public int getTransportId() {
        return transportId;
    }

    public void setTransportId(int transportId) {
        this.transportId = transportId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Transport{" +
                "transportId=" + transportId +
                ", name='" + name + '\'' +
                ", price=" + price +
                '}';
    }
}

