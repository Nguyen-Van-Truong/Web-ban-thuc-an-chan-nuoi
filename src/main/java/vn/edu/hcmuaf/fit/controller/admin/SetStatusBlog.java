package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.Blog;
import vn.edu.hcmuaf.fit.service.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SetStatusBlog", value = "/SetStatusBlog")
public class SetStatusBlog extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(true){
            int blog_id = Integer.parseInt(request.getParameter("blog_id"));
            int status = Integer.parseInt((request.getParameter("status")));
            if(status == 1){
                status = 0;
            }else{
                status = 1;
            }
            BlogService.setStatus(blog_id, status);
        }

        int pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
        int offset = (pageNumber - 1) * 9;
        int pageSize = (BlogService.countBlog() / 9) + 1;
        List<Blog> listBlog = BlogService.getNBlogFrom(9,offset);
        request.setAttribute("listBlog", listBlog);
        request.setAttribute("pageSize",pageSize );
        request.setAttribute("pageNow", pageNumber);
        request.getRequestDispatcher("admin/blog-list.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
