package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Category;
import vn.edu.hcmuaf.fit.model.Product;

import java.util.List;
import java.util.stream.Collectors;

public class CategoryService {

    public static List<Category> getListCategory() {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM category")
                    .map((rs, rowNum) -> new Category(rs.getInt("category_id"), rs.getInt("parent_category_id"), rs.getString("name")))
                    .stream().collect(Collectors.toList());
        });
    }
    public static List<Category> getListCategoryHaveFeaturedProduct() {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT ca.* FROM category ca, product_category pca, product p " +
                            "WHERE ca.category_id = pca.category_id AND p.product_id = pca.product_id AND p.status = 2\n" +
                            "GROUP BY ca.category_id")
                    .map((rs, rowNum) -> new Category(rs.getInt("category_id"), rs.getInt("parent_category_id"), rs.getString("name")))
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<Category> getListSubCategory(int parent_category_id) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM category WHERE parent_category_id = ?")
                    .bind(0, parent_category_id)
                    .map((rs, rowNum) -> new Category(rs.getInt("category_id"), rs.getInt("parent_category_id"), rs.getString("name")))
                    .stream().collect(Collectors.toList());
        });
    }

    public static String get1ImgProductFromCategory(int category_id) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select pi.src_img from product p\n" +
                            "inner join product_category pc on p.product_id = pc.product_id\n" +
                            "inner join productimage pi on p.product_id = pi.product_id\n" +
                            "where pc.category_id = :category_id  and pi.status = 1\n" +
                            "limit 1\n")
                    .bind("category_id", category_id)
                    .mapTo(String.class)
                    .findFirst()
                    .orElse(null);
        });
    }

    public static Category getCategoryFromCategoryId(int category_id) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from category\n" +
                            "where category_id = :category_id\n")
                    .bind("category_id", category_id)
                    .mapToBean(Category.class)
                    .findFirst()
                    .orElse(null);
        });
    }

    public static void main(String[] args) {
//        System.out.println(getListCategoryHaveFeaturedProduct());
//        System.out.println(getListCategory());
//        System.out.println(get1ImgProductFromCategory(1));
        System.out.println(getCategoryFromCategoryId(2));
    }
}
