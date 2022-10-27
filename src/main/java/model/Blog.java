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
public class Blog {
    private int blogID;
    private int userID;
    private String title;
    private String blogContent;
    private Date  createdDate;
    private Date lastModified; 
    private String image;
    private int likeNum;
    private int dislikeNum;
    private String firstName;
    private String lastname;

    public Blog() {
    }

    public Blog(int blogID, int userID, String title, String blogContent, Date createdDate, Date lastModified, String image, int likeNum, int dislikeNum, String firstName, String lastname) {
        this.blogID = blogID;
        this.userID = userID;
        this.title = title;
        this.blogContent = blogContent;
        this.createdDate = createdDate;
        this.lastModified = lastModified;
        this.image = image;
        this.likeNum = likeNum;
        this.dislikeNum = dislikeNum;
        this.firstName = firstName;
        this.lastname = lastname;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBlogContent() {
        return blogContent;
    }

    public void setBlogContent(String blogContent) {
        this.blogContent = blogContent;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }


    public Date getLastModified() {
        return lastModified;
    }

    public void setLastModified(Date lastModified) {
        this.lastModified = lastModified;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getLikeNum() {
        return likeNum;
    }

    public void setLikeNum(int likeNum) {
        this.likeNum = likeNum;
    }

    public int getDislikeNum() {
        return dislikeNum;
    }

    public void setDislikeNum(int dislikeNum) {
        this.dislikeNum = dislikeNum;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    @Override
    public String toString() {
        return "Blog{" + "blogID=" + blogID + ", userID=" + userID + ", title=" + title + ", blogContent=" + blogContent + ", createdDate=" + createdDate + ", lastModified=" + lastModified + ", image=" + image + ", likeNum=" + likeNum + ", dislikeNum=" + dislikeNum + ", firstName=" + firstName + ", lastname=" + lastname + '}';
    }

   

   
   

  
    
          
}
