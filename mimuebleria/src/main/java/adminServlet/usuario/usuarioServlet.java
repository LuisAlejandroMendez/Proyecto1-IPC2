/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlet.usuario;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import src.mimuebleria.Conexion;

/**
 *
 * @author Luis
 */
@WebServlet(name = "usuarioServlet", urlPatterns = {"/usuarioServlet"})
public class usuarioServlet extends HttpServlet {

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
            out.println("<title>Servlet usuarioServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet usuarioServlet at " + request.getContextPath() + "</h1>");
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
        //puebas en terminal
        System.out.print(request.getParameter("username"));
        System.out.print(request.getParameter("password"));
        System.out.print(request.getParameter("area"));
        System.out.print(request.getParameter("activado"));

        try {
            PreparedStatement statement = Conexion.conexion().prepareStatement("INSERT INTO usuario(name_user, password_user, tipo_user, dispon) VALUES (?,?,?,?)");
            statement.setString(1, request.getParameter("username"));
            statement.setString(2, request.getParameter("password"));
            statement.setString(3, request.getParameter("area"));
            statement.setString(4, request.getParameter("activado"));
            boolean resp = statement.execute();
            System.out.print(resp);
            response.sendRedirect("mensaje/guardado.jsp");
        } catch (Exception e) {
            System.out.print(e.getMessage());
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
