/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Blog;
import model.Comment;
import model.Rate;
import model.ReplyComment;

/**
 *
 * @author huyen
 */
public class RateDAO extends DBContext {

    public RateDAO() throws SQLException, ClassNotFoundException {
        super();
    }

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Rate> getAllRate() {
        List<Rate> list = new ArrayList<>();
        String query = "SELECT [rate_id]\n"
                + "      ,[blog_id]\n"
                + "      ,[user_id]\n"
                + "      ,[rate]\n"
                + "      ,[created_date]\n"
                + "      ,[updated_date]\n"
                + "  FROM [dbo].[Rate]";
        try {
            conn = new DBContext().connection;//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new Rate(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getFloat(4),
                        rs.getDate(5),
                        rs.getDate(6)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Rate getRateByBID(String blogID) {

        String query = "SELECT [rate_id]\n"
                + "      ,[blog_id]\n"
                + "      ,[user_id]\n"
                + "      ,[rate]\n"
                + "      ,[created_date]\n"
                + "      ,[updated_date]\n"
                + "  FROM [dbo].[Rate]\n"
                + "  WHERE [blog_id] = ? ";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, blogID);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new Rate(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getFloat(4),
                        rs.getDate(5),
                        rs.getDate(6));

            }

        } catch (Exception e) {
        }

        return null;
    }

//    public List<Rate> getRateByBID(String blogID) {
//        List<Rate> list = new ArrayList<>();
////        System.out.println("124322");
//        try {
//            String query = "SELECT [rate_id]\n"
//                    + "      ,[blog_id]\n"
//                    + "      ,[user_id]\n"
//                    + "      ,[rate]\n"
//                    + "      ,[created_date]\n"
//                    + "      ,[updated_date]\n"
//                    + "  FROM [dbo].[Rate]\n"
//                    + "  WHERE [blog_id] = ? ";
//            conn = new DBContext().connection;
//            ps = conn.prepareStatement(query);
//            ps.setString(1, blogID);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//
//                list.add(new Rate(rs.getInt(1),
//                        rs.getInt(2),
//                        rs.getInt(3),
//                        rs.getFloat(4),
//                        rs.getDate(5),
//                        rs.getDate(6)));
//
//            }
//        } catch (Exception e) {
//        }
//        return list;
//    }
    public float avgRate(String blogID) {
//        List<Quiz> list = new ArrayList<>();
        try {
            String query = "select  avg(rate)\n"
                    + "from Rate where blog_id = ?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, blogID);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                return rs.getFloat(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public int countUserRate(String blogID) {
//        List<Quiz> list = new ArrayList<>();
        try {
            String query = "select count(rate) from Rate\n"
                    + "where blog_id=?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, blogID);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public int countRateStars(int star, String quizID) {
//        List<Quiz> list = new ArrayList<>();
        try {
            String query = "select count(rate)  from Rate \n"
                    + "where rate = ? and blog_id =?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, star);
            pd.setString(2, quizID);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public int countFeedback(String quizID) {
//        List<Quiz> list = new ArrayList<>();
        try {
            String query = "select count(feedback_id) from Feedback\n"
                    + "  where quiz_id = ? and comment !='' ";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, quizID);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public void addRate(String blogID, String userID, String rate) {
        String query = "INSERT INTO [dbo].[Rate]\n"
                + "           ([blog_id]\n"
                + "           ,[user_id]\n"
                + "           ,[rate]\n"
                + "           ,[created_date]\n"
                + "          )\n"
                + "     VALUES\n"
                + "           ( ? \n"
                + "           , ? \n"
                + "           , ? \n"
                + "           ,GETDATE())";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, blogID);
            ps.setString(2, userID);
            ps.setString(3, rate);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public boolean checkRateExist(String blogID, String userID) {
        String query = "SELECT [rate_id]\n"
                + "      ,[blog_id]\n"
                + "      ,[user_id]\n"
                + "      ,[rate]\n"
                + "      ,[created_date]\n"
                + "      ,[updated_date]\n"
                + "  FROM [dbo].[Rate]\n"
                + "  WHERE [blog_id] = ? \n"
                + "  AND [user_id] = ? ";
        try {
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, blogID);
            pd.setString(2, userID);
            ResultSet rs = pd.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public void updateRate(String blogID, String userID, String rate) {
        String query = "UPDATE [dbo].[Rate]\n"
                + "   SET [rate] = ? \n"
                + "      ,[updated_date] = GETDATE()\n"
                + " WHERE [blog_id] = ? \n"
                + "  AND [user_id] = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, rate);
            ps.setString(2, blogID);
            ps.setString(3, userID);
            ps.executeUpdate();

        } catch (Exception e) {
            System.err.println(e);
        }
    }

    public boolean checkUpdateRateExist(String blogID, String userID) {
        String query = "SELECT [updated_date]\n"
                + "  FROM [dbo].[Rate]\n"
                + "  WHERE [blog_id] = ? \n"
                + "  AND [user_id] = ? ";
        try {
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, blogID);
            pd.setString(2, userID);
            ResultSet rs = pd.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        RateDAO dao = new RateDAO();
//        List<Rate> list = dao.getRateByBID("3");
//        for (Rate account : list) {
//            System.out.println(account);
//        }
//        System.out.println();

        String s = Boolean.toString(dao.checkUpdateRateExist("3", "2"));
        System.out.println(s);

    }
}
