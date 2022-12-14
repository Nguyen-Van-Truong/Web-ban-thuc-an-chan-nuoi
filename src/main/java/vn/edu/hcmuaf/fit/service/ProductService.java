package vn.edu.hcmuaf.fit.service;


import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Product;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class ProductService {
    static int pageSize = 10;  // so san pham 1 trang

    public static Product getProductFromProductId(int productId) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM product WHERE product_id = :productId")
                    .bind("productId", productId)
                    .mapToBean(Product.class)
                    .findOnly();
        });
    }

    public static Integer getOutPrice(int productId) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT priceout FROM outprice WHERE product_id = ? AND outprice.status != 0 ORDER BY outprice_id DESC ")
                    .bind(0, productId)
                    .mapTo(Integer.class)
                    .findFirst()
                    .orElse(0);
        });
    }

    public static String get1SrcImg(int productId) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT src_img FROM productimage WHERE product_id = ? AND status != 0 ")
                    .bind(0, productId)
                    .mapTo(String.class)
                    .findFirst()
                    .orElse("img/images/img_default/img_not_found.png");
        });
    }

    public static String getNameProductFromProductId(int productId) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT product_name FROM product WHERE product_id = ? AND status != 0 ")
                    .bind(0, productId)
                    .mapTo(String.class)
                    .findFirst()
                    .orElse("sản phẩm không tìm thấy");
        });
    }

    public static List<String> getAllImgFromProductId(int productId) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT src_img FROM productimage WHERE product_id = :productId AND status != 0")
                    .bind("productId", productId)
                    .mapTo(String.class)
                    .list();
        });
    }

    public static List<Integer> getAllCategoryIdsFromProductId(int productId) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select category_id from product_category where product_id = :productId")
                    .bind("productId", productId)
                    .mapTo(Integer.class)
                    .list();
        });
    }

    public static int getTotalNumberOfProducts() {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(*) from product where status != 0")
                    .mapTo(Integer.class)
                    .one();
        });
    }

    public static int getTotalNumberOfProductsFromCategoryId(int category_id) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(p.product_id) from product p,product_category pc where p.status != 0 AND p.product_id = pc.category_id AND pc.category_id = ? ")
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
            return handle.createQuery("select * from product where status != 0 limit :pageSize offset :offset")
                    .bind("pageSize", pageSize)
                    .bind("offset", offset)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<Product> getNFeaturedProducts(int n) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where status = 2 limit :n")
                    .bind("n", n)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<Product> getNRelatedProducts(int n, List<Integer> categoriesID, int thisProductId) {
        String listToString = "";
        for (Integer c : categoriesID) {
            listToString += c + ",";
        }
        listToString = listToString.substring(0, listToString.length() - 1);
        String finalListToString = listToString;
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select p.product_id,p.product_name,p.product_description,p.create_date,p.quantity,p.status from product as p\n" +
                            "where p.status != 0 AND p.product_id != :thisProductId AND p.product_id in (\n" +
                            "  select product_id from product_category\n" +
                            "  where category_id in (" + finalListToString + ")\n" +
                            "  group by product_id\n" +
                            ")\n" +
                            "LIMIT :n")
                    .bind("n", n)
                    .bind("thisProductId", thisProductId)
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
                            "WHERE p.status != 0 AND c.category_id = :idCategory " +
                            "AND cha.charistic_id IN (" + finalListToString + ") " +
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
                            "WHERE p.status != 0 AND cha.charistic_id IN (" + finalListToString + ") " +
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
                            "p.status != 0 AND p.product_id = pc.product_id AND pc.category_id = c.category_id And c.category_id = :idCategory limit :pageSize offset :offset")
                    .bind("pageSize", pageSize)
                    .bind("offset", offset)
                    .bind("idCategory", category_id)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<Product> getNNewProducts(int n) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where status != 0  ORDER BY product_id DESC LIMIT :n")
                    .bind("n", n)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<Product> getNBestSellingProducts(int n) {
        return JDBiConnector.get().withHandle(handle -> {
            // Join the order_detail, order, and product tables on the product_id and order_id columns
            String sql = "SELECT p.*, SUM(od.quantity) as total_sold FROM product p "
                    + "JOIN order_detail od ON p.product_id = od.product_id "
                    + "JOIN `order` o ON od.order_id = o.order_id "
                    + "WHERE o.status = 4 "
                    + "GROUP BY p.product_id "
                    + "HAVING p.status != 0 "
                    + "ORDER BY total_sold DESC "
                    + "LIMIT :n";
            return handle.createQuery(sql)
                    .bind("n", n)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<Product> getNBestAvgScoreProducts(int n) {
        return JDBiConnector.get().withHandle(handle -> {
            // Select the product_id and average score for each product and sort the results in descending order by average score
            return handle.createQuery("SELECT p.*, AVG(r.score) as avg_score "
                            + "FROM product p "
                            + "JOIN review r ON p.product_id = r.product_id "
                            + "GROUP BY p.product_id "
                            + "ORDER BY avg_score DESC "
                            + "LIMIT :n")
                    .bind("n", n)
                    .mapToBean(Product.class)
                    .list();
        });
    }

    public static List<Product> getNProductLikeName(int n, String name) {
        return JDBiConnector.get().withHandle(handle -> {
            // Select all columns from the product table and filter the results based on the product_name column using the LIKE clause
            String sql = "SELECT * FROM product WHERE product_name LIKE '%" + name + "%' LIMIT :n";
            return handle.createQuery(sql)
                    .bind("n", n)
                    .mapToBean(Product.class)
                    .list();
        });
    }

    public static boolean createProduct(String productName, String product_description, String quantity, int status) throws ParseException {

        int maxProductId = JDBiConnector.get().withHandle(h ->
                h.createQuery("SELECT MAX(product_id) FROM product")
                        .mapTo(Integer.class)
                        .findOnly()
        );

        int rowsAffected = JDBiConnector.get().withHandle(h ->
                h.createUpdate("INSERT INTO product (product_id,product_name, product_description, quantity, `status`)\n" +
                                "VALUES (:product_id,:product_name,:product_description,:quantity,:status)")
                        .bind("product_id", maxProductId + 1)  // Increment the maximum order_id by 1
                        .bind("productName", productName)
                        .bind("product_description", product_description)
                        .bind("quantity", quantity)
                        .bind("status", status)
                        .execute()
        );
        return rowsAffected > 0;
    }

    public static void main(String[] args) {
//        System.out.println(getListProductFromCategory(1, -99, 2));
//        System.out.println(getProductsFromCategory(-99,0));
        List<Integer> listChar = new ArrayList<>();
        listChar.add(8);
        listChar.add(5);

//        System.out.println(getProductsFromCategoryAndCharacteristic(5,listChar, 0));
//        System.out.println(getProductsFromCharacteristic(listChar, 0));
//        System.out.println(getProductFromProductId(1));
//        System.out.println(getNFeaturedProducts(5));
//        System.out.println(getNBestSellingProducts  (5));
//        System.out.println(getNProductLikeName(3, "heo"));
        System.out.println(getNameProductFromProductId(2));
    }
}
