/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.ProductDAO;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Cart {

    public static String CART_SESSION_VAR = "cart";
    private int id;
    private int userId;
    private float totalPrice;
    private List<CartItem> items;
    private List<ProductCartItem> products;
    private String shipAddress;
    private String phoneNumber;

    public String getShipAddress() {
        return shipAddress;
    }

    public void setShipAddress(String shipAddress) {
        this.shipAddress = shipAddress;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Cart() {
    }

    public Cart(int id, int userId, float totalPrice) {
        this.id = id;
        this.userId = userId;
        this.totalPrice = totalPrice;
    }

    public Cart(List<CartItem> items) {
        this.items = items;
    }

    public List<ProductCartItem> getProducts() {
        return products;
    }

    public void setProducts(List<ProductCartItem> products) {
        this.products = products;
    }

    public List<CartItem> getItems() {
        return items;
    }

    public void setItems(List<CartItem> items) {

        this.items = items;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    private CartItem getItemById(int id) {
        for (CartItem item : items) {
            if (item.getProduct().getProductId() == id) {
                return item;
            }
        }
        return null;
    }

    private boolean checkExist(int id) {
        for (CartItem item : items) {
            if (item.getProduct().getProductId() == id) {
                return true;
            }
        }
        return false;
    }

    public void addItem(CartItem newItem) {
        if (checkExist(newItem.getProduct().getProductId())) {
            CartItem olditem = getItemById(newItem.getProduct().getProductId());
            olditem.setQuantity(olditem.getQuantity() + newItem.getQuantity());
        } else {
            items.add(newItem);
        }
    }

    public void editQuantity(int id, int newQuantity) {
        if (newQuantity == 0) {
            removeItem(id);
        } else {
            for (CartItem item : items) {
                if (item.getProduct().getProductId() == id) {
                    item.setQuantity(newQuantity);
                }
            }
        }

    }

    public void updateProductCartItem(int productId, int quantity) throws Exception {
        if (quantity <= -1) {
            return;
        }
        ProductDAO dao = new ProductDAO();
        dao.changeProductCategory(productId, userId);
        ProductCartItem updateItem = null;
        for (ProductCartItem x : this.products) {
            if (x.getProduct().getProductId() == productId) {
                updateItem = x;
                this.setTotalPrice(this.totalPrice - (x.getProduct().getUnitPrice() * x.getQuantity()));
                x.setQuantity(quantity);
                this.setTotalPrice(x.getProduct().getUnitPrice() * quantity + this.totalPrice);
                break;
            }
        }
        Product newProduct = dao.getSpecificProductById(productId);
        if (quantity == 0 && updateItem != null) {
            this.products.remove(updateItem);
            newProduct.setUnitInStock(newProduct.getUnitInStock() + updateItem.getQuantity());

        } else {
            newProduct.setUnitInStock(newProduct.getUnitInStock() - updateItem.getQuantity());
        }
        dao.updateQuantity(newProduct);
    }

    public void removeItem(int id) {
        if (getItemById(id) != null) {
            items.remove(getItemById(id));
        }
    }

    public double getTotalMoney() {
        double t = 0;
        for (CartItem i : items) {
            t += (i.getQuantity() * i.getProduct().getUnitPrice());
        }
        return t;
    }
}
