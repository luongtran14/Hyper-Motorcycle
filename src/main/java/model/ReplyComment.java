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
public class ReplyComment {
    private int replyCommentID;
    private int commentID;
    private int userID;
    private int blogID;
    private String commentContent;
    private Date createdDate;
    private Date updatedDate;
    private int likeNum;
    private int dislikeNum;
    private String firstName;
    private String lastName;
    private String avatar;

    public ReplyComment() {
    }

    public ReplyComment(int replyCommentID, int commentID, int userID, int blogID, String commentContent, Date createdDate, Date updatedDate, int likeNum, int dislikeNum) {
        this.replyCommentID = replyCommentID;
        this.commentID = commentID;
        this.userID = userID;
        this.blogID = blogID;
        this.commentContent = commentContent;
        this.createdDate = createdDate;
        this.updatedDate = updatedDate;
        this.likeNum = likeNum;
        this.dislikeNum = dislikeNum;
    }

    public ReplyComment(int replyCommentID, int commentID, int userID, int blogID, String commentContent, Date createdDate, Date updatedDate, int likeNum, int dislikeNum, String firstName, String lastName, String avatar) {
        this.replyCommentID = replyCommentID;
        this.commentID = commentID;
        this.userID = userID;
        this.blogID = blogID;
        this.commentContent = commentContent;
        this.createdDate = createdDate;
        this.updatedDate = updatedDate;
        this.likeNum = likeNum;
        this.dislikeNum = dislikeNum;
        this.firstName = firstName;
        this.lastName = lastName;
        this.avatar = avatar;
    }

    

    public int getReplyCommentID() {
        return replyCommentID;
    }

    public void setReplyCommentID(int replyCommentID) {
        this.replyCommentID = replyCommentID;
    }

    public int getCommentID() {
        return commentID;
    }

    public void setCommentID(int commentID) {
        this.commentID = commentID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getBlogID() {
        return blogID;
    }

    public void setBlogID(int blogID) {
        this.blogID = blogID;
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
        return "ReplyComment{" + "replyCommentID=" + replyCommentID + ", commentID=" + commentID + ", userID=" + userID + ", blogID=" + blogID + ", commentContent=" + commentContent + ", createdDate=" + createdDate + ", updatedDate=" + updatedDate + ", likeNum=" + likeNum + ", dislikeNum=" + dislikeNum + ", firstName=" + firstName + ", lastName=" + lastName + ", avatar=" + avatar + '}';
    }

   
    
    
}
