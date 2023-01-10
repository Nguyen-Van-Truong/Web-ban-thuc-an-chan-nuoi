package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.model.Transport;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class CheckoutService {

    public static List<Transport> getAllTransport() {
        return JDBiConnector.get().withHandle(handle -> {
            // Select all columns from the transport table
            String sql = "SELECT transport_id,name,price FROM transport;\n";
            return handle.createQuery(sql)
                    .mapToBean(Transport.class)
                    .list();
        });
    }

    public static boolean createOrder(int accountId, String currentDate, String address, String phoneNumber, int transportId, int status) throws ParseException {
        SimpleDateFormat inputFormat = new SimpleDateFormat("dd/MM/yyyy");
        SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = inputFormat.parse(currentDate);
        String formattedDate = outputFormat.format(date);

        int maxOrderId = JDBiConnector.get().withHandle(h ->
                h.createQuery("SELECT MAX(order_id) FROM `order`")
                        .mapTo(Integer.class)
                        .findOnly()
        );

        int rowsAffected = JDBiConnector.get().withHandle(h ->
                h.createUpdate("INSERT INTO `order` (account_id,order_id, date, address, phonenumber, transport_id,status)" +
                                " VALUES (:account_id,:orderId, :currentDate, :address, :phoneNumber, :transportId,:status)")
                        .bind("orderId", maxOrderId + 1)  // Increment the maximum order_id by 1
                        .bind("currentDate", formattedDate)
                        .bind("address", address)
                        .bind("phoneNumber", phoneNumber)
                        .bind("transportId", transportId)
                        .bind("status", status)
                        .bind("account_id", accountId)
                        .execute()
        );
        return rowsAffected > 0;
    }

    public static boolean createOrderDetail(int productId, int quantity, int outPrice) {
        int maxOrderId = JDBiConnector.get().withHandle(h ->
                h.createQuery("SELECT MAX(order_id) FROM `order`")
                        .mapTo(Integer.class)
                        .findOnly()
        );
        int maxOrderDetailId = JDBiConnector.get().withHandle(h ->
                h.createQuery("SELECT MAX(order_detail_id) FROM order_detail")
                        .mapTo(Integer.class)
                        .findOnly()
        );
        int rowsAffected = JDBiConnector.get().withHandle(h ->
                h.createUpdate("INSERT INTO order_detail (order_detail_id, order_id, product_id, quantity, out_price)" +
                                " VALUES (:orderDetailId, :orderId, :productId, :quantity, :outPrice)")
                        .bind("orderDetailId", maxOrderDetailId + 1)  // Increment the maximum order_detail_id by 1
                        .bind("orderId", maxOrderId)
                        .bind("productId", productId)
                        .bind("quantity", quantity)
                        .bind("outPrice", outPrice)
                        .execute()
        );
        return rowsAffected > 0;
    }


    public static void main(String[] args) throws ParseException {
        System.out.println(createOrder(7, "9/1/2023", "tphcm", "0765366824", 1, 2));
//        System.out.println(createOrderDetail(1,10,20000));

    }
}
