package vn.edu.hcmuaf.fit.model;

import vn.edu.hcmuaf.fit.service.ProductService;

public class CartItem {
    private int productId;
    private int quantity;
    private double totalCost;

    public CartItem(int productId, int quantity) {
        this.productId = productId;
        this.quantity = quantity;

        Product product = ProductService.getProductFromProductId(productId);
        if (product != null) {
            totalCost = product.getOutPrice() * quantity;
        } else {
            totalCost = 0;
        }
    }

    public int getProductId() {
        return productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalCost() {
        return totalCost;
    }
    public String get1SrcImg() {
        return ProductService.get1SrcImg(this.getProductId());
    }
    @Override
    public String toString() {
        return "CartItem{" +
                "productId=" + productId +
                ", quantity=" + quantity +
                ", totalCost=" + totalCost +
                '}';
    }
}

