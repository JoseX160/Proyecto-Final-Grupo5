package grupo;


public class Venta extends Pc_s{
public double Precio;

    public Venta(int id, String Componentes, String Modelo, String Marca, double Precio){
        super(id,Componentes,Modelo,Marca);
        this.Precio = Precio;
    }
    public void CantDeVentas(){
        System.out.println("");
    }
}
