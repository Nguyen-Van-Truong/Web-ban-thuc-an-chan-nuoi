package vn.edu.hcmuaf.fit.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ShoppingCart {
    private Map<Integer, CartItem> items;

    public ShoppingCart() {
        items = new HashMap<>();
    }

    public void addItem(int productId, int quantity) {
        CartItem item = items.get(productId);
        if (item == null) {
            item = new CartItem(productId, quantity);
            items.put(productId, item);
        } else {
            item.setQuantity(item.getQuantity() + quantity);
        }
    }

    public CartItem getItem(int productId) {
        for (CartItem item : getItems()) {
            if (item.getProductId() == productId) {
                return item;
            }
        }
        return null;
    }

    public void removeItem(int productId) {
        items.remove(productId);
    }

    public void clear() {
        items.clear();
    }

    public int getTotalQuantity() {
        int total = 0;
        for (CartItem item : items.values()) {
            total += item.getQuantity();
        }
        return total;
    }

    public double getTotalCost() {
        double total = 0;
        for (CartItem item : items.values()) {
            total += item.getTotalCost();
        }
        return total;
    }

    public List<CartItem> getItems() {
        return new ArrayList<>(items.values());
    }

    public void updateQuantity(int productId, int newQuantity) {
        for (CartItem item : getItems()) {
            if (item.getProductId() == productId) {
                item.setQuantity(newQuantity);
                break;
            }
        }
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        for (Map.Entry<Integer, CartItem> entry : items.entrySet()) {
            sb.append(entry.getKey()).append("=").append(entry.getValue()).append(", ");
        }
        sb.append("}");
        return sb.toString();
    }
}
