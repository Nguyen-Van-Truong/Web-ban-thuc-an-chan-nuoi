package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.Blog;
import vn.edu.hcmuaf.fit.model.Orders;
import vn.edu.hcmuaf.fit.service.BlogService;
import vn.edu.hcmuaf.fit.service.OrdersService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoadBlogList", value = "/LoadBlogList")
public class LoadBlogList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
        int offset = (pageNumber - 1) * 9;
        int pageSize = (BlogService.countBlog() / 9) + 1;
        List<Blog> listBlog = BlogService.getNBlogFrom(9,offset);
        request.setAttribute("listBlog", listBlog);
        request.setAttribute("pageSize",pageSize );
        request.setAttribute("pageNow",pageNumber);
        request.getRequestDispatcher("admin/blog-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
