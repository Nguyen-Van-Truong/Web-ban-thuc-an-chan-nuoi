package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Blog;
import vn.edu.hcmuaf.fit.service.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "IndexController", value = "/IndexController")
public class IndexController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Blog> listBlog = BlogService.getNBlogFrom(3, 0);
        for (Blog blog: listBlog){
            blog.setIntroduce(BlogService.getIntroduce(blog.getBlog_id()));
            blog.setUrl_image(BlogService.getUrl_image(blog.getBlog_id()));
        }
        request.setAttribute("listBlog", listBlog);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
