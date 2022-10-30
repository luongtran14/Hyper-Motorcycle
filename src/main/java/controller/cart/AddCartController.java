/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.cart;

import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.CartItem;
import model.Product;
import model.ProductCartItem;
import model.User;

/**
 *
 * @author Admin
 */
public class AddCartController extends HttpServlet {

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
        String producIdRaw = request.getParameter("id");
        try {
            ProductDAO productDao = new ProductDAO();
            int productId = Integer.parseInt(producIdRaw);
            Product item = productDao.getSpecificProductById(productId);
            HttpSession ss = request.getSession();
            Cart cart = null;
            if (ss.getAttribute("cart") == null) {
                cart = new Cart();
                User user = (User) ss.getAttribute("acc");
                ProductCartItem cartItem = new ProductCartItem();
                cartItem.setQuantity(1);
                cartItem.setProduct(item);

                List<ProductCartItem> itemList = new ArrayList();
                itemList.add(cartItem);

                cart.setUserId(user.getUserID());
                cart.setProducts(itemList);
                cart.setTotalPrice(item.getUnitPrice());
                ss.setAttribute("cart", cart);
            } else {
                cart = (Cart) ss.getAttribute("cart");
                List<ProductCartItem> itemList = cart.getProducts();
                boolean isExisted = false;
                for (ProductCartItem x : itemList) {
                    if (x.getProduct().getProductId() == item.getProductId()) {
                        x.setQuantity(x.getQuantity() + 1);
                        isExisted = true;
                        break;
                    }
                }

                if (!isExisted) {
                    ProductCartItem cartItem = new ProductCartItem();
                    cartItem.setQuantity(1);
                    cartItem.setProduct(item);
                    cart.getProducts().add(cartItem);

                }
                cart.setTotalPrice(cart.getTotalPrice() + item.getUnitPrice());
            }
            ProductDAO dao = new ProductDAO();
            Product update = dao.getSpecificProductById(productId);
            update.setProductId(item.getProductId());
            update.setUnitInStock(update.getUnitInStock() - 1);
            dao.updateQuantity(update);
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect(request.getContextPath() + "/home");
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
