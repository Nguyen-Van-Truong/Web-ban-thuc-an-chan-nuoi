package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.service.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ChangePassword", value = "/doChangePassword")
public class ChangePassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("pass");
        String passnew = request.getParameter("passnew");


        boolean account = AccountService.getInstance().changePassword(username, password, passnew );
        if (account==false){
            request.setAttribute("error", "Tài khoản hoặc mật khẩu không đúng");
            request.getRequestDispatcher("changePassword.jsp").forward(request,response);
        }else {
            response.sendRedirect("login.jsp");
        }
    }
}
