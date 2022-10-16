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

/**
 *
 * @author huyen
 */
public class CommentDAO extends DBContext {

    public CommentDAO() throws SQLException, ClassNotFoundException {
        super();
    }

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Comment> getCommentByBID(String blogID) {
        List<Comment> list = new ArrayList<>();
//        System.out.println("124322");
        try {
            String query = "select a.*, b.first_name, b.last_name, b.avatar from  Comment  a\n"
                    + "LEFT JOIN [User] b ON (a.user_id=b.user_id)\n"
                    + "where a.blog_id = ?";
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, blogID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Comment(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getDate(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11)));

////                System.out.println("444444");
                //               Comment q = new Comment();
//                int blog_id = rs.getInt("blog_id");
//                int blog_id = rs.getInt("user_id");
//                String title = rs.getString("title");
//
//                q.setBlogID(blog_id);
//                q.setUserID(user_id);
//                q.setTitle(title);
//                list.add(q);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public Comment getCommentByID(String cid) {

        String query = " select a.*, b.first_name, b.last_name, b.avatar from  Comment  a\n"
                    + "LEFT JOIN [User] b ON (a.user_id=b.user_id)\n"
                    + "where a.comment_id = ?";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Comment(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getDate(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11));
            }

        } catch (Exception e) {

        }

        return null;
    }


    public void AddComment(String blogID, String userID, String commentContent) {
        String query = "insert into  dbo.Comment values (?, ?, ?, GETDATE(), '',0,0);";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, blogID);
            ps.setString(2, userID);
            ps.setString(3, commentContent);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }

    }
    
    public void UpdateComment(String commentID, String commentContent) {
        String query = "update  dbo.Comment set comment_content = ?, updated_date = GETDATE() where comment_id = ?";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, commentContent);
            ps.setString(2, commentID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
     public void deleteComment(String cid) {
        String query = "delete  from dbo.Comment where comment_id = ?";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);

            ps.executeUpdate();//cau lenh k tra ve ham result
        } catch (Exception e) {
        }

    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        CommentDAO dao = new CommentDAO();
       // dao.AddComment("1", "3", "ffsfsdfds", 1, 0);
       dao.UpdateComment("1015", "12345679sdfyygfgyhhjb");
      //  System.out.println(dao.getCommentByID("2005").toString());
               
        List<Comment> list = dao.getCommentByBID("1");
        for (Comment account : list) {
            System.out.println(account);

        }

    }
}
