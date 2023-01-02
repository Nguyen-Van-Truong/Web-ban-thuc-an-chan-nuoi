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
                    .first();
        });
    }
    public static String get1SrcImg(int productId) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT src_img FROM productimage WHERE product_id = ? AND status = 1 ")
                    .bind(0, productId)
                    .mapTo(String.class)
                    .first();
        });
    }

    public static int getTotalNumberOfProducts() {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(*) from product")
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

    public static void main(String[] args) {
        System.out.println(get1SrcImg(1));
    }
}
