    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexiones;
import java.sql.*;

/**
 *
 * @author iCoffee
 */
public class ConexionMySQL {
    private static String servidor = "jdbc:mysql://localhost:3306/iCafe";
    private static String user = "root";
    private static String pass = "hs100716";
    private static String driver = "com.mysql.jdbc.Driver";
    private static Connection conexion;
    
    public ConexionMySQL(){
        try{
            Class.forName(driver);
            conexion = DriverManager.getConnection(servidor,user,pass);
            System.out.println("Conexión iniciada con éxito");            
        }catch(ClassNotFoundException | SQLException e){
            System.out.println("Conexión fallida");
        }
    }

    public Connection getConexion() {
        return conexion;
    }
    
    
}
