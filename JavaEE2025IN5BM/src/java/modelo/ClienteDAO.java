package modelo;
 
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 
public class ClienteDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    public Cliente validar(String email, String pass) {
        //Instanciar el objeto de la entidad Cliene
        Cliente cliente = new Cliente();
        //Agregar una variable de tipo string para nuestra consulta sql
        String sql = "select * from Cliente where correoCliente = ? and contrasena = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.setString(1, email);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                cliente.setCodigoCliente(rs.getInt("codigoCliente"));
                cliente.setNombreCliente(rs.getString("nombreCliente"));
                cliente.setContrasena(rs.getString("contrasena"));
                cliente.setCorreoCliente(rs.getString("correoCliente"));
            }
        } catch (Exception e) {
            System.out.println("El correo o contrasena son incorrectos");
            e.printStackTrace();
        }
        return cliente;
    }
}