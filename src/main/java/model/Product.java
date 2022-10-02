/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Admin
 */
public class Product {
    private int productId;
    private String productName;
    private String brand;
    private String imageUrl;
    private String description;
    private Category category;
    private ArrayList<Color> colors;
    private float unitPrice;
    private int unitInStock;
    private Date dateIn;
    private boolean isDeleted;
    
    public Product() {}

    public Product(
            int productId, 
            String productName, 
            String brand, 
            String imageUrl, 
            String description, 
            Category category, 
            ArrayList<Color> colors, 
            float unitPrice, 
            int unitInStock, 
            Date dateIn, 
            boolean isDeleted) {
        this.productId = productId;
        this.productName = productName;
        this.brand = brand;
        this.imageUrl = imageUrl;
        this.description = description;
        this.category = category;
        this.colors = colors;
        this.unitPrice = unitPrice;
        this.unitInStock = unitInStock;
        this.dateIn = dateIn;
        this.isDeleted = isDeleted;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public float getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(float unitPrice) {
        this.unitPrice = unitPrice;
    }

    public int getUnitInStock() {
        return unitInStock;
    }

    public void setUnitInStock(int unitInStock) {
        this.unitInStock = unitInStock;
    }

    public Date getDateIn() {
        return dateIn;
    }

    public void setDateIn(Date dateIn) {
        this.dateIn = dateIn;
    }

    public int getProductId() {
        return productId;
    }

    public boolean isIsDeleted() {
        return isDeleted;
    }

    public ArrayList<Color> getColors() {
        return colors;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public void setIsDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }

    public void setColors(ArrayList<Color> colors) {
        this.colors = colors;
    }
    
    
}
