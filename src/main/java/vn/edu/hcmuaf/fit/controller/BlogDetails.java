package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Blog;
import vn.edu.hcmuaf.fit.model.ContentBlog;
import vn.edu.hcmuaf.fit.service.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BlogDetails", value = "/BlogDetails")
public class BlogDetails extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int blog_id = Integer.parseInt(request.getParameter("blog_id"));


        Blog blog = BlogService.getBlog(blog_id);
        List<ContentBlog> listContent = BlogService.getListContent(blog_id);

        List<Blog> listNewBlog = BlogService.getNNewBlog(3);
        for(Blog otherBlog: listNewBlog){
            otherBlog.setUrl_image(BlogService.getUrl_image(otherBlog.getBlog_id()));
            otherBlog.setIntroduce(BlogService.getIntroduce(otherBlog.getBlog_id()));
        }
        request.setAttribute("listNewBlog", listNewBlog);

        request.setAttribute("blog", blog);
        request.setAttribute("listContent", listContent);
        request.getRequestDispatcher("blog-details.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
