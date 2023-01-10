package vn.edu.hcmuaf.fit.model.bean;

import vn.edu.hcmuaf.fit.service.AccountService;

import java.io.Serializable;

public class Account implements Serializable {
    private int account_id;
    private String name;
    private String password;
    private String email;
    private String birthday;
    private String address;
    private String phonenumber;
    private String avatar;
    private int role;

    public Account(int account_id, String name, String password, String email, int role) {
        this.account_id = account_id;
        this.name = name;
        this.password = password;
        this.email = email;
        this.role = role;
    }

    public Account(int account_id, String name, String password, String email, String birthday, String address, String phonenumber, String avatar, int role) {
        this.account_id = account_id;
        this.name = name;
        this.password = password;
        this.email = email;
        this.birthday = birthday;
        this.address = address;
        this.phonenumber = phonenumber;
        this.avatar = avatar;
        this.role = role;
    }

    public Account() {
    }

    public String getAvatar() {
        return AccountService.getAvatar(getAccount_id());
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public boolean checkRole(int role) {
        return this.role >= role;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    @Override
    public String toString() {
        return "Account{" +
                "account_id=" + account_id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", birthday='" + birthday + '\'' +
                ", address='" + address + '\'' +
                ", phonenumber='" + phonenumber + '\'' +
                ", avatar='" + avatar + '\'' +
                ", role=" + role +
                '}';
    }
}
