package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Category;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.service.CategoryService;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "IndexController", value = "/index")
public class IndexController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Product> listFeaturedProduct = ProductService.getNFeaturedProducts(8);
        request.setAttribute("ListFeaturedProduct", listFeaturedProduct);

        List<Category> listCategoryHaveFeaturedProduct = CategoryService.getListCategoryHaveFeaturedProduct();
        request.setAttribute("ListCategoryHaveFeaturedProduct", listCategoryHaveFeaturedProduct);

        List<Category> listAllCategory = CategoryService.getListCategory();
        request.setAttribute("ListAllCategory", listAllCategory);

        List<Product> listNNewProducts = ProductService.getNNewProducts(6);
        request.setAttribute("ListNNewProducts", listNNewProducts);

        List<Product> listNBestSellingProducts = ProductService.getNBestSellingProducts(6);
        request.setAttribute("ListNBestSellingProducts", listNBestSellingProducts);

        List<Product> listNBestAvgScoreProducts = ProductService.getNBestAvgScoreProducts(6);
        request.setAttribute("ListNBestAvgScoreProducts", listNBestAvgScoreProducts);

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}