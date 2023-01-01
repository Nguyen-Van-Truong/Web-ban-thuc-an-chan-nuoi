package vn.edu.hcmuaf.fit.service;


import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Product;

import java.util.List;
import java.util.stream.Collectors;

public class ProductService {
    public static List<Product> getListProduct(){
//        xử DB ...
        return  JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from products").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }
}
