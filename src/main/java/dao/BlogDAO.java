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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Blog;
import model.Comment;

/**
 *
 * @author huyen
 */
public class BlogDAO extends DBContext {

    public BlogDAO() throws SQLException, ClassNotFoundException {
        super();
    }

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Blog> getAllBlog() {
        List<Blog> list = new ArrayList<>();
        String query = "select a.*, b.first_name, b.last_name from  Blog  a\n"
                + "LEFT JOIN [User] b ON (a.user_id=b.user_id)\n"
                + "order by blog_id asc";
        try {
            conn = new DBContext().connection;//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

//                Blog q = new Blog();
//                int blog_id = rs.getInt("blog_id");
//                int user_id = rs.getInt("user_id");
//                String title = rs.getString("title");
//
//                q.setBlogID(blog_id);
//                q.setUserID(user_id);
//                q.setTitle(title);
//                list.add(q);
                list.add(new Blog(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getDate(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Blog> getLastBlog() {
        List<Blog> list = new ArrayList<>();
        String query = "SET ROWCOUNT 2\n"
                + "select a.*, b.first_name, b.last_name from  Blog  a\n"
                + "LEFT JOIN [User] b ON (a.user_id=b.user_id)\n"
                + "order by created_date desc ";
        try {
            //System.out.println("1234");
            conn = new DBContext().connection;//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

//                Blog q = new Blog();
//                int blog_id = rs.getInt("blog_id");
//                int user_id = rs.getInt("user_id");
//                String title = rs.getString("title");
//
//                q.setBlogID(blog_id);
//                q.setUserID(user_id);
//                q.setTitle(title);
//                list.add(q);
                list.add(new Blog(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getDate(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Blog getBlogByID(String blogID) {

        String query = "select a.*, b.first_name, b.last_name from  Blog  a\n"
                + "LEFT JOIN [User] b ON (a.user_id=b.user_id)\n"
                + "where a.blog_id = ?";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, blogID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Blog(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getDate(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10));
            }

        } catch (Exception e) {

        }

        return null;
    }

    public List<Blog> searchBlog(String txtSearch) {
        List<Blog> list = new ArrayList<>();
        try {
            String query = "select Blog.*, [User].first_name, [User].last_name from Blog\n"
                    + "LEFT JOIN [User] ON ([Blog].user_id= [User].user_id)\n"
                    + "where (Blog.[Title] like ? "
                    + "or Blog.Blog_content like ? \n"
                    + "or [User].first_name like ? \n"
                    + "or [User].[last_name] like ?) ";
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);

            ps.setString(1, "%" + txtSearch + "%");
            ps.setString(2, "%" + txtSearch + "%");
            ps.setString(3, "%" + txtSearch + "%");
            ps.setString(4, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Blog(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getDate(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)));
//                System.out.println("444444");
//                Blog q = new Blog();
//                int blog_id = rs.getInt("blog_id");
//                int user_id = rs.getInt("user_id");
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

    public Blog getBlogBefore(String createdDate) {

        String query = "select Blog.*, [User].first_name, [User].last_name from Blog\n"
                + "LEFT JOIN [User] ON ([Blog].user_id= [User].user_id) where created_date < ? ";

        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, createdDate);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new Blog(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getDate(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10));
            }

        } catch (Exception e) {

        }

        return null;
    }

    public Blog getBlogAfter(String createdDate) {

        String query = "select Blog.*, [User].first_name, [User].last_name from Blog\n"
                + "LEFT JOIN [User] ON ([Blog].user_id= [User].user_id) where created_date > ?";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, createdDate);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Blog(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getDate(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10));
            }

        } catch (Exception e) {

        }

        return null;
    }

    //Blog management   
    public List<Blog> getBlogByUID(String uid) {
        List<Blog> list = new ArrayList<>();
        try {
            String query = "  select a.[blog_id],\n"
                    + "		a.[user_id]\n"
                    + "      ,a.[title]\n"
                    + "      ,a.[blog_content]\n"
                    + "      ,a.[created_date]\n"
                    + "      ,a.[comment_id]\n"
                    + "      ,a.[last_modified]\n"
                    + "      ,a.[image], \n"
                    + "		b.first_name, b.last_name from  Blog  a\n"
                    + "		LEFT JOIN [User] b ON (a.user_id=b.user_id)\n"
                    + "Where a.[user_id] = ? \n"
                    + " order by blog_id asc";
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, uid);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Blog(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getDate(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)));

            }
        } catch (Exception e) {
        }
        return list;
    }

    public void AddBlog(String uid, String title, String blogContent, String image) {
        String query = "INSERT INTO [dbo].[Blog]\n"
                + "           ([user_id]\n"
                + "           ,[title]\n"
                + "           ,[blog_content]\n"
                + "           ,[created_date]\n"
                + "           ,[image])\n"
                + "     VALUES\n"
                + "           ( ? \n"
                + "           , ? \n"
                + "           , ? \n"
                + "           ,GETDATE()\n"
                + "           , ? )";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, uid);
            ps.setString(2, title);
            ps.setString(3, blogContent);
            ps.setString(4, image);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public void UpdateBlog(String title, String blogContent, String image, String bid) {
        String query = "UPDATE [dbo].[Blog]\n"
                + "   SET [title] = ? \n"
                + "      ,[blog_content] = ? \n"
                + "      ,[last_modified] = GETDATE()\n"
                + "      ,[image] = ? \n"
                + " WHERE blog_id = ? ";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, blogContent);
            ps.setString(3, image);
            ps.setString(4, bid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteBlog(String bid) {
        String query = "DELETE FROM [dbo].[Blog]\n"
                + "      WHERE blog_id = ? ";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, bid);

            ps.executeUpdate();//cau lenh k tra ve ham result
        } catch (Exception e) {
        }

    }

//    public void BC() {
//        System.out.println("11111");
//    }
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        BlogDAO dao = new BlogDAO();
        dao.UpdateBlog("123", "1", " ", "61");
        List<Blog> list = dao.getBlogByUID("1");
        for (Blog account : list) {
            System.out.println(account);

        }
//         System.out.println(dao.getBlogBefore("2022-02-03").toString());
        //     dao.getBlogBefore("2022-02-03");

    }
}

  
