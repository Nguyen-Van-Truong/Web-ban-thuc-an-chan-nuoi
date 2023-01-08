package vn.edu.hcmuaf.fit.model;

public class ContentBlog {
    private String url_image;
    private String paragrap;

    public ContentBlog(){

    }

    public ContentBlog(String url_image, String paragrap){
        this.url_image = url_image;
        this.paragrap = paragrap;
    }

    public void setUrl_image(String url_image){
        this.url_image = url_image;
    }
    public void setParagrap(String paragrap){
        this.paragrap = paragrap;
    }

    public String getUrl_image(){
        return this.url_image;
    }

    public String getParagrap(){
        return this.paragrap;
    }

    public String toString(){
        return this.paragrap;
    }
}
