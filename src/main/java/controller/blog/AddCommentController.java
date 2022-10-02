/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.blog;

import dao.CommentDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Comment;

/**
 *
 * @author huyen
 */
@WebServlet(name = "AddCommentController", urlPatterns = {"/addcomment"})
public class AddCommentController extends HttpServlet {

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
          if(opinion.valueOf(opinion).equals("Like")){
              likeNum = 1;
              dislikeNum = 0; 
          }else{
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
