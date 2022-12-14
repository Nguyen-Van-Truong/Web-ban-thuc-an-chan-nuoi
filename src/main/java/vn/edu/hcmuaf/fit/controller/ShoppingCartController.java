package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.CartItem;
import vn.edu.hcmuaf.fit.model.ShoppingCart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
        } else if ("updateQuantity".equals(action)) {
            int productId = Integer.parseInt(request.getParameter("productId"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            update(productId, quantity, request);
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

    private void update(int productId, int quantity, HttpServletRequest request) {
        ShoppingCart cart = (ShoppingCart) request.getSession().getAttribute("cart");
        if (cart != null) {
            CartItem item = cart.getItem(productId);
            if (item != null) {
                item.setQuantity(quantity);
            }
        }
    }

    public void remove(int productId, HttpServletRequest request) {
        ShoppingCart cart = (ShoppingCart) request.getSession().getAttribute("cart");
        if (cart != null) {
            cart.removeItem(productId);
        }
    }

}
