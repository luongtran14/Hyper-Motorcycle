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
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Blog;
import model.Comment;
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
            String date = request.getParameter("crd");
            BlogDAO dao = new BlogDAO();
            Blog b = dao.getBlogByID(id);
            List<Comment> list = dao.getCommentByBID(id);
            Blog bb = dao.getBlogBefore(date);
            Blog ba = dao.getBlogAfter(date);
            HttpServletRequest req = (HttpServletRequest) request;
            User u = (User) req.getSession().getAttribute("acc");

            if (u == null) {
              //  response.sendRedirect("login");
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
//           out.print(bb);
//           out.print(ba);
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
        try (PrintWriter out = response.getWriter()) {
            String blogID = request.getParameter("blogID");
            String userID = request.getParameter("userID");
            String opinion = request.getParameter("opinion");
            String commentContent = request.getParameter("commentContent");

            int likeNum, dislikeNum;
            if (opinion.valueOf(opinion).equals("Like")) {
                likeNum = 1;
                dislikeNum = 0;
            } else {
                likeNum = 0;
                dislikeNum = 1;
            }
            CommentDAO dao = new CommentDAO();
            out.print(blogID);
            out.println(userID);
            out.print(opinion);
            out.print(commentContent);
            //dao.AddComment(blogID, userID, commentContent, likeNum, dislikeNum);

            //request.getRequestDispatcher("blogdetail").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AddCommentController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddCommentController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
