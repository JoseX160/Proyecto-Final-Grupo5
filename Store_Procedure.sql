DROP DATABASE IF EXISTS grupo;
CREATE DATABASE grupo;
USE grupo;
create table cliente(
    Cod_Cliente VARCHAR(4),
	Nombre VArchar(7),
	DNI int(8),
	Teléfono int(10),
	CorreoElectrónico varchar(20),
	Dirección varchar(35),
	primary key (Cod_Cliente)
);

create table cuenta(
    Nro int(8),
	Cod_Cliente VARCHAR(4),
	foreign key(Cod_Cliente) references cliente(Cod_Cliente) 
);

create table venta(
	ID int(4),
	Componentes VARCHAR(15),
	Marca VARCHAR(3),
	Precio int(10),
	primary key (ID)
);

Create table fecha(
	ID int(4),
	Inicio_Pedido VARCHAR(10),
	Fin_Pedido VARCHAR(10),
	foreign key(ID) references venta(ID)
);

Create table factura(
	ID int(4),
	Cod_Cliente varchar(4),
	Cant_componentes int(4),
	Fecha Varchar(21),
	Precio_Total Int(12),
	primary key(Precio_Total),
	foreign key(ID) references venta(ID),
	foreign key(Cod_Cliente) references cliente(Cod_Cliente)	
);

create table pagar(
	Precio_Total int(12),
	Metodo_Pago VARCHAR(18),
	foreign key(Precio_Total) references factura(Precio_Total)	
);

create table envio(
	Dirección_Cliente VARCHAR(35)
);

Create table abonarEmpresa(
	Cant_Ventas VARCHAR(4),
	Precio_Bono int(15)
);

INSERT INTO cliente VALUES('ssa',213,3132,'fewfw','fref','2aa3');

//https://www.mysqltutorial.org/introduction-to-sql-stored-procedures.aspx//