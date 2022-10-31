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
import model.HistoryPrice;
import model.ReplyComment;

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
        String query = "INSERT INTO [dbo].[Comment]\n"
                + "           ([blog_id]\n"
                + "           ,[user_id]\n"
                + "           ,[comment_content]\n"
                + "           ,[created_date])\n"
                + "     VALUES\n"
                + "           ( ? \n"
                + "           , ? \n"
                + "           , ? \n"
                + "           ,GETDATE())";
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

    public List<Comment> searchComment(String txtSearch, String blogID) {
        List<Comment> list = new ArrayList<>();
        try {
            String query = "select [Comment].[comment_id],[Comment].[blog_id], [Comment].[user_id], [Comment].[comment_content]\n"
                    + ", [User].first_name, [User].last_name from Comment\n"
                    + "                   LEFT JOIN [User] ON ([Comment].user_id= [User].user_id)\n"
                    + "                    where [Comment].[blog_id] = ? and ([Comment].[comment_content] like ?              \n"
                    + "                   or [User].first_name like ? \n"
                    + "                    or [User].[last_name] like ? ) ";
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);

            ps.setString(1, blogID);
            ps.setString(2, "%" + txtSearch + "%");
            ps.setString(3, "%" + txtSearch + "%");
            ps.setString(4, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Comment(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));

            }
        } catch (Exception e) {
        }
        return list;
    }

