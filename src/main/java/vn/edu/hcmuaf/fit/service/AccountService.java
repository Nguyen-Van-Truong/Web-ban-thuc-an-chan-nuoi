package vn.edu.hcmuaf.fit.service;


import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.bean.Account;

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

    public AccountService() {
    }

    public static AccountService getInstance() {
        if (instance == null) {
            instance = new AccountService();
        }
        return instance;
    }

    public static void updateStatus(int account_id, int status) {
        JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("UPDATE account SET role = ? WHERE account_id = ?")
                    .bind(0, status)
                    .bind(1, account_id)
                    .execute();
        });
    }

    public static Account getOneAccount(int account_id) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select * FROM account where account_id = ?")
                    .bind(0, account_id)
                    .mapToBean(Account.class)
                    .findFirst()
                    .orElse(new Account());
        });
    }

    public static List<Account> getNAccount(int n, int offset) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT account_id,full_name, avatar_url ,role FROM account Limit :n OFFSET :offset")
                    .bind("n", n)
                    .bind("offset", offset)
                    .mapToBean(Account.class)
                    .stream()
                    .collect(Collectors.toList());
        });
    }

    public static int countAccount() {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT COUNT(*) AS soluong FROM account")
                    .mapTo(Integer.class)
                    .findFirst()
                    .orElse(0);
        });
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

    public boolean registerUser(String username, String password, String email) {

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

    public Account findNameAndEmail(String username, String email) {
        List<Account> accounts = JDBiConnector.get().withHandle(h ->
                h.createQuery("SELECT * FROM account WHERE email = ? AND name = ?")
                        .bind(0, email)
                        .bind(1, username)
                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (accounts.size() != 1) return null;
        Account account = accounts.get(0);
        if (
                !account.getEmail().equals(email) ||
                        !account.getName().equals(username)) return null;
        return account;
    }

    public boolean changePassword(String username, String password, String newpassword) {

        int rowAffected = JDBiConnector.get().withHandle(h ->
                h.createUpdate("UPDATE account SET password = ? WHERE name = ? AND password = ?")
                        .bind(0, newpassword)
                        .bind(1, username)
                        .bind(2, password)
                        .execute()
        );
        return rowAffected > 0;
    }


}
