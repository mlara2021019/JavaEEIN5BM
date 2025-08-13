package modelo;
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;
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

    public List listar() {
        String sql = "select * from Cliente";
        List<Cliente> listaCliente = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Cliente cl = new Cliente();
                cl.setCodigoCliente(rs.getInt(1));
                cl.setNombreCliente(rs.getString(2));
                cl.setTelefonoCliente(rs.getString(3));
                cl.setCorreoCliente(rs.getString(4));
                cl.setDireccion(rs.getString(5));
                cl.setContrasena(rs.getString(6));
                listaCliente.add(cl);

            }
        } catch (Exception e){
            e.printStackTrace();
        }
       return listaCliente;
    }

       public int agregar (Cliente cli){
           String sql = "insert into Cliente (nombreCliente, telefonoCliente, correoCliente, direccion, contrasena) values (?, ?, ?, ?, ?)";
           try{
               con = cn.Conexion();
               ps = con.prepareStatement(sql);
               ps.setString(1, cli.getNombreCliente());
               ps.setString(2, cli.getTelefonoCliente());
               ps.setString(3, cli.getCorreoCliente());
               ps.setString(4, cli.getDireccion());
               ps.setString(5, cli.getContrasena());
               ps.executeUpdate();
           }catch(Exception e){
               e.printStackTrace();
           }
           return resp;
       }

 
}
 
 