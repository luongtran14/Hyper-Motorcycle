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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ReplyComment;
import model.User;
import model.Comment;

/**
 *
 * @author huyen
 */
@WebServlet(name = "SearchReplyCommentController", urlPatterns = {"/searchreplycomment"})
public class SearchReplyCommentController extends HttpServlet {

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
            String id = request.getParameter("cid");
     //       request.setAttribute("id", id);

            HttpServletRequest req = (HttpServletRequest) request;
            User u = (User) req.getSession().getAttribute("acc");
            CommentDAO d = new CommentDAO();
            Comment c = d.getCommentByID(id);
            request.setAttribute("Comment", c);
            String txtSearch = request.getParameter("txt");
            String cid = request.getParameter("id");
//            String i = Integer.toString(c.getCommentID());
            List<ReplyComment> lr = d.searchReplyComment(txtSearch, cid);
            int total = d.countReplyComment(id);
            request.setAttribute("txtS", txtSearch);
            request.setAttribute("Total", total);
            request.setAttribute("user", u);

            request.setAttribute("Reply", lr);
            // out.println(u);
//            out.println(lr);
//            out.println(id);
            request.getRequestDispatcher("replycommentlist.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ReplyCommentListController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReplyCommentListController.class.getName()).log(Level.SEVERE, null, ex);
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
        processRequest(request, response);
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
