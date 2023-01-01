package vn.edu.hcmuaf.fit.controller.mod;

import vn.edu.hcmuaf.fit.model.bean.Account;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Mod", value = "/mod/mod")
public class Mod extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account auth= (Account) session.getAttribute("auth");
        if(auth==null || !auth.checkRole(1)){
            request.setAttribute("error","Bạn không có quyền truy cập");
            response.sendRedirect("../login.jsp");
            return;
        }
        response.getWriter().println("Xin chào Mod");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
