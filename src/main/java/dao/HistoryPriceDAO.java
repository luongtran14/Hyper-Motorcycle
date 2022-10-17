/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.HistoryPrice;

/**
 *
 * @author nguye
 */
public class HistoryPriceDAO extends DBContext {

    public HistoryPriceDAO() throws SQLException, ClassNotFoundException {
        super();
    }

    public ArrayList<HistoryPrice> GetAllHistoryPrice() {

        ArrayList<HistoryPrice> historylist = new ArrayList<>();
        try {
            String query = "SELECT [history_id]\n"
                    + "      ,[product_category]\n"
                    + "      ,[product_brand]\n"
                    + "      ,[product_name]\n"
                    + "      ,[unit_price]\n"
                    + "      ,[updateprice_date]\n"
                    + "      ,[note]\n"
                    + "  FROM [dbo].[HistoryPrice]";
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                HistoryPrice history = new HistoryPrice();
                history.setHistory_id(rs.getInt(1));
                history.setProduct_category(rs.getString(2));
                history.setProduct_brand(rs.getString(3));
                history.setProduct_name(rs.getString(4));
                history.setUnit_price((float) rs.getDouble(5));
                history.setUpdateprice_date(rs.getDate(6));
                history.setNote(rs.getString(7));
                historylist.add(history);
            }
        } catch (SQLException ex) {
            Logger.getLogger(HistoryPriceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return historylist;
    }

    public void DeleteHistoryPrice(String HistoryId) {

        try {
            String query = "DELETE FROM [dbo].[HistoryPrice]\n"
                    + "      WHERE [history_id] = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, HistoryId);
            stm.executeUpdate();

        } catch (SQLException e) {
        }
    }

    public void EditNoteHistoryPrice(String note, String historyid) {
        try {
            String query = "UPDATE [dbo].[HistoryPrice]\n"
                    + "   SET \n"
                    + "      [note] = ?\n"
                    + " WHERE [history_id] = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, note);
            stm.setString(2, historyid);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(HistoryPriceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public ArrayList<HistoryPrice> search(String key, Date from, Date to) {
        ArrayList<HistoryPrice> historylist = new ArrayList<>();
        try {

            String query = "select * from HistoryPrice where 1=1";
            if (key != null && !key.equals("")) {
                query += "and product_category like '%" + key + "%' or product_brand like '%" + key + "%' or product_name like '%" + key + "%'";
            }
            if (from != null) {
                query += "and updateprice_date>='" + from + "'";
            }
            if (to != null) {
                query += "and updateprice_date<='" + to + "'";
            }
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                HistoryPrice history = new HistoryPrice();
                history.setHistory_id(rs.getInt(1));
                history.setProduct_category(rs.getString(2));
                history.setProduct_brand(rs.getString(3));
                history.setProduct_name(rs.getString(4));
                history.setUnit_price((float) rs.getDouble(5));
                history.setUpdateprice_date(rs.getDate(6));
                history.setNote(rs.getString(7));
                historylist.add(history);
            }
        } catch (SQLException ex) {
            Logger.getLogger(HistoryPriceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return historylist;
    }

    public HistoryPrice getHistoryPriceByID(String history_id) {

        HistoryPrice history = new HistoryPrice();
        try {
            String query = "SELECT [history_id]\n"
                    + "      ,[product_category]\n"
                    + "      ,[product_brand]\n"
                    + "      ,[product_name]\n"
                    + "      ,[unit_price]\n"
                    + "      ,[updateprice_date]\n"
                    + "      ,[note]\n"
                    + "  FROM [dbo].[HistoryPrice]\n"
                    + "  where [history_id] = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, history_id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {

                history.setHistory_id(rs.getInt(1));
                history.setProduct_category(rs.getString(2));
                history.setProduct_brand(rs.getString(3));
                history.setProduct_name(rs.getString(4));
                history.setUnit_price((float) rs.getDouble(5));
                history.setUpdateprice_date(rs.getDate(6));
                history.setNote(rs.getString(7));

            }
        } catch (SQLException ex) {
            Logger.getLogger(HistoryPriceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return history;
    }

    public void UpdateNote(String note, String historyID) {
        try {
            String query = "UPDATE [dbo].[HistoryPrice]\n"
                    + "   SET \n"
                    + "     [note] = ?\n"
                    + " WHERE [history_id]=?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, note);
            stm.setString(2, historyID);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(HistoryPriceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        HistoryPriceDAO dao = new HistoryPriceDAO();
        System.out.println(dao.GetAllHistoryPrice());
    }
}
