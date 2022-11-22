# Creación de tabla para los ejercicios:
CREATE TABLE Usuarios (
   id INT PRIMARY KEY AUTO_INCREMENT,
   usuario VARCHAR(20),
   nombre VARCHAR(20),
   sexo VARCHAR(1),
   nivel TINYINT,
   email VARCHAR(50),
   telefono VARCHAR(20),
   marca VARCHAR(20),
   compania VARCHAR(20),
   saldo FLOAT,
   activo BOOLEAN
);
# Ingreso de datos en la tabla, para los ejercicios:
INSERT INTO Usuarios 
VALUES 
('1','BRE2271','BRENDA','M','2','brenda@live.com','655-330-5736','SAMSUNG','IUSACELL','100','1'),
('2','OSC4677','OSCAR','H','3','oscar@gmail.com','655-143-4181','LG','TELCEL','0','1'),
('3','JOS7086','JOSE','H','3','francisco@gmail.com','655-143-3922','NOKIA','MOVISTAR','150','1'),
('4','LUI6115','LUIS','H','0','enrique@outlook.com','655-137-1279','SAMSUNG','TELCEL','50','1'),
('5','LUI7072','LUIS','H','1','luis@hotmail.com','655-100-8260','NOKIA','IUSACELL','50','0'),
('6','DAN2832','DANIEL','H','0','daniel@outlook.com','655-145-2586','SONY','UNEFON','100','1'),
('7','JAQ5351','JAQUELINE','M','0','jaqueline@outlook.com','655-330-5514','BLACKBERRY','AXEL','0','1'),
('8','ROM6520','ROMAN','H','2','roman@gmail.com','655-330-3263','LG','IUSACELL','50','1'),
('9','BLA9739','BLAS','H','0','blas@hotmail.com','655-330-3871','LG','UNEFON','100','1'),
('10','JES4752','JESSICA','M','1','jessica@hotmail.com','655-143-6861','SAMSUNG','TELCEL','500','1'),
('11','DIA6570','DIANA','M','1','diana@live.com','655-143-3952','SONY','UNEFON','100','0'),
('12','RIC8283','RICARDO','H','2','ricardo@hotmail.com','655-145-6049','MOTOROLA','IUSACELL','150','1'),
('13','VAL6882','VALENTINA','M','0','valentina@live.com','655-137-4253','BLACKBERRY','AT&T','50','0'),
('14','BRE8106','BRENDA','M','3','brenda2@gmail.com','655-100-1351','MOTOROLA','NEXTEL','150','1'),
('15','LUC4982','LUCIA','M','3','lucia@gmail.com','655-145-4992','BLACKBERRY','IUSACELL','0','1'),
('16','JUA2337','JUAN','H','0','juan@outlook.com','655-100-6517','SAMSUNG','AXEL','0','0'),
('17','ELP2984','ELPIDIO','H','1','elpidio@outlook.com','655-145-9938','MOTOROLA','MOVISTAR','500','1'),
('18','JES9640','JESSICA','M','3','jessica2@live.com','655-330-5143','SONY','IUSACELL','200','1'),
('19','LET4015','LETICIA','M','2','leticia@yahoo.com','655-143-4019','BLACKBERRY','UNEFON','100','1'),
('20','LUI1076','LUIS','H','3','luis2@live.com','655-100-5085','SONY','UNEFON','150','1'),
('21','HUG5441','HUGO','H','2','hugo@live.com','655-137-3935','MOTOROLA','AT&T','500','1');

# Ejercicios MySql

# 01 Listar los nombres de los usuarios
	select nombre from usuarios;
# 02 Calcular el saldo máximo de los usuarios de sexo “Mujer”
	select max(saldo) from usuarios where sexo="m";
# 03 Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY
	select nombre, telefono from usuarios 
    where marca in("NOKIA", "BLACKBERRY","SONY");
# 04 Contar los usuarios sin saldo o inactivos
	select count(usuario) from usuarios where saldo=0 or activo=0;
# 05 Listar el login de los usuarios con nivel 1, 2 o 3
	select usuario from usuarios where nivel in(1, 2, 3);
# 06 Listar los números de teléfono con saldo menor o igual a 300
	select telefono from usuarios where saldo<=300;
# 07 Calcular la suma de los saldos de los usuarios de la compañía telefónica NEXTEL
	select sum(saldo) from usuarios where compania="NEXTEL";	
# 08 Contar el número de usuarios por compañía telefónica
	select compania, count(*) from usuarios group by compania;
# 09 Contar el número de usuarios por nivel
	select nivel, count(*) from usuarios group by nivel;
# 10 Listar el login de los usuarios con nivel 2
	select usuario from usuarios where nivel=2;
# 11 Mostrar el email de los usuarios que usan gmail
	select email from usuarios where right(email, 9)="gmail.com";
    select email from usuarios where email like "%gmail.com";    
# 12 Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA
	select nombre, telefono from usuarios 
    where marca="LG" or marca="SAMSUNG" or marca="MOTOROLA";	
    select nombre, telefono from usuarios where marca in("LG", "SAMSUNG", "MOTOROLA");
# 13 Listar nombre y teléfono de los usuarios con teléfono 
# que no sea de la marca LG o SAMSUNG
	select nombre, telefono from usuarios where marca!="LG" and marca!="SAMSUNG";
    select nombre, telefono from usuarios where marca not in("LG", "SAMSUNG");
# 14 Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL
	select usuario, telefono from usuarios where compania="IUSACELL";		
