package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.bean.Account;
import vn.edu.hcmuaf.fit.service.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LockAccount", value = "/LockAccount")
public class LockAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int account_id = Integer.parseInt(request.getParameter("account_id"));
        int status = Integer.parseInt(request.getParameter("select"));

        AccountService.updateStatus(account_id, status);


        int pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
        int offset = (pageNumber - 1) * 9;
        int countAccount = AccountService.countAccount();
        int pageSize = (countAccount / 9) + 1;
        List<Account> listAccount = AccountService.getNAccount(9, offset);
        request.setAttribute("pageNow",pageNumber);
        request.setAttribute("listAccount", listAccount);
        request.setAttribute("pageSize", pageSize);
        request.getRequestDispatcher("admin/account-list.jsp").forward(request, response);

    }
}
