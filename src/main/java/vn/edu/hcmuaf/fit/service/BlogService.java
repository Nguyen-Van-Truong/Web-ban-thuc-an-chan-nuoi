package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Blog;
import vn.edu.hcmuaf.fit.model.ContentBlog;

import java.util.List;
import java.util.stream.Collectors;

public class BlogService {

    public static List<Blog> getNBlogFrom(int n, int off){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select blog_id, title, create_date FROM blog  limit :n OFFSET :offset")
                    .bind("n", n)
                    .bind("offset", off)
                    .mapToBean(Blog.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<Blog> getNNewBlog(int n){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT blog_id, title, create_date FROM blog ORDER BY blog_id DESC LiMIT :n")
                    .bind("n", n)
                    .mapToBean(Blog.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static String getUrl_image(int blog_id){
        return  JDBiConnector.get().withHandle(handle ->{
            return handle.createQuery("SELECT url_image FROM content_blog WHERE blog_id = ?")
                .bind(0, blog_id)
                .mapTo(String.class)
                .findFirst()
                .orElse("img/images/img_default/img_not_found.png");
        });
    }

    public static String getIntroduce(int blog_id){
       String result = BlogService.getParagrap(blog_id);
       result = result.substring(0, result.indexOf("."));
       return result;
    }

    private static String getParagrap(int blog_id){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT paragrap FROM content_blog where  blog_id = ?")
                    .bind(0, blog_id)
                    .mapTo(String.class)
                    .findFirst()
                    .orElse("");
        });
    }

    public static int countBlog(){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT COUNT(*) AS soluong FROM blog")
                    .mapTo(Integer.class)
                    .findFirst()
                    .orElse(0);
        });
    }

    public static Blog getBlog(int blog_id){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select blog_id, title, create_date FROM blog  where blog_id = ?")
                    .bind(0, blog_id)
                    .mapToBean(Blog.class)
                    .findFirst()
                    .orElse(new Blog());
        });
    }

    public static List<ContentBlog> getListContent(int blog_id){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT url_image, paragrap FROM content_blog WHERE blog_id = ?")
                    .bind(0, blog_id)
                    .mapToBean(ContentBlog.class)
                    .stream().collect(Collectors.toList());
        });
    }






    public static void main(String[] args){

        System.out.println(BlogService.getListContent(1).toString());
    }
}
