package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.Category;
import vn.edu.hcmuaf.fit.model.Characteristic;
import vn.edu.hcmuaf.fit.service.CategoryService;
import vn.edu.hcmuaf.fit.service.CharacteristicService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;

@WebServlet(name = "ProductCreate", value = "/ProductCreate")
public class ProductCreate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> listCategory = CategoryService.getListCategory();
        request.setAttribute("ListCategory", listCategory);
        List<Characteristic> listCharacteristic = CharacteristicService.getListCharacteristic();
        request.setAttribute("ListCharacteristic", listCharacteristic);

        request.getRequestDispatcher("admin/product-create.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String productName = request.getParameter("productName");
        String productPrice = request.getParameter("productPrice");
        String productStatus = request.getParameter("productStatus");
        String productCategory = request.getParameter("productCategory");
        String productDesc = request.getParameter("productDesc");
        String[] selectedValues = request.getParameterValues("productCharistic");
//        Part filePart = request.getPart("img");
//        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
//        System.out.println("srcimg:" + fileName);
        for (String s : selectedValues) {
            System.out.println("cha:" + s);
        }
        System.out.println(productName);
        System.out.println(productPrice);
        System.out.println(productStatus);
        System.out.println(productDesc);
        System.out.println(productCategory);


        request.getRequestDispatcher("admin/product-create.jsp").forward(request, response);

    }
}
