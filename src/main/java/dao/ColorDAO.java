/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Color;

/**
 *
 * @author Admin
 */
public class ColorDAO extends DBContext{
    public ColorDAO() throws SQLException, ClassNotFoundException {
        super();
    }
    
    public ArrayList<Color> getAllColors() {
        ArrayList<Color> colors = new ArrayList<>();
        try {
            String query = "";
            PreparedStatement stm = connection.prepareStatement(query);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                Color color = new Color();

            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
