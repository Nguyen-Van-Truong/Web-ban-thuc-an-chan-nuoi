package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.bean.Account;
import vn.edu.hcmuaf.fit.service.AccountService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoadAccountEdit", value = "/LoadAccountEdit")
public class LoadAccountEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int account_id = Integer.parseInt(request.getParameter("account_id"));
        Account account = AccountService.getOneAccount(account_id);
        request.setAttribute("account", account);
        request.setAttribute("pageNow", request.getParameter("pageNow"));
        request.getRequestDispatcher("admin/account-edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
