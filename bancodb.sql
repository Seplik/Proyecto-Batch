drop database if exists bancodb;
create database bancodb;
use bancodb;
create table tipocuenta(
		idtipocuenta int not null auto_increment,
		nombre varchar(45),
		primary key(idtipocuenta),
		unique(idtipocuenta));
create table cliente(
		idcliente int not null auto_increment,
		nombre varchar(200),
		apellido varchar(200),
		primary key(idcliente),
		unique(idcliente));
create table banco(
	idbanco int not null auto_increment,
	nombre varchar(100),
	primary key(idbanco),
	unique(idbanco));
create table cuenta(
		idcuenta int not null auto_increment,
		balance decimal(65,30),
		idcliente int,
		idtipocuenta int,
		foreign key(idcliente)references cliente(idcliente),
		foreign key(idtipocuenta)references tipocuenta(idtipocuenta),
		primary key(idcuenta));
create table banco_clientes(
			idbanco_clientes int not null auto_increment,
			idbanco int,
			idcuenta int, 
			primary key(idbanco_clientes),
			foreign key(idbanco)references banco(idbanco),
			foreign key(idcuenta)references cuenta(idcuenta),
			unique(idbanco_clientes));
insert into tipocuenta(nombre) values("Ahorro");
insert into tipocuenta(nombre) values("Cheques");