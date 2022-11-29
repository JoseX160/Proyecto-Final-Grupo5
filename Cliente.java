package grupo;


public class Cliente {
public String Cod_cliente;
public String nombre;
public int DNI;
public int Teléfono;
public String Correo_Electronico;
public String Dirección;

    public Cliente(String Cod_cliente, String nombre, int DNI, int Teléfono, String Correo_Electronico, String Dirección) {
        this.Cod_cliente = Cod_cliente;
        this.nombre = nombre;
        this.DNI = DNI;
        this.Teléfono = Teléfono;
        this.Correo_Electronico = Correo_Electronico;
        this.Dirección = Dirección;
    }
    public void MostrarDatos(){
        System.out.println("esto");
    }
}

