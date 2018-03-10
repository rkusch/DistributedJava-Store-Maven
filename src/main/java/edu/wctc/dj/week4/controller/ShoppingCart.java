/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.dj.week4.controller;

import edu.wctc.dj.week4.model.Product;
import edu.wctc.dj.week4.model.ProductService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ryan
 */
public class ShoppingCart extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ShoppingCart</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ShoppingCart at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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

        ProductService products = new ProductService();

        RequestDispatcher dispatcher = null;
        String id = request.getParameter("id");
        String product = request.getParameter("product");
        String cart = request.getParameter("cart");
        String addToCart = request.getParameter("addToCart");
        String search = request.getParameter("search");

        if ("all".equals(product)) {
            List<Product> allProducts = products.getAllProducts();
            request.setAttribute("allProducts", allProducts);
            dispatcher = request.getRequestDispatcher("/WEB-INF/products.jsp");
            //go to products.jsp
        } else if (product != null && !("all".equals(product))) {
            Product currentProduct = products.validateProduct(product);
            request.setAttribute("currentProduct", currentProduct);
            dispatcher = request.getRequestDispatcher("/WEB-INF/productDetails.jsp");
            //go to productDetails.jsp
        }
        
        else if ("current".equals(cart)) {
            request.setAttribute("addedToCart", "noItems");
            dispatcher = request.getRequestDispatcher("/WEB-INF/cart.jsp");
            
        } else if (cart != null) {
            Product currentProduct = products.validateProduct(cart);
            request.setAttribute("addedToCart", currentProduct);
            dispatcher = request.getRequestDispatcher("/WEB-INF/cart.jsp");
        } 
        
        else if (search != null) {
            dispatcher = request.getRequestDispatcher("/WEB-INF/pageDetail.jsp");
            //go to nameDetail.jsp
        } else {
            dispatcher = request.getRequestDispatcher("/WEB-INF/home.jsp");
            //go to home.jsp
        }
            dispatcher.forward(request, response);
            
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
