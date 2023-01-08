package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.CartItem;
import vn.edu.hcmuaf.fit.model.ShoppingCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShoppingCartController", value = "/ShoppingCart")
public class ShoppingCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("shoping-cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println(action);
        if ("add".equals(action)) {
            int productId = Integer.parseInt(request.getParameter("productId"));
            add(request, productId);
        } else if ("remove".equals(action)) {
            int productId = Integer.parseInt(request.getParameter("productId"));
            remove(productId, request);
        }
        request.getSession().setMaxInactiveInterval(1800);
    }

    private static void add(HttpServletRequest request, int productId) {
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        ShoppingCart cart = (ShoppingCart) request.getSession().getAttribute("cart");
        if (cart == null) {
            cart = new ShoppingCart();
            request.getSession().setAttribute("cart", cart);
        }
        cart.addItem(productId, quantity);
    }

    public void remove(int productId, HttpServletRequest request) {
        ShoppingCart cart = (ShoppingCart) request.getSession().getAttribute("cart");
        if (cart != null) {
            cart.removeItem(productId);
        }
    }

}