//----------------------------------------------------------------------------------------------------
//Reply comment
    public List<ReplyComment> getReplyCommentByCID(String cid) {
        List<ReplyComment> list = new ArrayList<>();
        try {
            String query = "SELECT a.[reply_comment_id]\n"
                    + "      ,a.[comment_id]\n"
                    + "      ,a.[user_id]\n"
                    + "      ,a.[blog_id]\n"
                    + "      ,a.[comment_content]\n"
                    + "      ,a.[created_date]\n"
                    + "      ,a.[updated_date]\n"
                    + "      ,a.[like_number]\n"
                    + "      ,a.[dislike_number]\n"
                    + "	   ,b.first_name, b.last_name, b.avatar\n"
                    + "  FROM [dbo].[ReplyComment] a\n"
                    + "  JOIN [User] b ON (a.user_id=b.user_id)\n"
                    + "   WHERE [comment_id] = ? ";
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();

            while (rs.next()) {
//                 
//     HistoryPrice history = new HistoryPrice();
//                history.setHistory_id(rs.getInt(1));
//                history.setProduct_category(rs.getString(2));
//                history.setProduct_brand(rs.getString(3));
//                history.setProduct_name(rs.getString(4));
//                history.setUnit_price((float) rs.getDouble(5));
//                history.setUpdateprice_date(rs.getDate(6));
//                history.setNote(rs.getString(7));
//                historylist.add(history);
//               System.out.println("456");
                ReplyComment q = new ReplyComment();
                q.setReplyCommentID(rs.getInt(1));
                q.setCommentID(rs.getInt(2));
                q.setUserID(rs.getInt(3));
                q.setBlogID(rs.getInt(4));
                q.setCommentContent(rs.getString(5));
                q.setCreatedDate(rs.getDate(6));
                q.setUpdatedDate(rs.getDate(7));
                q.setLikeNum(rs.getInt(8));
                q.setDislikeNum(rs.getInt(9));
                q.setFirstName(rs.getString(10));
                q.setLastName(rs.getString(11));
                q.setAvatar(rs.getString(12));
                list.add(q);
// System.out.println("3456");
//                int blog_id = rs.getInt("blogID");
//                int user_id = rs.getInt("userID");
//                String comment = rs.getString("commentContent");
//            
//                q.setBlogID(blog_id);
//                q.setUserID(user_id);
//                q.setCommentContent(comment);
//                list.add(q);

//                list.add(new ReplyComment(
//                        rs.getInt(1),
//                        rs.getInt(2),
//                        rs.getInt(3),
//                        rs.getInt(4),
//                        rs.getString(5),
//                        rs.getDate(6),
//                        rs.getDate(7),
//                        rs.getInt(8),
//                        rs.getInt(9), 
//                        rs.getString(10),
//                        rs.getString(11),
//                        rs.getString(12)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ReplyComment getReplyCommentByID(String rcid) {

        String query = "SELECT [reply_comment_id]\n"
                + "      ,[comment_id]\n"
                + "      ,[user_id]\n"
                + "      ,[blog_id]\n"
                + "      ,[comment_content]\n"
                + "      ,[created_date]\n"
                + "      ,[updated_date]\n"
                + "      ,[like_number]\n"
                + "      ,[dislike_number]\n"
                + "  FROM [dbo].[ReplyComment]\n"
                + "  WHERE [reply_comment_id] = ? ";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, rcid);
            rs = ps.executeQuery();

            while (rs.next()) {
                //   System.out.println("sdf");
                return new ReplyComment(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getDate(6),
                        rs.getDate(7),
                        rs.getInt(8),
                        rs.getInt(9));
            }

        } catch (Exception e) {
        }

        return null;
    }

    public void AddReplyComment(String blogID, String userID, String commentContent, String commentID) {
        String query = "INSERT INTO [dbo].[ReplyComment]\n"
                + "           ([comment_id]\n"
                + "           ,[user_id]\n"
                + "           ,[blog_id]\n"
                + "           ,[comment_content]\n"
                + "           ,[created_date]\n"
                + "           )\n"
                + "     VALUES\n"
                + "           ( ? \n"
                + "           , ? \n"
                + "           , ? \n"
                + "           , ? \n"
                + "           ,GETDATE()\n"
                + "           )";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, commentID);
            ps.setString(2, userID);
            ps.setString(3, blogID);
            ps.setString(4, commentContent);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public void UpdateReplyComment(String replyCommentID, String commentContent) {
        String query = "UPDATE [dbo].[ReplyComment]\n"
                + "   SET [comment_content] = ? \n"
                + "      ,[updated_date] = GETDATE()\n"
                + "	WHERE\n"
                + "	[reply_comment_id] = ? ";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, commentContent);
            ps.setString(2, replyCommentID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteReplyComment(String rcid) {
        String query = "DELETE FROM [dbo].[ReplyComment]\n"
                + "      WHERE reply_comment_id = ? ";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, rcid);

            ps.executeUpdate();//cau lenh k tra ve ham result
        } catch (Exception e) {
        }

    }

    public int countCommentByBID(String blogID) {
//        List<Quiz> list = new ArrayList<>();
        try {
            String query = "select count(comment_id) from Comment where blog_id = ?";
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

    public int countReplyComment(String commentID) {
//        List<Quiz> list = new ArrayList<>();
        try {
            String query = "select count(reply_comment_id) from ReplyComment where comment_id = ?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, commentID);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public List<ReplyComment> searchReplyComment(String txtSearch, String cid) {
        List<ReplyComment> list = new ArrayList<>();
        try {
            String query = "  select [ReplyComment].[comment_id],[ReplyComment].[blog_id], [ReplyComment].[user_id],[ReplyComment].[reply_comment_id],\n"
                    + " [ReplyComment].[comment_content]\n"
                    + ", [User].first_name, [User].last_name, [User].avatar from [ReplyComment]\n"
                    + "                   LEFT JOIN [User] ON ([ReplyComment].user_id= [User].user_id)\n"
                    + "                    where [ReplyComment].[comment_id] = ? and "
                    + "([ReplyComment].[comment_content] like ?              \n"
                    + "                   or [User].first_name like ? \n"
                    + "                    or [User].[last_name] like ? ) ";
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);

            ps.setString(1, cid);
            ps.setString(2, "%" + txtSearch + "%");
            ps.setString(3, "%" + txtSearch + "%");
            ps.setString(4, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                ReplyComment q = new ReplyComment();
                q.setReplyCommentID(rs.getInt(1));
                q.setCommentID(rs.getInt(2));
                q.setUserID(rs.getInt(3));
                q.setBlogID(rs.getInt(4));
                q.setCommentContent(rs.getString(5));
                q.setFirstName(rs.getString(6));
                q.setLastName(rs.getString(7));
                q.setAvatar(rs.getString(8));
                list.add(q);

            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        CommentDAO dao = new CommentDAO();
        //    dao.countComment(3);
        // dao.deleteReplyComment("3");
        //  System.out.println(dao.getCommentByID("2005").toString());
//
        List<ReplyComment> list = dao.searchReplyComment("f", "11");
        for (ReplyComment account : list) {
            System.out.println(account);
//        }
//        String s = Integer.toString(dao.countCommentByBID("3"));
//        System.out.println(s);
        }
    }

}
