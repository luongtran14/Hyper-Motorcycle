/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Motor extends Product{
    private int motorCC;
    private String serialNumber;
    
    public Motor() {
        super();
    }
    
    public Motor(int motorCC, String serialNumber) {
        super();
        this.motorCC = motorCC;
        this.serialNumber = serialNumber;
    }

    public int getMotorCC() {
        return motorCC;
    }

    public void setMotorCC(int motorCC) {
        this.motorCC = motorCC;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }
    
    
}