# 15 Listar el login y teléfono de los usuarios con compañía 
# telefónica que no sea TELCEL
	select usuario, telefono from usuarios where compania != "TELCEL";
    select usuario, telefono from usuarios where compania <> "TELCEL";
# 16 Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA
	select avg(saldo) from usuarios where marca="NOKIA";		
# 17 Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o AXEL	
	select usuario, telefono from usuarios 
	where compania="IUSACELL" or compania="AXEL";
    select usuario, telefono from usuarios where compania in("IUSACELL", "AXEL");
# 18 Mostrar el email de los usuarios que no usan yahoo
	select email from usuarios where right(email, 9)!="yahoo.com";
    select email from usuarios where email not like "%yahoo.com";
# 19 Listar el login y teléfono de los usuarios con compañía telefónica 
# que no sea TELCEL o IUSACELL
	select usuario, telefono from usuarios 
	where compania!="TELCEL" and compania!="IUSACELL";
    select usuario, telefono from usuarios where compania not in("TELCEL", "IUSACELL");
# 20  Listar el login y teléfono de los usuarios con compañía telefónica UNEFON
	select usuario, telefono from usuarios where compania="UNEFON";	
# 21 Listar las diferentes marcas de celular en orden alfabético descendentemente
	select distinct marca from usuarios order by marca desc;    
# 22 Listar las diferentes compañías en orden alfabético aleatorio
	select distinct compania from usuarios order by rand();   
# 23 Listar el login de los usuarios con nivel 0 o 2
	select usuario from usuarios where nivel=0 or nivel=2;
    select usuario from usuarios where nivel in(0, 2);
# 24 Calcular el saldo promedio de los usuarios que tienen teléfono marca LG
	select avg(saldo) from usuarios where marca="LG";
# 25 Listar el login de los usuarios con nivel 1 o 3
	select usuario from usuarios where nivel=1 or nivel=3;
    select usuario from usuarios where nivel in(1, 3);
# 26 Listar nombre y teléfono de los usuarios con teléfono 
# que no sea de la marca BLACKBERRY
	select nombre, telefono from usuarios where marca!="BLACKBERRY";
    select nombre, telefono from usuarios where marca <> "BLACKBERRY";
# 27 Listar el login de los usuarios con nivel 3
	select usuario from usuarios where nivel=3;
# 28 Listar el login de los usuarios con nivel 0
	select usuario from usuarios where nivel=0;
# 29 Listar el login de los usuarios con nivel 1
	select usuario from usuarios where nivel=1;
# 30 Contar el número de usuarios por sexo
	select sexo, count(usuario) from usuarios group by sexo;
    select sexo, count(*) from usuarios group by sexo;
# 31 Listar el login y teléfono de los usuarios con compañía telefónica AT&T
	select usuario, telefono from usuarios where compania="AT&T";
# 32 Listar las diferentes compañías en orden alfabético descendentemente
	select distinct compania from usuarios order by compania desc;
# 33 Listar el login de los usuarios inactivos
	select usuario from usuarios where activo=0;    
# 34 Listar los números de teléfono sin saldo
	select telefono from usuarios where saldo <= 0; 
# 35 Calcular el saldo mínimo de los usuarios de sexo “Hombre”
	select min(saldo) from usuarios where sexo="h";
# 36 Listar los números de teléfono con saldo mayor a 300
	select telefono from usuarios where saldo > 300;
# 37 Contar el número de usuarios por marca de teléfono
	select marca, count(usuario) from usuarios group by marca;
    select marca, count(*) from usuarios group by marca;
# 38 Listar nombre y teléfono de los usuarios con teléfono 
# que no sea de la marca LG
	select nombre, telefono from usuarios where marca!="LG";
    select nombre, telefono from usuarios where marca <> "LG";
# 39 Listar las diferentes compañías en orden alfabético ascendentemente
	select distinct compania from usuarios order by compania asc;
# 40    Calcular la suma de los saldos de los usuarios 	
# de la compañía telefónica UNEFON
	select sum(saldo) from usuarios where compania="UNEFON";
# 41 Mostrar el email de los usuarios que usan hotmail
	select email from usuarios 
	where substring_index(email, "@", -1)="hotmail.com";
    select email from usuarios where email like "%hotmail.com";
# 42 Listar los nombres de los usuarios sin saldo o inactivos
	select nombre from usuarios where saldo=0 or activo=0;
# 43 Listar el login y teléfono de los usuarios 
# con compañía telefónica IUSACELL o TELCEL
	select usuario, telefono from usuarios 
	where compania="IUSACELL" or compania="TELCEL";
    select usuario, telefono from usuarios where compania in("IUSACELL", "TELCEL");
# 44 Listar las diferentes marcas de celular en orden alfabético ascendentemente
	select distinct marca from usuarios order by marca asc;
# 45 Listar las diferentes marcas de celular en orden alfabético aleatorio
	select distinct marca from usuarios order by rand();    
# 46 Listar el login y teléfono de los usuarios	
# con compañía telefónica IUSACELL o UNEFON
	select usuario, telefono from usuarios 
	where compania="IUSACELL" or compania="UNEFON";
    select usuario, telefono from usuarios where compania in("IUSACELL", "UNEFON");
# 47 Listar nombre y teléfono de los usuarios con teléfono 
# que no sea de la marca MOTOROLA o NOKIA
	select nombre, telefono from usuarios 
	where marca!="MOTOROLA" and marca!="NOKIA";
    select nombre, telefono from usuarios where marca not in("MOTOROLA", "NOKIA");
# 48 Calcular la suma de los saldos de los usuarios 
# de la compañía telefónica TELCEL
	select sum(saldo) from usuarios where compania="TELCEL";


