package vn.edu.hcmuaf.fit.model.bean;

import java.io.Serializable;
import java.util.Date;

public class Account implements Serializable {
    private int account_id;
    private String name;
    private String email;
    private String password;
    private String full_name;
    private Date birthday;
    private String address;
    private String phone_number;
    private String avatar_url;

    private int role;



    public Account(int id, String name, String password, int role) {
        this.account_id = id;
        this.name = name;
        this.password = password;
        this.role = role;
    }

    public Account() {
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int id) {
        this.account_id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
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

    public String getAvatar_url() {
        return avatar_url;
    }

    public void setAvatar_url(String avatar_url) {
        this.avatar_url = avatar_url;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public boolean checkRole(int role) {
        return this.role >= role;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + account_id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
