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
    private Brand brand;
    private String imageUrl;
    private String description;
    private Category category;
    private ArrayList<Color> colors;
    private float unitPrice;
    private int unitInStock;
    private Date dateIn;
    private boolean isDeleted;

    public Product() {
    }

    public Product(int productId, String productName, Brand brand, String imageUrl, String description, Category category, ArrayList<Color> colors, float unitPrice, int unitInStock, Date dateIn, boolean isDeleted) {
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

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
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

    public ArrayList<Color> getColors() {
        return colors;
    }

    public void setColors(ArrayList<Color> colors) {
        this.colors = colors;
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

    public boolean isIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }

    @Override
    public String toString() {
        return "Product{" + "productId=" + productId + ", productName=" + productName + ", brand=" + brand + ", imageUrl=" + imageUrl + ", description=" + description + ", category=" + category + ", colors=" + colors + ", unitPrice=" + unitPrice + ", unitInStock=" + unitInStock + ", dateIn=" + dateIn + ", isDeleted=" + isDeleted + '}';
    }
    
   
    
    
}
