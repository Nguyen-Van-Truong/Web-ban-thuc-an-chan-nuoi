package vn.edu.hcmuaf.fit.service;


import vn.edu.hcmuaf.fit.model.bean.Account;
import vn.edu.hcmuaf.fit.db.JDBiConnector;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class AccountService {
    private static AccountService instance;

    private static Map<String, String> users = new HashMap<>();

    static {
        users.put("admin", "admin");
        users.put("user", "user");
        users.put("ti", "123");
    }

    private AccountService() {
    }

    public static AccountService getInstance() {
        if (instance == null) {
            instance = new AccountService();
        }
        return instance;
    }

    public Account checkLogin(String username, String password) {
        List<Account> accounts = JDBiConnector.get().withHandle(h ->
                h.createQuery("SELECT * FROM user WHERE username = ?")
                        .bind(0, username)
                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (accounts.size() != 1) return null;
        Account account = accounts.get(0);
        if (
//                !account.getPassword().equals(hashPassword(password)) ||
                !account.getPassword().equals(password) ||
                        !account.getName().equals(username)) return null;
        return account;
    }

    public String hashPassword(String password) {
        try {
            MessageDigest sha256 = null;
            sha256 = MessageDigest.getInstance("SHA-256");
            byte[] hash = sha256.digest(password.getBytes());
            BigInteger number = new BigInteger(1, hash);
            return number.toString(16);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public boolean register(String username, String password, String confirm, String email, String phone, String address) {
//        check register with username and password
//        if(!password.equals(confirm))return false;
//        return UserDao.getInstance().register(username, password, email, phone, address);
        return false;
    }
}
