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
        users.put("truong123", "123");
        users.put("in", "12345");
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
                h.createQuery("SELECT * FROM account WHERE name = ?")
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

    public  boolean registerUser(String username, String password, String email) {

        int count = JDBiConnector.get().withHandle(h ->
                h.createQuery("SELECT COUNT(*) FROM account WHERE name = ?")
                        .bind(0, username)
                        .mapTo(Integer.class)
                        .findOnly()
        );

        if (count > 0)
            return false;
        int rowAffected = JDBiConnector.get().withHandle(h ->
                h.createUpdate("INSERT INTO account SELECT (MAX(account_id)+1), ?, ?, ?, null, null, null,null, 1  FROM account")
                        .bind(0, username)
                        .bind(1, password)
                        .bind(2, email)
                        .execute()
        );
        return rowAffected > 0;
    }


}
