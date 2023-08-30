  
import java.io.Serializable;
import java.sql.PreparedStatement;

public class Lugar implements Serializable {

    String id_lugar,Nombre_lugar, Ubicacion, Capacidad, Tamano_m2;

    public Lugar(String id_lugar, String Nombre_lugar, String Ubicacion, String Capacidad, String Tamano_m2) {
        this.id_lugar = id_lugar;
        this.Nombre_lugar = Nombre_lugar;
        this.Ubicacion = Ubicacion;
        this.Capacidad = Capacidad;
        this.Tamano_m2 = Tamano_m2;
    
    }
    
     public int insertar(Conexion cnx) {
        try {
            String sql = "INSERT INTO evento VALUES(?,?,?,?,?)";
            PreparedStatement ps = cnx.con.prepareStatement(sql);
            ps.setString(1, id_lugar);
            ps.setString(2, Nombre_lugar);
            ps.setString(3, Ubicacion);
            ps.setString(4, Capacidad);
            ps.setString(5, Tamano_m2);

            
            int resp = ps.executeUpdate();
            return resp;
            
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
            return 0;
        }
    }
}



