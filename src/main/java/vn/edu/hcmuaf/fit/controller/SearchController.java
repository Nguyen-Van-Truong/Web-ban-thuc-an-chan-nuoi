package vn.edu.hcmuaf.fit.controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchController", value = "/SearchController")
public class SearchController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the search query from the request parameter
        System.out.println("connect");

        String query = request.getParameter("q");

        System.out.println(query);
        // Call the getNProductLikeName method to get the search results from the database
        List<Product> results = ProductService.getNProductLikeName(4, query);

        // Set the response content type to JSON
        response.setContentType("application/json");

        System.out.println(results);
        // Convert the search results to a JSON string and write it to the response
        response.getWriter().write(new Gson().toJson(results));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
