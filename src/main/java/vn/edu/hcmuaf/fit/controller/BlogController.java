package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Blog;
import vn.edu.hcmuaf.fit.service.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BlogController", value = "/BlogController")
public class BlogController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
        int offset = (pageNumber - 1) * 6;
        List<Blog> listBlog = BlogService.getNBlogFrom(6, offset);
        for(Blog blog: listBlog){
            blog.setUrl_image(BlogService.getUrl_image(blog.getBlog_id()));
            blog.setIntroduce(BlogService.getIntroduce(blog.getBlog_id()));
        }

        int blogSize = ((BlogService.countBlog()) / 6) + 1;

        List<Blog> listNewBlog = BlogService.getNNewBlog(3);
        for(Blog blog: listNewBlog){
            blog.setUrl_image(BlogService.getUrl_image(blog.getBlog_id()));
            blog.setIntroduce(BlogService.getIntroduce(blog.getBlog_id()));
        }
        request.setAttribute("listNewBlog", listNewBlog);
        request.setAttribute("blogSize", blogSize);
        request.setAttribute("listBlog", listBlog);
        request.getRequestDispatcher("blog.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
