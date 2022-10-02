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
public class Comment {

    private int commentID;
    private int blogID;
    private int userID;
    private String commentContent;
    private Date createdDate;
    private Date updatedDate;
    private int likeNumber;
    private int dislikeNumber;
    private String firstName;
    private String lastName;
    private String avatar;

    public Comment() {
    }

    public Comment(int commentID, int blogID, int userID, String commentContent, Date createdDate, Date updatedDate, int likeNumber, int dislikeNumber) {
        this.commentID = commentID;
        this.blogID = blogID;
        this.userID = userID;
        this.commentContent = commentContent;
        this.createdDate = createdDate;
        this.updatedDate = updatedDate;
        this.likeNumber = likeNumber;
        this.dislikeNumber = dislikeNumber;
    }
 
    public Comment(int commentID, int blogID, int userID, String commentContent, Date createdDate, Date updatedDate, int likeNumber, int dislikeNumber, String firstName, String lastName, String avatar) {
        this.commentID = commentID;
        this.blogID = blogID;
        this.userID = userID;
        this.commentContent = commentContent;
        this.createdDate = createdDate;
        this.updatedDate = updatedDate;
        this.likeNumber = likeNumber;
        this.dislikeNumber = dislikeNumber;
        this.firstName = firstName;
        this.lastName = lastName;
        this.avatar = avatar;
    }

    public int getCommentID() {
        return commentID;
    }

    public void setCommentID(int commentID) {
        this.commentID = commentID;
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

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
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

    public int getLikeNumber() {
        return likeNumber;
    }

    public void setLikeNumber(int likeNumber) {
        this.likeNumber = likeNumber;
    }

    public int getDislikeNumber() {
        return dislikeNumber;
    }

    public void setDislikeNumber(int dislikeNumber) {
        this.dislikeNumber = dislikeNumber;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Override
    public String toString() {
        return "Comment{" + "commentID=" + commentID + ", blogID=" + blogID + ", userID=" + userID + ", commentContent=" + commentContent + ", createdDate=" + createdDate + ", updatedDate=" + updatedDate + ", likeNumber=" + likeNumber + ", dislikeNumber=" + dislikeNumber + ", firstName=" + firstName + ", lastName=" + lastName + ", avatar=" + avatar + '}';
    }

  
    

}
