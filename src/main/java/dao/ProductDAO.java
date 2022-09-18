/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Category;
import model.Motor;

/**
 *
 * @author Admin
 */
public class ProductDAO extends DBContext{
    final String PRODUCT_TABLE = "dbo.Product"; 
    final String id = "product_id";
    final String name = "product_name";
    final String brand = "product_brand";
    final String serial_number = "motor_serial_number";
    final String image = "image";
    final String description = "description";
    final String motor_cc = "motor_cc";
    final String category_id = "category_id";
    final String unit_price = "unit_price";
    final String unit_in_stock = "unit_in_stock";
    final String date_in = "date_in";
    final String is_deleted = "is_deleted";
    
    public ArrayList<Motor> getAllMotors() {
        ArrayList<Motor> allMotors = new ArrayList<>();
        try {
            String query = "SELECT * FROM " + PRODUCT_TABLE;
            PreparedStatement stm = connection.prepareStatement(query);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                CategoryDAO categoryDAO = new CategoryDAO();
                Category category = categoryDAO.getCategoryById(rs.getInt(category_id));
                
                Motor motor = new Motor();
                motor.setProductId(rs.getInt(id));
                motor.setProductName(rs.getString(name));
                motor.setBrand(rs.getString(brand));
                motor.setSerialNumber(rs.getString(serial_number));
                motor.setImageUrl(rs.getString(image));
                motor.setDescription(rs.getString(description));
                motor.setMotorCC(rs.getInt(motor_cc));
                motor.setCategory(category);
//                motor.setColors(colors);
                motor.setUnitPrice(rs.getFloat(unit_price));
                motor.setUnitInStock(rs.getInt(unit_in_stock));
                motor.setDateIn(rs.getDate(date_in));
                motor.setIsDeleted(rs.getBoolean(is_deleted));
                
                allMotors.add(motor);
            }
            
        } catch (SQLException e) {
            System.out.println(e);
        }
        return allMotors;
    }
    
    public static void main(String[] args) {
        ArrayList<Motor> list = new ProductDAO().getAllMotors();
        for (Motor s : list) {
            System.out.println(s.getProductId());
        }
    }
}
