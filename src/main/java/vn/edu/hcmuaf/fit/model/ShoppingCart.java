package vn.edu.hcmuaf.fit.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ShoppingCart {
    // A map to store the items in the cart, with the product ID as the key and the cart item as the value
    private Map<Integer, CartItem> items;

    public ShoppingCart() {
        // Initialize the map when the shopping cart is created
        items = new HashMap<>();
    }

    public void addItem(int productId, int quantity) {
        // Check if the item is already in the cart
        CartItem item = items.get(productId);
        if (item == null) {
            // If the item is not in the cart, create a new cart item
            item = new CartItem(productId, quantity);
            items.put(productId, item);
        } else {
            // If the item is already in the cart, update the quantity
            item.setQuantity(item.getQuantity() + quantity);
        }
    }

    public void removeItem(String productId) {
        // Remove the item from the cart
        items.remove(productId);
    }

    public void clear() {
        // Remove all items from the cart
        items.clear();
    }

    public int getTotalQuantity() {
        // Calculate the total quantity of items in the cart
        int total = 0;
        for (CartItem item : items.values()) {
            total += item.getQuantity();
        }
        return total;
    }

    public double getTotalCost() {
        // Calculate the total cost of items in the cart
        double total = 0;
        for (CartItem item : items.values()) {
            total += item.getTotalCost();
        }
        return total;
    }

    public List<CartItem> getItems() {
        // Return a list of the items in the cart
        return new ArrayList<>(items.values());
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
