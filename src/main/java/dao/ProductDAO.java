/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import model.Category;
import model.Color;
import model.Motor;
import model.Product;

/**
 *
 * @author Admin
 */
public class ProductDAO extends DBContext {

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
    final String date_out = "date_out";
    final String is_deleted = "is_deleted";

    public ProductDAO() throws SQLException, ClassNotFoundException {
        super();
    }
    
    // Get Section
    public ArrayList<Product> getAllProducts() throws ClassNotFoundException {
        ArrayList<Product> allProducts = new ArrayList<>();
        try {
            String query = "SELECT * FROM " + PRODUCT_TABLE;
            PreparedStatement stm = connection.prepareStatement(query);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                CategoryDAO categoryDAO = new CategoryDAO();
                ColorDAO colorDAO = new ColorDAO();
                
                Product product = new Motor();
                product.setProductId(rs.getInt(id));
                product.setProductName(rs.getString(name));
                product.setBrand(rs.getString(brand));
                product.setImageUrl(rs.getString(image));
                product.setDescription(rs.getString(description));
                Category category = categoryDAO.getCategoryById(rs.getInt(category_id));
                product.setCategory(category);
                
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

            while (rs.next()) {
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
                
                return motor;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public Product getSpecificProductById(int id) throws ClassNotFoundException {
       Product product = new Product();
       try {
            String query = "SELECT * FROM " + PRODUCT_TABLE + " WHERE " + this.id + " = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                CategoryDAO categoryDAO = new CategoryDAO();
                ColorDAO colorDAO = new ColorDAO();
                
                product.setProductId(rs.getInt(this.id));
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
            }
            
        } catch (SQLException e) {
            System.out.println(e);
        }
       return product;
    }
    
    public ArrayList<Product> getProductsByCategoryId(int id) throws ClassNotFoundException {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String query = "SELECT * FROM " + PRODUCT_TABLE + " WHERE " + category_id + " = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                CategoryDAO categoryDAO = new CategoryDAO();
                ColorDAO colorDAO = new ColorDAO();
                
                Product product = new Product();
                product.setProductId(rs.getInt(this.id));
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
                
                products.add(product);
            }
            
        } catch (SQLException e) {
            System.out.println(e);
        }
        return products;
    }
    
    public Product getLastProduct() throws ClassNotFoundException {
        Product product = new Product();
        try {
            String query = "SELECT TOP 1 * FROM " + PRODUCT_TABLE + " ORDER BY " + this.id + " DESC ";
            PreparedStatement stm = connection.prepareStatement(query);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                CategoryDAO categoryDAO = new CategoryDAO();
                ColorDAO colorDAO = new ColorDAO();
                
                product.setProductId(rs.getInt(this.id));
                product.setProductName(rs.getString(name));
                product.setBrand(rs.getString(brand));
                product.setImageUrl(rs.getString(image));
                product.setDescription(rs.getString(description));
                Category category = categoryDAO.getCategoryById(rs.getInt(category_id));
                product.setCategory(category);
                
                ArrayList<Color> colors = colorDAO.getColorByProductId(product.getProductId());
                product.setColors(colors);

                product.setUnitPrice(rs.getFloat(unit_price));
                product.setUnitInStock(rs.getInt(unit_in_stock));
                product.setDateIn(rs.getDate(date_in));
                product.setIsDeleted(rs.getBoolean(is_deleted));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return product;
    }
    
    // Update Section
    public void changeProductActivationWithProductId(int productId, boolean activation) {
        try {
            String query = "UPDATE " + PRODUCT_TABLE + " SET " + is_deleted + " = ? " + " WHERE " + id + " = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setBoolean(1, activation);
            stm.setInt(2, productId);
            stm.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public void updateQuantity(Product product){
        try {
            String query = "UPDATE " + PRODUCT_TABLE + " SET " + unit_in_stock + " = ? " + " WHERE " + id + " = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, product.getUnitInStock());
            stm.setInt(2, product.getProductId());
            stm.executeQuery();
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
            stm.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void editProduct(Product product, int id) {
        try {
            String query = 
                    "UPDATE " + PRODUCT_TABLE + 
                    " SET " + name + "=?," + brand + "=?," + image + "=?," + description + "=?," + category_id + "=?," +
                    unit_price + "=?," + unit_in_stock + "=?," + date_in + "=?," + is_deleted + "=?," + date_out + "=? " +
                    "WHERE " + this.id + " =?";
            PreparedStatement stm = connection.prepareStatement(query);
            
            java.sql.Date date = new java.sql.Date(0);
            
            stm.setString(1, product.getProductName());
            stm.setString(2, product.getBrand());
            stm.setString(3, product.getImageUrl());
            stm.setString(4, product.getDescription());
            stm.setInt(5, product.getCategory().getCategoryId());
            stm.setFloat(6, product.getUnitPrice());
            stm.setInt(7, product.getUnitInStock());
            stm.setDate(8, new java.sql.Date(product.getDateIn().getTime()));
            stm.setBoolean(9, false);
            stm.setDate(10, date);
            stm.setInt(11, id);
            
            ResultSet rs = stm.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    // Create Section
    public void createProduct(Product product) {
        try {
            String query = 
                    "INSERT INTO " + PRODUCT_TABLE + 
                    "(" + name + "," + brand + "," + image + "," + description + "," + category_id + "," +
                    unit_price + "," + unit_in_stock + "," + date_in + "," + is_deleted + "," + date_out + ") " +
                    "VALUES (?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(query);
            
            java.sql.Date date = new java.sql.Date(0);
            
            stm.setString(1, product.getProductName());
            stm.setString(2, product.getBrand());
            stm.setString(3, product.getImageUrl());
            stm.setString(4, product.getDescription());
            stm.setInt(5, product.getCategory().getCategoryId());
            stm.setFloat(6, product.getUnitPrice());
            stm.setInt(7, product.getUnitInStock());
            stm.setDate(8, new java.sql.Date(product.getDateIn().getTime()));
            stm.setBoolean(9, false);
            stm.setDate(10, date);
            
            ResultSet rs = stm.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    //update by phuongnguyen
    public double countAllProduct() {
        double count = 0;
        try {
            String query = "SELECT product_id FROM [dbo].[Product]";
            PreparedStatement stm = connection.prepareStatement(query);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                count++;
            }
        } catch (SQLException e) {
        }

        return count;
    }

    public double countProductByBrand(String brandname) {
        double count = 0;
        try {
            String query = "select product_name \n"
                    + "from Product \n"
                    + "where product_brand =?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, brandname);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                count++;
            }
        } catch (Exception e) {
        }
        return count;
    }
    // end update by phuongnguyen
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        System.out.println(new ProductDAO().getSpecificProductById(3));
    }
}
