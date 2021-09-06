package src.mimuebleria;

import java.sql.Connection; //Podria usar: import java.sql.*
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level; //Podria usar: import java.util.logging.*
import java.util.logging.Logger;

/**
 *
 * @author Luis
 */
public class Conexion {

    //Variables para guardar Usuario, Contraseña y URL de MySQL
    private static final String USER = "luis"; //Nombre del perfil creado para DB - Si no funcionara, poner USER de su SQL
    private static final String PASSWORD = "luis"; //Contraseña del perfil creado para DB - SI no funcionara, poner PASSWORD de su SQL
    private static final String URL_MYSQL = "jdbc:mysql://localhost:3306/muebleria"; //Direccion: coloque su puerto y nombre que le haya puesto 
                                                                                    //al mapeo de la base de datos exportada

    public static Connection conexion() throws ClassNotFoundException {
        //Variable de tipo Connection (creada vacia) a la que se le asignara la conexion a base de daton
        Connection connection = null;
        Class.forName("com.mysql.cj.jdbc.Driver");

        try {
            connection = DriverManager.getConnection(URL_MYSQL, USER, PASSWORD);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return connection;
    }
    /*
    public static Connection conexion()throws MiMuebleriaException {
    Connection connection = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(URL_MYSQL, USER, PASSWORD);
    } catch (ClassNotFoundException | SQLException e) {
        out.println(e.getMessage()+"");
    } 
    return connection;
}
     */
}
