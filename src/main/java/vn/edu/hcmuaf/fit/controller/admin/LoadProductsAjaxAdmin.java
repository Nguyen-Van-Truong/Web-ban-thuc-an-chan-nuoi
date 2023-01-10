package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "LoadProductsAjaxAdmin", value = "/LoadProductsAjaxAdmin")
public class LoadProductsAjaxAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products;
        List<Integer> characteristic_ids = new ArrayList<>();
        int page = 1;
        String pageParam = request.getParameter("page");
        if (pageParam != null) {
            page = Integer.parseInt(pageParam);
        }
        products = ProductService.getListProduct(page, -99, characteristic_ids);

        PrintWriter out = response.getWriter();
        out.println(" <table id=\"listProduct\">\n" +
                "                            <tr>\n" +
                "                                <th>Ảnh</th>\n" +
                "                                <th>Tên sản phẩm</th>\n" +
                "                                <th>Trạng thái</th>\n" +
                "                                <th>Số lượng</th>\n" +
                "                                <th>Ngày tạo</th>\n" +
                "                                <th>Giá bán hiện tại</th>\n" +
                "                                <th>Tùy chọn</th>\n" +
                "                            </tr>");
        for (Product p : products) {
            out.println("                                <tr>\n" +
                    "                                    <td><img src=\"" + p.get1SrcImg() + "\" alt=\"\"\n" +
                    "                                             style=\"width: 100px; height: 100px\"/></td>\n" +
                    "                                    <td>" + p.getProduct_name() + "</td>\n" +
                    "                                    <td>\n" +
                    "                                        <button class=\"gr-setting\">" + p.toStringStatus() + "</button>\n" +
                    "                                    </td>\n" +
                    "                                    <td>" + p.getQuantity() + "</td>\n" +
                    "                                    <td>" + p.getCreate_date() + "</td>\n" +
                    "                                    <td>" + p.getOutPrice() + " VNĐ</td>\n" +
                    "                                    <td>\n" +
                    "                                        <a href=\"product-edit.jsp\">\n" +
                    "                                            <button data-toggle=\"tooltip\" title=\"Xem chi tiết\" class=\"pd-setting-ed\"><i\n" +
                    "                                                    class=\"fa fa-eye\" aria-hidden=\"true\"></i></button>\n" +
                    "                                        </a>\n" +
                    "                                        <a href=\"product-edit.jsp\">\n" +
                    "                                            <button data-toggle=\"tooltip\" title=\"Nhập hàng\" class=\"pd-setting-ed\"><i\n" +
                    "                                                    class=\"fa fa-plus-square-o\" aria-hidden=\"true\"></i></button>\n" +
                    "                                        </a>\n" +
                    "                                        <a href=\"product-edit.jsp\">\n" +
                    "                                            <button data-toggle=\"tooltip\" title=\"Chỉnh sửa\" class=\"pd-setting-ed\"><i\n" +
                    "                                                    class=\"fa fa-pencil-square-o\" aria-hidden=\"true\"></i></button>\n" +
                    "                                        </a>\n" +
                    "                                        <a>\n" +
                    "                                            <button data-toggle=\"tooltip\" title=\"Xóa\" class=\"pd-setting-ed\"><i\n" +
                    "                                                    class=\"fa fa-trash-o\" aria-hidden=\"true\"></i></button>\n" +
                    "                                        </a>\n" +
                    "                                    </td>\n" +
                    "                                </tr>\n");
        }
        out.println("                        </table>\n");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
