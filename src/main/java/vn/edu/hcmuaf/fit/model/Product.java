package vn.edu.hcmuaf.fit.model;

import vn.edu.hcmuaf.fit.service.ProductService;

import java.io.Serializable;
import java.util.List;

public class Product implements Serializable {
    private int product_id;
    private String product_name;
    private String product_description;
    private String create_date;
    private int quantity;
    private String status;

    public Product() {
    }

    public Product(int product_id, String product_name, String product_description, String create_date, int quantity, String status) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.product_description = product_description;
        this.create_date = create_date;
        this.quantity = quantity;
        this.status = status;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_description() {
        return product_description;
    }

    public void setProduct_description(String product_description) {
        this.product_description = product_description;
    }

    public String getCreate_date() {
        return create_date;
    }

    public void setCreate_date(String create_date) {
        this.create_date = create_date;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String get1SrcImg() {
        return ProductService.get1SrcImg(this.getProduct_id());
    }

    public List<String> getAllSrcImg() {
        return ProductService.getAllImgFromProductId(this.getProduct_id());
    }

    public Integer getOutPrice() {
        return ProductService.getOutPrice(this.getProduct_id());
    }

    public List<Integer> getAllCategoryIds() {
        return ProductService.getAllCategoryIdsFromProductId(this.getProduct_id());
    }

    public List<Product> getNRelatedProducts(int n) {
        return ProductService.getNRelatedProducts(n, getAllCategoryIds(), this.getProduct_id());
    }

    public String toStringListCate(List<Integer> listCate) {
        String resultListIntToString = "";
        for (Integer i : listCate) {
            resultListIntToString += " c" + i;
        }
        return resultListIntToString;
    }

    @Override
    public String toString() {
        return "Product{" +
                "product_id=" + product_id +
                ", product_name='" + product_name + '\'' +
                ", product_description='" + product_description + '\'' +
                ", create_date='" + create_date + '\'' +
                ", quantity=" + quantity +
                ", status='" + status + '\'' +
                '}';
    }
}
