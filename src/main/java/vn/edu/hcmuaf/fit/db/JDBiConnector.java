package vn.edu.hcmuaf.fit.db;

import com.mysql.cj.jdbc.MysqlDataSource;
import vn.edu.hcmuaf.fit.model.Product;
import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.model.bean.Account;
import vn.edu.hcmuaf.fit.service.AccountService;

import java.sql.SQLException;
import java.util.List;
import java.util.stream.Collectors;

public class JDBiConnector {
    private static Jdbi jdbi;
    static JDBiConnector connector;

    private static void makeConnect() {
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL("jdbc:mysql://" + DBProperties.host() + ":" + DBProperties.port() + "/"
                + DBProperties.dbName());
        dataSource.setUser(DBProperties.user());
        dataSource.setPassword(DBProperties.pass());
        try {
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            throw new RuntimeException(throwables);
        }
        jdbi = Jdbi.create(dataSource);
    }
    public static Jdbi me(){
        if(connector==null) connector= new JDBiConnector();
        return connector.jdbi;
    }
    public static Jdbi get() {
        if(jdbi==null) makeConnect();
        return jdbi;
    }
    public static void main(String[] args) {
        List<Product> products = JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });

        System.out.println(products);


//        List<Account> accounts = JDBiConnector.get().withHandle(handle -> {
//            return handle.createQuery("select * from account").mapToBean(Account.class)
//                    .stream().collect(Collectors.toList());
//        });
//        System.out.println(accounts);

    }


}
