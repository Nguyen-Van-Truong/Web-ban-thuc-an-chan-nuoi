package vn.edu.hcmuaf.fit.controller;


import vn.edu.hcmuaf.fit.model.Category;
import vn.edu.hcmuaf.fit.model.Characteristic;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.service.CategoryService;
import vn.edu.hcmuaf.fit.service.CharacteristicService;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShopGrid", value = "/shop-grid")
public class ShopGridController extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> listCategory = CategoryService.getListCategory();
        request.setAttribute("ListCategory", listCategory);

        List<Characteristic> listCharacteristic = CharacteristicService.getListCharacteristic();
        request.setAttribute("ListCharacteristic", listCharacteristic);

        request.getRequestDispatcher("shop-grid.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public static void main(String[] args) {

    }
}
