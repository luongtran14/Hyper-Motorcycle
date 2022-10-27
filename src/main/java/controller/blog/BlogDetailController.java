/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.blog;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.BlogDAO;
import dao.CommentDAO;
import java.sql.Date;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Blog;
import model.Comment;
import model.ReplyComment;
import model.User;

/**
 *
 * @author huyen
 */
@WebServlet(name = "BlogDetailController", urlPatterns = {"/blogdetail"})
public class BlogDetailController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String id = request.getParameter("bid");
            //String date = request.getParameter("crd");
            BlogDAO dao = new BlogDAO();
            Blog b = dao.getBlogByID(id);
            List<Comment> list = dao.getCommentByBID(id);
//            CommentDAO d = new CommentDAO();
//            for (Comment a : list) {
//                String c = Integer.toString(a.getCommentID());
//            List<ReplyComment> lr = d.getReplyCommentByCID(c);
//            request.setAttribute("Reply", lr);
//        }
            
           
            HttpServletRequest req = (HttpServletRequest) request;
            User u = (User) req.getSession().getAttribute("acc");
            //Blog da = (Blog) req.getSession().getAttribute("da");
           // Date date = da.getCreatedDate();
            Date date = b.getCreatedDate();
            String dat = date.toString();
           // int bb = dao.getBlogBefore(dat).getBlogID();
            Blog ba = dao.getBlogAfter(dat);
            Blog bb = dao.getBlogBefore(dat);
            if ((ba == null)) {
                ba = dao.getBlogByID(id);
              
              //  response.sendRedirect("login");
            }
            
            if(bb == null){
                  bb = dao.getBlogByID(id);
            }
//            String x = String.valueOf(b.getCategoryID());
//            List<Products> list = dao.getProductByCID(x);
            // Products last = dao.getLast();
 
            request.setAttribute("user", u);
            request.setAttribute("Detail", b);
            request.setAttribute("Comment", list);
            
            request.setAttribute("Before", bb);
            request.setAttribute("After", ba);
//            request.setAttribute("Products", list);
//              request.setAttribute("last", last);
   request.getRequestDispatcher("blogDetail.jsp").forward(request, response);
           out.println(ba);
  //      out.print(dat);
        } catch (SQLException ex) {
            Logger.getLogger(BlogDetailController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BlogDetailController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
//         try (PrintWriter out = response.getWriter()) {
//            String id = request.getParameter("bid");
//            BlogDAO dao = new BlogDAO();
//
//            List<Comment> list = dao.getCommentByBID(id);
//
//            request.setAttribute("Comment", list);
//            out.print(list);
//            //request.getRequestDispatcher("blogDetail.jsp").forward(request, response);
//        } catch (SQLException ex) {
//            Logger.getLogger(BlogController.class.getName()).log(Level.SEVERE, null, ex);
//        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(BlogController.class.getName()).log(Level.SEVERE, null, ex);
//        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
//        try (PrintWriter out = response.getWriter()) {
//            String blogID = request.getParameter("blogID");
//            String userID = request.getParameter("userID");
//            String opinion = request.getParameter("opinion");
//            String commentContent = request.getParameter("commentContent");
//
//            int likeNum, dislikeNum;
//            if (opinion.valueOf(opinion).equals("Like")) {
//                likeNum = 1;
//                dislikeNum = 0;
//            } else {
//                likeNum = 0;
//                dislikeNum = 1;
//            }
//            CommentDAO dao = new CommentDAO();
//            out.print(blogID);
//            out.println(userID);
//            out.print(opinion);
//            out.print(commentContent);
//            //dao.AddComment(blogID, userID, commentContent, likeNum, dislikeNum);
//
//            //request.getRequestDispatcher("blogdetail").forward(request, response);
//        } catch (SQLException ex) {
//            Logger.getLogger(AddCommentController.class.getName()).log(Level.SEVERE, null, ex);
//        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(AddCommentController.class.getName()).log(Level.SEVERE, null, ex);
//        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
