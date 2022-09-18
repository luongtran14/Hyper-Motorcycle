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

/**
 *
 * @author Admin
 */
public class CategoryDAO extends DBContext{
    final String CATEGORY_TABLE = "dbo.Category"; 
    final String id = "category_id";
    final String name = "category_name";
    
    public ArrayList<Category> getAllCategories() {
        ArrayList<Category> allCategories = new ArrayList<>();
        try {
            String query = "SELECT * FROM " + CATEGORY_TABLE;
            PreparedStatement stm = connection.prepareStatement(query);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                Category category = new Category();
                category.setCategoryId(rs.getInt(id));
                category.setCategoryName(rs.getString(name));
                allCategories.add(category);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return allCategories;
    }
    
    public Category getCategoryById(int categoryId) {
        Category category = new Category();
        try {
            String query = "SELECT * FROM " + CATEGORY_TABLE + "WHERE " + id + "=" + categoryId;
            PreparedStatement stm = connection.prepareStatement(query);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                category.setCategoryId(rs.getInt(id));
                category.setCategoryName(rs.getString(name));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return category;
    }
}
