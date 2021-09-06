package src.mimuebleria.servlets;
//import package src.main.webapp.index.jsp

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    //Metodo Get
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }

    @Override
    //Metodo POST
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.print("login iniciando");
        try {
            String username;
            String password;
            username = request.getParameter("username"); //nombre de 1er input en index.jsp
            password = request.getParameter("password"); //nombre de 2do input en index.jsp

            //Casteo de variable consulta de tipo prepareStatement
            PreparedStatement consulta = (PreparedStatement) Conexion.conexion().prepareStatement("SELECT *FROM usuario WHERE name_user=? AND password_user=?");
            consulta.setString(1, username);
            consulta.setString(2, password);
            ResultSet result = consulta.executeQuery();

            if (result.next() == true) {
                //sysout.println
                if (result.getString(4).equals("A") && result.getString(5).equals("S")) {
                    //Enviar a pagina correspondiente
                    response.sendRedirect("fabrica.jsp");
                } else if (result.getString(4).equals("B") && result.getString(5).equals("S")) {
                    //Enviar a pagina correspondiente
                    response.sendRedirect("ventas.jsp");
                } else if (result.getString(4).equals("C") && result.getString(5).equals("S")) {
                    //Enviar a pagina correspondiente
                    response.sendRedirect("administracion.jsp");
                }
            } else {
                response.sendRedirect("/mimuebleria/index.jsp"); //Redireccionar a Inicio de Sesion
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
