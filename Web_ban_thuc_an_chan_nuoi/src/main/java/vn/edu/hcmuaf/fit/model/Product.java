package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class Product implements Serializable {
    private int id;
    private String name;
    private String img;
    private long price;

    public Product() {
    }

    public Product(int id, String name, String img, long price) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", price=" + price +
                '}';
    }
}
