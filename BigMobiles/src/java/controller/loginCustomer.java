/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import beans.CustomersFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Customers;

/**
 *
 * @author ASUS
 */
public class loginCustomer extends HttpServlet {

    @EJB
    private CustomersFacadeLocal customersFacade;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession(true);
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            Customers custom = new Customers();
            if ((custom = customersFacade.checkLogin(email, password)) != null) {
               
                session.setAttribute("LOGIN_CUSTOMER", custom);
                if(custom.getStatus()){
                     request.getRequestDispatcher("index.jsp").forward(request, response);
                }else{
                     request.setAttribute("error", "Tài khoản của bạn đã bị khóa");
                request.getRequestDispatcher("logreg.jsp").forward(request, response);
           
                }
               
            } else {
                request.setAttribute("error", "Địa chỉ Email hoặc mật khẩu không hợp lệ");
                request.getRequestDispatcher("logreg.jsp").forward(request, response);
            }

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
