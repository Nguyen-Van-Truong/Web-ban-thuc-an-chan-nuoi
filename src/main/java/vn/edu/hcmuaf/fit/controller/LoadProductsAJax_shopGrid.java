package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

@WebServlet(name = "LoadProductsAJax_shopGrid", value = "/LoadProductsAJax_shopGrid")
public class LoadProductsAJax_shopGrid extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the printwriter object to write the response
        PrintWriter out = response.getWriter();
        List<Product> products;

        // Get the page number from the request
        int page = 1;
        int category_id;
        String pageParam = request.getParameter("page");
        if (pageParam != null) {
            page = Integer.parseInt(pageParam);
        }

        String cateParam = request.getParameter("category_id");
        category_id = Integer.parseInt(request.getParameter("category_id"));

        List<Integer> source_id = new ArrayList<Integer>();

        String sourceIdValues = request.getParameter("charistic_id");
        System.out.println(sourceIdValues);

        StringTokenizer st = new StringTokenizer(sourceIdValues, ",");
        while (st.hasMoreTokens()) {
            String i = st.nextToken();
            System.out.println(i);
            source_id.add(Integer.parseInt(i));
        }
        products = ProductService.getListProduct(page, category_id, source_id);


        for (Product p : products) {
            out.println("<div class=\"col-lg-4 col-md-6 col-sm-6\">\n" +
                    "  <div class=\"product__item\">\n" +
                    "    <div\n" +
                    "      class=\"product__item__pic set-bg\"\n" +
                    "      data-setbg=\"" + p.get1SrcImg() + "\"\n" +
                    "      style=\"background-image: url(" + p.get1SrcImg() + ")\">\n" +
                    "      <ul class=\"product__item__pic__hover\">\n" +
                    "        <li>\n" +
                    "          <a href=\"#\"><i class=\"fa fa-heart\"></i></a>\n" +
                    "        </li>\n" +
                    "        <li>\n" +
                    "          <a href=\"#\"><i class=\"fa fa-retweet\"></i></a>\n" +
                    "        </li>\n" +
                    "        <li>\n" +
                    "          <a href=\"#\"><i class=\"fa fa-shopping-cart\"></i></a>\n" +
                    "        </li>\n" +
                    "      </ul>\n" +
                    "    </div>\n" +
                    "    <div class=\"product__item__text\">\n" +
                    "      <h6><a href=\"shop-detail?productId=" + p.getProduct_id() + "\">" + p.getProduct_name() + "\n" +
                    "      </a></h6>\n" +
                    "      <h5>" + p.getOutPrice() + "\n" +
                    "      </h5>\n" +
                    "    </div>\n" +
                    "  </div>\n" +
                    "</div>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void loadCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.println("ga");
    }
}
