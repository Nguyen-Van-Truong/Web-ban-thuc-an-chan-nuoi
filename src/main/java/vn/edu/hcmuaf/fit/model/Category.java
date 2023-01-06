package vn.edu.hcmuaf.fit.model;

import vn.edu.hcmuaf.fit.service.CategoryService;

import java.io.Serializable;
import java.util.List;

public class Category implements Serializable {
    private int categoryId;
    private int parentCategoryId;
    private String name;

    public Category() {
    }

    public Category(int categoryId, int parentCategoryId, String name) {
        this.categoryId = categoryId;
        this.parentCategoryId = parentCategoryId;
        this.name = name;
    }

    public String get1ImgProductFromCategory() {
        return CategoryService.get1ImgProductFromCategory(this.getCategoryId());
    }

    public List<Category> getListSubCategory() {
        return CategoryService.getListSubCategory(this.getCategoryId());
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getParentCategoryId() {
        return parentCategoryId;
    }

    public void setParentCategoryId(int parentCategoryId) {
        this.parentCategoryId = parentCategoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Category{" +
                "categoryId=" + categoryId +
                ", parentCategoryId=" + parentCategoryId +
                ", name='" + name + '\'' +
                '}';
    }
}
