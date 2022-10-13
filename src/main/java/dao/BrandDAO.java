/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.crypto.interfaces.PBEKey;
import model.Brand;
import model.Category;

/**
 *
 * @author nguye
 */
public class BrandDAO extends DBContext {

    public BrandDAO() throws SQLException, ClassNotFoundException {
        super();
    }

    public ArrayList<Brand> GetAllBrand() {
        ArrayList<Brand> allBrand = new ArrayList<>();
        try {
            String query = "SELECT [brand_id]\n"
                    + "      ,[brand_name]\n"
                    + "  FROM [dbo].[Brand]";
            PreparedStatement stm = connection.prepareStatement(query);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Brand brand = new Brand();
                brand.setBrand_id(rs.getInt(1));
                brand.setBrand_name(rs.getString(2));
                allBrand.add(brand);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return allBrand;
    }
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        BrandDAO dao = new BrandDAO();
        System.out.println(dao.GetAllBrand().toString());
    }
}
