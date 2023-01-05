package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class Characteristic implements Serializable {
    private int charistic_id;
    private String name;

    public Characteristic() {
    }

    public Characteristic(int charistic_id, String name) {
        this.charistic_id = charistic_id;
        this.name = name;
    }

    public int getCharistic_id() {
        return charistic_id;
    }

    public void setCharistic_id(int charistic_id) {
        this.charistic_id = charistic_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Characteristic{" +
                "charistic_id=" + charistic_id +
                ", name='" + name + '\'' +
                '}';
    }
}
