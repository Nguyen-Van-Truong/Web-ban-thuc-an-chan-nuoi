package vn.edu.hcmuaf.fit.service;


import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Product;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ProductService {
    static int pageSize = 4;  // so san pham 1 trang

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

    public static List<Product> getListProduct(int page, int category_id, List<Integer> characteristic_ids) {
        System.out.println(characteristic_ids);
        int offset = (page - 1) * pageSize;  // Offset cho trang hien tai
        //neu co loai san pham
        if (category_id != -99)
            //neu  khong co tinh chat
            if (characteristic_ids.isEmpty()) {
                return getProductsFromCategory(category_id, offset);
            } else {            //neu  co tinh chat
                return getProductsFromCategoryAndCharacteristic(category_id, characteristic_ids, offset);
            }
        //neu k co loai sp
        if (!characteristic_ids.isEmpty())
            return getProductsFromCharacteristic(characteristic_ids, offset);
        //mac dinh
        return getAllProducts(offset);
    }

    private static List<Product> getAllProducts(int offset) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product limit :pageSize offset :offset")
                    .bind("pageSize", pageSize)
                    .bind("offset", offset)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    private static List<Product> getProductsFromCategoryAndCharacteristic(int category_id, List<Integer> characteristic_ids, int offset) {
        if (characteristic_ids.isEmpty())
            return getProductsFromCategory(category_id, offset);

        String charistic_id_count = characteristic_ids.size() + "";
        String listToString = "";
        for (Integer c : characteristic_ids) {
            listToString += c + ",";
        }
        listToString = listToString.substring(0, listToString.length() - 1);
        String finalListToString = listToString;
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT p.product_id,p.product_name,p.product_description,p.create_date,p.quantity,p.status " +
                            "FROM product p " +
                            "INNER JOIN product_category pc ON p.product_id = pc.product_id " +
                            "INNER JOIN category c ON pc.category_id = c.category_id " +
                            "INNER JOIN product_characteristic pca ON p.product_id = pca.product_id " +
                            "INNER JOIN characteristic cha ON cha.charistic_id = pca.characeristic_id " +
                            "WHERE c.category_id = :idCategory " +
                            "AND cha.charistic_id IN ("+finalListToString+") " +
                            "GROUP BY p.product_id " +
                            "HAVING COUNT(DISTINCT cha.charistic_id) = :charistic_id_count " +
                            "LIMIT :pageSize OFFSET :offset ")
                    .bind("pageSize", pageSize)
                    .bind("offset", offset)
                    .bind("idCategory", category_id)
                    .bind("charistic_id_count", charistic_id_count)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    private static List<Product> getProductsFromCharacteristic(List<Integer> characteristic_ids, int offset) {
        if (characteristic_ids.isEmpty())
            return getAllProducts(offset);
        String charistic_id_count = characteristic_ids.size() + "";
        String listToString = "";
        for (Integer c : characteristic_ids) {
            listToString += c + ",";
        }
        listToString = listToString.substring(0, listToString.length() - 1);
        String finalListToString = listToString;

        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT p.product_id,p.product_name,p.product_description,p.create_date,p.quantity,p.status " +
                            "FROM product p " +
                            "INNER JOIN product_characteristic pca ON p.product_id = pca.product_id " +
                            "INNER JOIN characteristic cha ON cha.charistic_id = pca.characeristic_id " +
                            "WHERE cha.charistic_id IN (" + finalListToString + ") " +
                            "GROUP BY p.product_id " +
                            "HAVING COUNT(DISTINCT cha.charistic_id) = :charistic_id_count " +
                            "LIMIT :pageSize OFFSET :offset")
                    .bind("pageSize", pageSize)
                    .bind("offset", offset)
                    .bind("charistic_id_count", charistic_id_count)

                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }


    private static List<Product> getProductsFromCategory(int category_id, int offset) {
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
//        System.out.println(getListProductFromCategory(1, -99, 2));
//        System.out.println(getProductsFromCategory(-99,0));
        List<Integer> listChar = new ArrayList<>();
        listChar.add(1);
        listChar.add(2);
        listChar.add(3);
        System.out.println(getProductsFromCategoryAndCharacteristic(5,listChar, 0));
        System.out.println(getProductsFromCharacteristic(listChar, 0));

    }
}
