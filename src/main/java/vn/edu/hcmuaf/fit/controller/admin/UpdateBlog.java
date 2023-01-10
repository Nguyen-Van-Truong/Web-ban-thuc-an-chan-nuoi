package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.Blog;
import vn.edu.hcmuaf.fit.model.ContentBlog;
import vn.edu.hcmuaf.fit.service.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UpdateBlog", value = "/UpdateBlog")
public class UpdateBlog extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int blog_id = Integer.parseInt(request.getParameter("blog_id"));
        if(true){
            String title = request.getParameter("title");
            BlogService.updateBlogTitle(blog_id, title);

            int number_content = Integer.parseInt(request.getParameter("number_content"));
            String url_image = "";
            String paragrap = "";
            int serial = 0;
            for(int i = 0; i < number_content; i++){
                url_image = request.getParameter("url_image"+i);
                paragrap = request.getParameter("paragrap"+i);
                serial = Integer.parseInt(request.getParameter("serial"+i));
                System.out.println(serial);
                System.out.println(url_image);
                System.out.println(paragrap);

                BlogService.updateContentBlog(serial, url_image, paragrap);
            }
        }
        Blog blog = BlogService.getBlog(blog_id);
        List<ContentBlog> contentBlogList = BlogService.getListContent(blog_id);
        request.setAttribute("contentBlogList", contentBlogList);
        request.setAttribute("blog", blog);
        request.getRequestDispatcher("admin/blog-details.jsp").forward(request, response);
    }


}
