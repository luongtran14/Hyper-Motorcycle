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
public class User {
    private int userID;
    private String firstname,lastname;
    private String phone;
    private String email;
    private boolean isAdmin;
    private String intro;
    private Date dob;
    private String gender;
    private boolean isActive;
    private String password;
    private String avatar;

    public User() {
    }

    public User(int userID, String firstname, String lastname, String phone, String email, boolean isAdmin, String intro, Date dob, String gender, boolean isActive, String password, String avatar) {
        this.userID = userID;
        this.firstname = firstname;
        this.lastname = lastname;
        this.phone = phone;
        this.email = email;
        this.isAdmin = isAdmin;
        this.intro = intro;
        this.dob = dob;
        this.gender = gender;
        this.isActive = isActive;
        this.password = password;
        this.avatar = avatar;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
    
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" + "userID=" + userID + ", firstname=" + firstname + ", lastname=" + lastname + ", phone=" + phone + ", email=" + email + ", isAdmin=" + isAdmin + ", intro=" + intro + ", dob=" + dob + ", gender=" + gender + ", isActive=" + isActive + ", password=" + password + ", avatar=" + avatar + '}';
    }
}