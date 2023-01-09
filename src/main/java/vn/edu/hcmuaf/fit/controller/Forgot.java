package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.bean.Account;
import vn.edu.hcmuaf.fit.service.AccountService;
import vn.edu.hcmuaf.fit.service.EmailUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Forgot", value = "/doForgot")
public class Forgot extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String emailAddress = request.getParameter("email");
            String username = request.getParameter("username");

            AccountService asv = new AccountService();
            Account account = asv.findNameAndEmail(username, emailAddress);

            if (account == null) {
                request.setAttribute("error", "Tài Khoản hoặc email không đúng!");
                request.getRequestDispatcher("forgot.jsp").forward(request, response);
            } else {
                Email email = new Email();
                email.setFrom("thucanchannuoiweb@gmail.com");
                email.setFromPassword("n r l q z h t s m t j g r q h l");
                email.setTo(emailAddress);
                email.setSubject("Forgot password function");
                StringBuilder sb = new StringBuilder();
                sb.append("Chào ").append(username).append("!").append("<br>");
                sb.append("Bạn đang dùng tính năng quên mật khẩu. <br>");
                sb.append("Mật khẩu của bạn là <b>").append(account.getPassword()).append("</b> <br>");
                sb.append("Trân trọng,<br>");
                sb.append("Admin Chăn nuôi");

                email.setContent(sb.toString());
                EmailUtils.send(email);

                request.setAttribute("message", "Thông tin mật khẩu đã được gửi về email của bạn. "
                        + "Hãy kiểm tra họp thư để lấy mật khẩu!");
                response.sendRedirect("login");

            }
        } catch (Exception e) {
            e.printStackTrace();

            request.setAttribute("error", e.getMessage());
        }

    }
}
