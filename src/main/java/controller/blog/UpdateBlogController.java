/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.blog;

import dao.BlogDAO;
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
import model.Blog;
import model.Comment;
import model.User;

/**
 *
 * @author huyen
 */
@WebServlet(name = "UpdateBlogController", urlPatterns = {"/updateblog"})
public class UpdateBlogController extends HttpServlet {

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
     try (PrintWriter out = response.getWriter()){
            response.setContentType("text/html;charset=UTF-8");
            String id = request.getParameter("bid");
//            HttpServletRequest req = (HttpServletRequest) request;
//            User u = (User) req.getSession().getAttribute("acc");
            BlogDAO dao = new BlogDAO();
//            int id_raw = u.getUserID();
//            String uid = Integer.toString(id_raw);
            //request.setAttribute("id", id);
           // String uid =  String.valueOf(request.getParameter("uid")) ;
           Blog b = dao.getBlogByID(id);
           //out.print(list);
            request.setAttribute("Blog", b);
           // request.setAttribute("user", u);
//            out.print(id);
//           out.println(b);
            request.getRequestDispatcher("editblog.jsp").forward(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(AddCommentController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddCommentController.class.getName()).log(Level.SEVERE, null, ex);
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
            String bid = request.getParameter("bid");
            String title = request.getParameter("title");
            String image = request.getParameter("image");
            String blogContent = request.getParameter("blogContent");
            BlogDAO dao = new BlogDAO();
            dao.UpdateBlog(title, blogContent, image, bid);
            //out.print(dao.getBlogByID(bid));
            request.getRequestDispatcher("blogmanagement").forward(request, response);

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