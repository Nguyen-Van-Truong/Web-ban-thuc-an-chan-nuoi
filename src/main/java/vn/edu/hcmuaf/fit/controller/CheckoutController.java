package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.CartItem;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.model.ShoppingCart;
import vn.edu.hcmuaf.fit.model.Transport;
import vn.edu.hcmuaf.fit.service.CheckoutService;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;

@WebServlet(name = "CheckoutController", value = "/Checkout")
public class CheckoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Transport> transports = CheckoutService.getAllTransport();
        request.setAttribute("Transports", transports);

        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String address = request.getParameter("address");
        String currentDate = request.getParameter("currentDate");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String transportIdString = request.getParameter("transport");
        int transportId = 0;
        ShoppingCart cart = (ShoppingCart) request.getSession().getAttribute("cart");
        if (cart == null) {
            System.out.println("chua co san pham trong gio hang");
            response.sendRedirect("ShoppingCart");
        } else {
            if (transportIdString != null) {
                transportId = Integer.parseInt(transportIdString);
            }
            boolean successCheckout = true;
            try {
                if (successCheckout &= CheckoutService.createOrder(currentDate, address, phoneNumber, transportId, 2)) {
                    List<CartItem> items = cart.getItems();
                    for (CartItem item : items) {
                        Product product = ProductService.getProductFromProductId(item.getProductId());
                        successCheckout &= CheckoutService.createOrderDetail(item.getProductId(), item.getQuantity(), product.getOutPrice());
                    }
                }
            } catch (ParseException e) {
                throw new RuntimeException(e);
            }
            if (successCheckout) {
                request.getSession().setAttribute("cart", null);
                System.out.println("dat hang thanh cong");
            }
        }
        response.sendRedirect("ShoppingCart");

    }
}
