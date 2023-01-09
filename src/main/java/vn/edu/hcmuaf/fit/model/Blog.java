package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class Blog implements Serializable {
    private int blog_id;
    private String title;
    private Date create_date;
    private int is_use;

    private String introduce;
    private String url_image;

    public Blog(){

    }

    public Blog(int blog_id, String title,Date create_date,int is_use){
        this.blog_id = blog_id;
        this.title = title;
        this.create_date = create_date;
        this.is_use = is_use;
    }

    public void setBlog_id(int blog_id){
        this.blog_id = blog_id;
    }
    public void setTitle(String title){
        this.title = title;
    }

    public void setCreate_date(Date create_date){
        this.create_date = create_date;
    }

    public void setIs_use(int is_use){
        this.is_use = is_use;
    }

    public String getTitle(){
        return this.title;
    }
    public int getBlog_id() {return this.blog_id;}
    public int getIs_use() { return this.is_use;}


    public Date getCreate_date() {
        return create_date;
    }
    public void setIntroduce(String introduce){
        this.introduce = introduce;
    }
    public String getIntroduce(){
        return introduce;
    }
    public void setUrl_image(String url_image){
        this.url_image = url_image;
    }
    public String getUrl_image(){
        return url_image;
    }

    public String toString(){
        return this.blog_id+"_"+this.title+"_"+this.introduce+"_"+this.create_date+"_"+this.is_use;
    }



}
