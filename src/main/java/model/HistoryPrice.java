/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author nguye
 */
public class HistoryPrice {
    private int history_id;
     private String product_category;
    private String product_brand;
    private String product_name;
    private double unit_price;
    private Date updateprice_date;
    private String note;

    public HistoryPrice() {
    }

    public HistoryPrice(int history_id, String product_category, String product_brand, String product_name, double unit_price, Date updateprice_date, String note) {
        this.history_id = history_id;
        this.product_category = product_category;
        this.product_brand = product_brand;
        this.product_name = product_name;
        this.unit_price = unit_price;
        this.updateprice_date = updateprice_date;
        this.note = note;
    }

    public int getHistory_id() {
        return history_id;
    }

    public void setHistory_id(int history_id) {
        this.history_id = history_id;
    }

    public String getProduct_category() {
        return product_category;
    }

    public void setProduct_category(String product_category) {
        this.product_category = product_category;
    }

    public String getProduct_brand() {
        return product_brand;
    }

    public void setProduct_brand(String product_brand) {
        this.product_brand = product_brand;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public double getUnit_price() {
        return unit_price;
    }

    public void setUnit_price(double unit_price) {
        this.unit_price = unit_price;
    }

    public Date getUpdateprice_date() {
        return updateprice_date;
    }

    public void setUpdateprice_date(Date updateprice_date) {
        this.updateprice_date = updateprice_date;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "HistoryPrice{" + "history_id=" + history_id + ", product_category=" + product_category + ", product_brand=" + product_brand + ", product_name=" + product_name + ", unit_price=" + unit_price + ", updateprice_date=" + updateprice_date + ", note=" + note + '}';
    }

    
  

    
    
    
    
}
