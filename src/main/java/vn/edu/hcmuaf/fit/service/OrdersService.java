package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Order;
import vn.edu.hcmuaf.fit.model.Orders;
import vn.edu.hcmuaf.fit.model.OrdersDetails;

import java.util.List;
import java.util.stream.Collectors;

public class OrdersService {

    public static List<Orders> getNOrdersFrom(int n, int offset){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT order_id, account_id, `date`, total_price, `status` FROM `order` LIMIT :n OFFSET :offset")
                    .bind("n", n)
                    .bind("offset", offset)
                    .mapToBean(Orders.class)
                    .stream()
                    .collect(Collectors.toList());
        });
    }

    public static int countOrders(){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT COUNT(*) AS soluong FROM `order`")
                    .mapTo(Integer.class)
                    .findFirst()
                    .orElse(0);
        });
    }

    public static List<OrdersDetails> getOrdersDetailsList(int orders_id){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT order_id, product_id, quantity, out_price FROM order_detail WHERE order_id = ?")
                    .bind(0, orders_id)
                    .mapToBean(OrdersDetails.class)
                    .stream()
                    .collect(Collectors.toList());
        });
    }

    public static Orders getOneOrders(int orders_id){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT order_id, account_id, `date` , address, phonenumber, status ,transport_id ,total_price FROM `order` where order_id=?")
                    .bind(0, orders_id)
                    .mapToBean(Orders.class)
                    .findFirst()
                    .orElse(new Orders());
        });
    }

    public static void setStatus(int orders_id, int statuss){
        JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("UPDATE `order` SET status = ? WHERE order_id = ?")
                    .bind(0, statuss)
                    .bind(1,orders_id)
                    .execute();
        });
    }


    public static void main(String[] args) {
        System.out.println(getOneOrders(1));
    }
}
