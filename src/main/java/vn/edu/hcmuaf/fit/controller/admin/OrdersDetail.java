package vn.edu.hcmuaf.fit.controller.admin;

import com.mysql.cj.x.protobuf.MysqlxCrud;
import vn.edu.hcmuaf.fit.model.Orders;
import vn.edu.hcmuaf.fit.model.OrdersDetails;
import vn.edu.hcmuaf.fit.model.Transport;
import vn.edu.hcmuaf.fit.service.OrdersService;
import vn.edu.hcmuaf.fit.service.TransportService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrdersDetail", value = "/OrdersDetail")
public class OrdersDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int orders_id = Integer.parseInt(request.getParameter("orders_id"));
        List<OrdersDetails> ordersDetailList = OrdersService.getOrdersDetailsList(orders_id);
        Orders orders = OrdersService.getOneOrders(orders_id);
        Transport transport = TransportService.getTransport(orders_id);
        request.setAttribute("transport", transport);
        request.setAttribute("listOrdersDetails", ordersDetailList);
        request.setAttribute("orders", orders);
        request.getRequestDispatcher("admin/order-details.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
