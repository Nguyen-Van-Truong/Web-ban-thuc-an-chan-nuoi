package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.bean.Account;
import vn.edu.hcmuaf.fit.service.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Profile", value = "/Profile")
public class Profile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account ac = (Account) request.getSession().getAttribute("currentAccount");
        String username = ac.getName();
        String fullnameOfUser = request.getParameter("fullnameOfUser");
        String email = request.getParameter("emailAddress");
        String phoneNumber = request.getParameter("phoneNumber");
        String birthday = request.getParameter("birthday");

        System.out.println("Profile Post:" + username + " " + fullnameOfUser + " " + email +" "+ phoneNumber +" "+ birthday);

        boolean account = AccountService.getInstance().updateInfoUser(username, fullnameOfUser, email, phoneNumber, birthday);
        if (account == false) {
            request.setAttribute("error", "???");
//            request.getRequestDispatcher("profile.jsp").forward(request, response);
            response.sendRedirect("profile.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
    }
}
