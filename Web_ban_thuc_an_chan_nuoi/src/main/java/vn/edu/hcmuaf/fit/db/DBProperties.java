package vn.edu.hcmuaf.fit.db;

import java.io.IOException;
import java.util.Properties;

public class DBProperties {
    private static final Properties prop = new Properties();

    static {
        try {
            prop.load(DBProperties.class.getClassLoader().getResourceAsStream("db.properties"));
        } catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public static String host() {
        return prop.getProperty("db.host").toString();
    }

    public static String port() {
        return prop.getProperty("db.port").toString();
    }

    public static String user() {
        return prop.getProperty("db.user").toString();
    }

    public static String pass() {
        return prop.getProperty("db.pass").toString();
    }

    public static String dbName() {
        return prop.getProperty("db.name").toString();
    }

    public static void main(String[] args) {
        System.out.println(DBProperties.host());
    }
}
