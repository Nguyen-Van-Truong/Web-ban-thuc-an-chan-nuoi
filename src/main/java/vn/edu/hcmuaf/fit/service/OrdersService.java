package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Orders;
import vn.edu.hcmuaf.fit.model.OrdersDetails;

import java.util.List;
import java.util.stream.Collectors;

public class OrdersService {

    public static List<Orders> getNOrdersFrom(int n, int offset){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT orders_id, account_id, create_date, total_price, statuss FROM orders LIMIT :n OFFSET :offset")
                    .bind("n", n)
                    .bind("offset", offset)
                    .mapToBean(Orders.class)
                    .stream()
                    .collect(Collectors.toList());
        });
    }

    public static int countOrders(){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT COUNT(*) AS soluong FROM orders")
                    .mapTo(Integer.class)
                    .findFirst()
                    .orElse(0);
        });
    }

    public static List<OrdersDetails> getOrdersDetailsList(int orders_id){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT orders_id, product_id, quantity, out_price FROM ordersDetails WHERE orders_id = ?")
                    .bind(0, orders_id)
                    .mapToBean(OrdersDetails.class)
                    .stream()
                    .collect(Collectors.toList());
        });
    }

    public static Orders getOneOrders(int orders_id){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT orders_id, account_id, create_date, total_price, statuss FROM orders where orders_id=?")
                    .bind(0, orders_id)
                    .mapToBean(Orders.class)
                    .findFirst()
                    .orElse(new Orders());
        });
    }

    public static void setStatus(int orders_id, int statuss){
        JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("UPDATE orders SET statuss = ? WHERE orders_id = ?")
                    .bind(0, statuss)
                    .bind(1,orders_id)
                    .execute();
        });
    }


    public static void main(String[] args) {
        System.out.println(OrdersService.getOrdersDetailsList(1));
    }
}