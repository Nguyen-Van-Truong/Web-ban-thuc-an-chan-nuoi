package vn.edu.hcmuaf.fit.controller.admin;

import com.mysql.cj.x.protobuf.MysqlxCrud;
import vn.edu.hcmuaf.fit.model.Order;
import vn.edu.hcmuaf.fit.model.Orders;
import vn.edu.hcmuaf.fit.service.OrdersService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoadOrdersList", value = "/LoadOrdersList")
public class LoadOrdersList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
        int offset = (pageNumber - 1) * 9;
        int pageSize = (OrdersService.countOrders() / 9) + 1;
        List<Orders> listOrders = OrdersService.getNOrdersFrom(9, offset);
        request.setAttribute("listOrders", listOrders);
        request.setAttribute("pageSize",pageSize );
        request.getRequestDispatcher("admin/order-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
