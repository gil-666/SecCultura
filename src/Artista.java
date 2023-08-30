  
import java.io.Serializable;
import java.sql.PreparedStatement;

public class Artista implements Serializable {

    String Nombre, Sexo, nacimiento, Departamento, ID;

    public Artista(String Nombre, String Sexo, String nacimiento, String Departamento, String ID) {
        this.Nombre = Nombre;
        this.Sexo = Sexo;
        this.nacimiento = nacimiento;
        this.Departamento = Departamento;
        this.ID = ID;
    }
    
    

    
    public int insertar(Conexion cnx) {
        try {
            String sql = "INSERT INTO alumnos VALUES(?,?,?,?,?)";
            PreparedStatement ps = cnx.con.prepareStatement(sql);
            ps.setString(1, Nombre);
            ps.setString(2, Sexo);
            ps.setString(3, nacimiento);
            ps.setString(4, Departamento);
            ps.setString(5, ID);

     
            int resp = ps.executeUpdate();
            return resp;
            
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
            return 0;
        }
    }
}
