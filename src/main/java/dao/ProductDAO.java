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
import model.Color;
import model.Motor;
import model.Product;

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
    
    public ProductDAO() throws SQLException, ClassNotFoundException {
        super();
    }
    
    
    // Get Section
    public ArrayList<Motor> getAllProducts() throws ClassNotFoundException {
        ArrayList<Motor> allProducts = new ArrayList<>();
        try {
            String query = "SELECT * FROM " + PRODUCT_TABLE;
            PreparedStatement stm = connection.prepareStatement(query);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                CategoryDAO categoryDAO = new CategoryDAO();
                ColorDAO colorDAO = new ColorDAO();
                
                Motor product = new Motor();
                product.setProductId(rs.getInt(id));
                product.setProductName(rs.getString(name));
                product.setBrand(rs.getString(brand));
                product.setImageUrl(rs.getString(image));
                product.setDescription(rs.getString(description));
                Category category = categoryDAO.getCategoryById(rs.getInt(category_id));
                product.setCategory(category);
                
                if (product.getCategory().getCategoryId() == 0) {
                    product.setSerialNumber(rs.getString(serial_number));
                    product.setMotorCC(rs.getInt(motor_cc));
                }
                
                ArrayList<Color> colors = colorDAO.getColorByProductId(product.getProductId());
                product.setColors(colors);
                
                product.setUnitPrice(rs.getFloat(unit_price));
                product.setUnitInStock(rs.getInt(unit_in_stock));
                product.setDateIn(rs.getDate(date_in));
                product.setIsDeleted(rs.getBoolean(is_deleted));
                
                allProducts.add(product);
            }
            
        } catch (SQLException e) {
            System.out.println(e);
        }
        return allProducts;
    }
    
    public ArrayList<Motor> getAllMotors() throws ClassNotFoundException {
        ArrayList<Motor> allMotors = new ArrayList<>();
        try {
            String query = "SELECT * FROM " + PRODUCT_TABLE + " WHERE " + category_id + " = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, 0);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                CategoryDAO categoryDAO = new CategoryDAO();
                ColorDAO colorDAO = new ColorDAO();
                
                Motor motor = new Motor();
                motor.setProductId(rs.getInt(id));
                motor.setProductName(rs.getString(name));
                motor.setBrand(rs.getString(brand));
                motor.setSerialNumber(rs.getString(serial_number));
                motor.setImageUrl(rs.getString(image));
                motor.setDescription(rs.getString(description));
                motor.setMotorCC(rs.getInt(motor_cc));
                Category category = categoryDAO.getCategoryById(rs.getInt(category_id));
                motor.setCategory(category);
                
                ArrayList<Color> colors = colorDAO.getColorByProductId(motor.getProductId());
                motor.setColors(colors);
                
                motor.setUnitPrice(rs.getFloat(unit_price));
                motor.setUnitInStock(rs.getInt(unit_in_stock));
                motor.setDateIn(rs.getDate(date_in));
                motor.setIsDeleted(rs.getBoolean(is_deleted));
                
                if (!motor.isIsDeleted()) {
                    allMotors.add(motor);
                }
            }
            
        } catch (SQLException e) {
            System.out.println(e);
        }
        return allMotors;
    }
    
    public Motor getSpecificMotorById(int motorId) throws ClassNotFoundException {
       Motor motor = new Motor();
       try {
            String query = "SELECT * FROM " + PRODUCT_TABLE + " WHERE " + id + " = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, motorId);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                CategoryDAO categoryDAO = new CategoryDAO();
                ColorDAO colorDAO = new ColorDAO();
                
                motor.setProductId(rs.getInt(id));
                motor.setProductName(rs.getString(name));
                motor.setBrand(rs.getString(brand));
                motor.setSerialNumber(rs.getString(serial_number));
                motor.setImageUrl(rs.getString(image));
                motor.setDescription(rs.getString(description));
                motor.setMotorCC(rs.getInt(motor_cc));
                Category category = categoryDAO.getCategoryById(rs.getInt(category_id));
                motor.setCategory(category);
                
                ArrayList<Color> colors = colorDAO.getColorByProductId(motorId);
                motor.setColors(colors);
                
                motor.setUnitPrice(rs.getFloat(unit_price));
                motor.setUnitInStock(rs.getInt(unit_in_stock));
                motor.setDateIn(rs.getDate(date_in));
                motor.setIsDeleted(rs.getBoolean(is_deleted));
                
                return motor.isIsDeleted() ? motor : null;
            }
            
        } catch (SQLException e) {
            System.out.println(e);
        }
       return null;
    }
    
    public Product getSpecificProductById(int id) throws ClassNotFoundException {
       Product product = new Product();
       if (id == 0) return null;
       try {
            String query = "SELECT * FROM " + PRODUCT_TABLE + " WHERE " + id + " = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                CategoryDAO categoryDAO = new CategoryDAO();
                ColorDAO colorDAO = new ColorDAO();
                
                product.setProductId(rs.getInt(id));
                product.setProductName(rs.getString(name));
                product.setBrand(rs.getString(brand));
                product.setImageUrl(rs.getString(image));
                product.setDescription(rs.getString(description));
                Category category = categoryDAO.getCategoryById(rs.getInt(category_id));
                product.setCategory(category);
                
                ArrayList<Color> colors = colorDAO.getColorByProductId(id);
                product.setColors(colors);

                product.setUnitPrice(rs.getFloat(unit_price));
                product.setUnitInStock(rs.getInt(unit_in_stock));
                product.setDateIn(rs.getDate(date_in));
                product.setIsDeleted(rs.getBoolean(is_deleted));
                
                return product.isIsDeleted() ? product : null;
            }
            
        } catch (SQLException e) {
            System.out.println(e);
        }
       return new Product();
    }
    
    public ArrayList<Product> getProductsByCategoryId(int id) throws ClassNotFoundException {
        ArrayList<Product> products = new ArrayList<>();
        if (id == 0) {
            return null;
        } 
        try {
            String query = "SELECT * FROM " + PRODUCT_TABLE + " WHERE " + category_id + " = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                CategoryDAO categoryDAO = new CategoryDAO();
                ColorDAO colorDAO = new ColorDAO();
                
                Product product = new Product();
                product.setProductId(rs.getInt(id));
                product.setProductName(rs.getString(name));
                product.setBrand(rs.getString(brand));
                product.setImageUrl(rs.getString(image));
                product.setDescription(rs.getString(description));
                Category category = categoryDAO.getCategoryById(rs.getInt(category_id));
                product.setCategory(category);
                
                ArrayList<Color> colors = colorDAO.getColorByProductId(id);
                product.setColors(colors);
                
                product.setUnitPrice(rs.getFloat(unit_price));
                product.setUnitInStock(rs.getInt(unit_in_stock));
                product.setDateIn(rs.getDate(date_in));
                product.setIsDeleted(rs.getBoolean(is_deleted));
                
                if (!product.isIsDeleted()) 
                    products.add(product);
            }
            
        } catch (SQLException e) {
            System.out.println(e);
        }
        return products;
    }
    
    // Update Section
    public void changeProductActivationWithProductId(int productId, boolean activation) {
        try {
            String query = "UPDATE " + PRODUCT_TABLE + " SET " + is_deleted + " = ? " + " WHERE " + id + " = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setBoolean(1, activation);
            stm.setInt(2, productId);
            ResultSet rs = stm.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void changeProductCategory(int productId, int categoryId) {
        try {
            String query = "UPDATE " + PRODUCT_TABLE + " SET " + category_id + " = ? " + " WHERE " + id + " = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, categoryId);
            stm.setInt(2, productId);
            ResultSet rs = stm.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        ArrayList<Motor> list = new ProductDAO().getAllMotors();
        for (Motor s : list) {
            System.out.println(s.getCategory().getCategoryName());
        }
    }
}
