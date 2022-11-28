DROP DATABASE IF EXISTS grupo;
CREATE DATABASE grupo;
USE grupo;
create table cliente(
    Cod_Cliente VARCHAR(4),
	Nombre VArchar(7),
	DNI int(8),
	Teléfono int(12),
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
	Inicio_Pedido VARCHAR(11),
	Fin_Pedido VARCHAR(11),
	foreign key(ID) references venta(ID)
);

Create table factura(
	ID int(4),
	Cod_Cliente varchar(4),
	Cant_componentes int(4),
	Fecha Varchar(22),
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

INSERT INTO cliente VALUES('A1A2','Josè',24356742,1173422343,'jose253@gmail.com','av.alvarez thomas 0000');
INSERT INTO cliente VALUES('B1B3','Manuel',12394934,1132183924,'ma2348@gmail.com','av.federico lacroze 0000');
INSERT INTO cliente VALUES('C1C4','Andrès',83475873,1174368984,'andres7@gmail.com','av.corrientes 0000');
INSERT INTO cliente VALUES('D5D5','Juan',45489854,1128932349,'juan455@gmail.com','av.cordoba 0000');
INSERT INTO cliente VALUES('E1E6','Diego',73643832,1146794384,'di_23654@gmail.com','av.callao 0000');


INSERT INTO cuenta VALUES(1,'A1A2');
INSERT INTO cuenta VALUES(2,'B1A3');
INSERT INTO cuenta VALUES(3,'C1A4');
INSERT INTO cuenta VALUES(4,'D1A5');
INSERT INTO cuenta VALUES(5,'E1A6');


INSERT INTO venta VALUES(2325,'Disco Duro','HP',30500);
INSERT INTO venta VALUES(4532,'Procesador','HP',12750);
INSERT INTO venta VALUES(3224,'Memoria RAM','HP',20000);
INSERT INTO venta VALUES(1234,'Proceasdor','HP',45500);
INSERT INTO venta VALUES(4321,'Tarjeta de Video','HP',250000);


INSERT INTO fecha VALUES(2325,'16/11/2022','17/11/2022'); 
INSERT INTO fecha VALUES(4532,'15/10/2022','17/10/2022'); 
INSERT INTO fecha VALUES(3224,'14/09/2022','17/09/2022'); 
INSERT INTO fecha VALUES(1234,'13/08/2022','17/08/2022'); 
INSERT INTO fecha VALUES(4321,'12/07/2022','17/07/2022');


INSERT INTO factura VALUES(2325,'A1A2',2,'16/11/2022 17/11/2022',61000);
INSERT INTO factura VALUES(4532,'B1B3',1,'15/10/2022 17/10/2022',12750); 
INSERT INTO factura VALUES(3224,'C1C4',3,'14/09/2022 17/09/2022',100000);
INSERT INTO factura VALUES(1234,'D1D5',1,'13/08/2022 17/08/2022',45500);
INSERT INTO factura VALUES(4321,'E1E6',1,'12/07/2022 17/07/2022',250000);


INSERT INTO cuenta VALUES(61000,'A1A2');
INSERT INTO cuenta VALUES(12750,'A1A2');
INSERT INTO cuenta VALUES(100000,'A1A2');
INSERT INTO cuenta VALUES(45500,'A1A2');
INSERT INTO cuenta VALUES(250000,'A1A2');

//https://www.mysqltutorial.org/introduction-to-sql-stored-procedures.aspx//


//SELECT * FROM cliente, cuenta WHERE cliente.Cod_Cliente = cuenta.Cod_Cliente;//