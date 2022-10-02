/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;

/**
 *
 * @author Admin
 */
public class Cart {

    private int id;
    private int userId;
    private float totalPrice;
    private List<CartItem> items;

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
        }else{
        for (CartItem item : items) {
            if (item.getProduct().getProductId() == id) {
                item.setQuantity(newQuantity);
            }
        }
        }
        
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
