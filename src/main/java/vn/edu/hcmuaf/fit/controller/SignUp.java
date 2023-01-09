package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.bean.Account;
import vn.edu.hcmuaf.fit.service.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SignUp", value = "/doSignUp")
public class SignUp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("pass");
        String email = request.getParameter("email");


        boolean account = AccountService.getInstance().registerUser(username, password, email );
        if (account==false){
            request.setAttribute("error", "Tài khoản đã tồn tại");
            request.getRequestDispatcher("sign-up.jsp").forward(request,response);
        }else {
            response.sendRedirect("index.jsp");
        }
    }
}
