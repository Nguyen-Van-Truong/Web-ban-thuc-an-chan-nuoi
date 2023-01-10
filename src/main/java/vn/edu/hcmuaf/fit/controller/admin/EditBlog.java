package vn.edu.hcmuaf.fit.controller.admin;

import org.w3c.dom.stylesheets.LinkStyle;
import vn.edu.hcmuaf.fit.model.Blog;
import vn.edu.hcmuaf.fit.model.ContentBlog;
import vn.edu.hcmuaf.fit.service.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EditBlog", value = "/EditBlog")
public class EditBlog extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int blog_id = Integer.parseInt(request.getParameter("blog_id"));
        Blog blog = BlogService.getBlog(blog_id);
        List<ContentBlog> contentBlogList = BlogService.getListContent(blog_id);
        request.setAttribute("contentBlogList", contentBlogList);
        request.setAttribute("blog", blog);
        request.getRequestDispatcher("admin/blog-details.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
