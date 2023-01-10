package vn.edu.hcmuaf.fit.service;


import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Product;

import java.util.List;
import java.util.stream.Collectors;

public class ProductService {
    static int pageSize = 4;  // so san pham 1 trang

    public static List<Product> getListProduct(int page) {
        int offset = (page - 1) * pageSize;  // Offset cho trang hien tai

        // Query the database
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product limit :pageSize offset :offset")
                    .bind("pageSize", pageSize)
                    .bind("offset", offset)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static Integer getOutPrice(int productId) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT priceout FROM outprice WHERE product_id = ? AND outprice.status = 1 ORDER BY outprice_id DESC ")
                    .bind(0, productId)
                    .mapTo(Integer.class)
                    .findFirst()
                    .orElse(0);
        });
    }
    public static String get1SrcImg(int productId) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT src_img FROM productimage WHERE product_id = ? AND status = 1 ")
                    .bind(0, productId)
                    .mapTo(String.class)
                    .findFirst()
                    .orElse("img/images/img_default/img_not_found.png");
        });
    }

    public static String getProductName(int productId) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT product_name FROM product WHERE product_id = ? AND status = 1 ")
                    .bind(0, productId)
                    .mapTo(String.class)
                    .findFirst()
                    .orElse("");
        });
    }

    public static int getTotalNumberOfProducts() {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(*) from product")
                    .mapTo(Integer.class)
                    .one();
        });
    }
    public static int getTotalNumberOfProductsFromCategoryId(int category_id) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(p.product_id) from product p,product_category pc where p.product_id = pc.category_id AND pc.category_id = ? ")
                    .bind(0, category_id)
                    .mapTo(Integer.class)
                    .one();
        });
    }
    public static int getPageSize() {
        return pageSize;
    }

    public static void setPageSize(int pageSize) {
        ProductService.pageSize = pageSize;
    }

    public static List<Product> getListProductFromCategory(int page, int category_id) {
        int offset = (page - 1) * pageSize;  // Offset cho trang hien tai

        // Query the database
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT p.product_id,p.product_name,p.product_description,p.create_date,p.quantity,p.status FROM product p , product_category pc, category c WHERE " +
                            "p.product_id = pc.product_id AND pc.category_id = c.category_id And c.category_id = :idCategory limit :pageSize offset :offset")
                    .bind("pageSize", pageSize)
                    .bind("offset", offset)
                    .bind("idCategory", category_id)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }
    public static void main(String[] args) {
        System.out.println(getProductName(1));

    }
}
