/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author huyen
 */
public class Rate {
    private int rateID;
    private int blogID;
    private int userID;
    private float rate;
    private Date createdDate;
    private Date updatedDate;

    public Rate() {
    }

    public Rate(int rateID, int blogID, int userID, float rate, Date createdDate, Date updatedDate) {
        this.rateID = rateID;
        this.blogID = blogID;
        this.userID = userID;
        this.rate = rate;
        this.createdDate = createdDate;
        this.updatedDate = updatedDate;
    }

    public int getRateID() {
        return rateID;
    }

    public void setRateID(int rateID) {
        this.rateID = rateID;
    }

    public int getBlogID() {
        return blogID;
    }

    public void setBlogID(int blogID) {
        this.blogID = blogID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public float getRate() {
        return rate;
    }

    public void setRate(float rate) {
        this.rate = rate;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Date getUpdatedDate() {
        return updatedDate;
    }

    public void setUpdatedDate(Date updatedDate) {
        this.updatedDate = updatedDate;
    }

    @Override
    public String toString() {
        return "Rate{" + "rateID=" + rateID + ", blogID=" + blogID + ", userID=" + userID + ", rate=" + rate + ", createdDate=" + createdDate + ", updatedDate=" + updatedDate + '}';
    }
    
    
}
