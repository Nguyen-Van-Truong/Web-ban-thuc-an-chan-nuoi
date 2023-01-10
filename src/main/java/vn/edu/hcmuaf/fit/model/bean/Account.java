package vn.edu.hcmuaf.fit.model.bean;

import vn.edu.hcmuaf.fit.service.AccountService;

import java.io.Serializable;

public class Account implements Serializable {
    private int account_id;
    private String name;
    private String password;
    private String email;
    private int role;

    public Account(int account_id, String name, String password, String email, int role) {
        this.account_id = account_id;
        this.name = name;
        this.password = password;
        this.email = email;
        this.role = role;
    }

    public Account() {
    }

    public String getAvatar() {
        return AccountService.getAvatar(getAccount_id());
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
                ", role=" + role +
                '}';
    }
}
