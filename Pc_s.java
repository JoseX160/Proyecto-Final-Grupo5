package grupo;


public class Pc_s {
public int ID;
public String Componentes;
public String Modelo;
public String Marca;

    public Pc_s(int ID, String Componenetes, String Modelo, String Marca){
        this.ID = ID;
        this.Componentes = Componenetes;
        this.Modelo = Modelo;
        this.Marca = Marca;
    }
    public void MasVendida(){
        System.out.println("la pc mas vendidad es: ");
    }
}
