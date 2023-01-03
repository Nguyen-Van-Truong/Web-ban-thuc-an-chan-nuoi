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

    public static List<Category> getListSubCategory(int parent_category_id) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM category WHERE parent_category_id = ?")
                    .bind(0, parent_category_id)
                    .map((rs, rowNum) -> new Category(rs.getInt("category_id"), rs.getInt("parent_category_id"), rs.getString("name")))
                    .stream().collect(Collectors.toList());
        });
    }

    public static void main(String[] args) {
        List<Category> categories = getListSubCategory(1);
        for (Category c : categories) {
            System.out.println(c);
        }
    }
}
