create database go_local;
use go_local;

CREATE TABLE Roles (
id_rol int NOT NULL,
nombre varchar (50) NOT NULL,
PRIMARY KEY (id_rol)
);

CREATE TABLE `Usuarios` (
id_usuario int NOT NULL AUTO_INCREMENT,
dni char (9) NOT NULL,
nombre varchar (50) NOT NULL,
username varchar(50) NOT NULL,
apellidos varchar (50) NOT NULL,
email varchar (50) NOT NULL,
telefono int NOT NULL,
contraseña varchar (25) NOT NULL,
sobre_mi varchar (500),
PRIMARY KEY (id_usuario)
);

CREATE TABLE Usuario_roles (
id_rol int NOT NULL,
id_usuario int NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES `usuarios`(id_usuario),
FOREIGN KEY (id_rol) REFERENCES `roles`(id_rol)
);

CREATE TABLE `Admins` (
id_admin int NOT NULL AUTO_INCREMENT,
id_usuario int,
PRIMARY KEY (id_admin),
FOREIGN KEY (id_usuario) REFERENCES `usuarios`(id_usuario)
);

CREATE TABLE `Guias` (
id_guia int NOT NULL AUTO_INCREMENT,
id_usuario int,
idioma varchar (25),
PRIMARY KEY (id_guia),
FOREIGN KEY (id_usuario) REFERENCES `usuarios`(id_usuario)
);

CREATE TABLE `Clientes` (
id_cliente int NOT NULL AUTO_INCREMENT,
id_usuario int,
PRIMARY KEY (id_cliente),
FOREIGN KEY (id_usuario) REFERENCES `usuarios`(id_usuario)
);

CREATE TABLE `Post_blog` (
id_post int NOT NULL AUTO_INCREMENT,
id_admin int NOT NULL,
titulo varchar (50) NOT NULL,
parrafo1 varchar (200) NOT NULL,
contenido1 varchar (1000) NOT NULL,
parrafo2 varchar (200),
contenido2 varchar (1000),
parrafo3 varchar (200),
contenido3 varchar (1000),
parrafo4 varchar (200),
contenido4 varchar (1000),
autor varchar (25) NOT NULL,
fecha_publi date NOT NULL,
descripcion varchar (100) NOT NULL,
minutos_lectura int NOT NULL,
PRIMARY KEY (id_post),
FOREIGN KEY (id_admin) REFERENCES `Admins`(id_admin)
);

CREATE TABLE `Paises` (
id_pais int NOT NULL AUTO_INCREMENT,
nombre varchar (50) NOT NULL,
PRIMARY KEY (id_pais)
);

CREATE TABLE `Ciudades` (
id_ciudad int NOT NULL AUTO_INCREMENT,
id_pais int NOT NULL,
nombre varchar (50) NOT NULL,
PRIMARY KEY (id_ciudad),
FOREIGN KEY (id_pais) REFERENCES `Paises`(id_pais)
);

CREATE TABLE `Pueblos` (
id_pueblo int NOT NULL AUTO_INCREMENT,
id_ciudad int NOT NULL,
nombre varchar (50) NOT NULL,
PRIMARY KEY (id_pueblo),
FOREIGN KEY (id_ciudad) REFERENCES `Ciudades`(id_ciudad)
);

CREATE TABLE `itinerarios` (
id_itinerario int NOT NULL AUTO_INCREMENT,
id_guia int NOT NULL UNIQUE,
id_ciudad int NOT NULL,
descripcion varchar (500) NOT NULL,
duracion double NOT NULL,
fecha_disponible date NOT NULL,
plazas_max int NOT NULL,
precio double NOT NULL,
monte boolean NOT NULL,
playa boolean NOT NULL,
cultura boolean NOT NULL,
gastronomia boolean NOT NULL,
enologico boolean NOT NULL,
ecologico boolean NOT NULL,
nocturno boolean NOT NULL,
relajacion boolean NOT NULL,
rural boolean NOT NULL,
local boolean NOT NULL,
PRIMARY KEY (id_itinerario),
FOREIGN KEY (id_guia) REFERENCES `Guias`(id_guia),
FOREIGN KEY (id_ciudad) REFERENCES `Ciudades`(id_ciudad)
);

CREATE TABLE `Reservas` (
id_reserva int NOT NULL AUTO_INCREMENT,
id_itinerario int NOT NULL,
id_cliente int NOT NULL,
fecha date NOT NULL,
PRIMARY KEY (id_reserva),
FOREIGN KEY (id_itinerario) REFERENCES `Itinerarios`(id_itinerario),
FOREIGN KEY (id_cliente) REFERENCES `Clientes`(id_cliente)
);

CREATE TABLE `Reseñas` (
id_reseña int NOT NULL AUTO_INCREMENT,
id_itinerario int NOT NULL,
id_cliente int NOT NULL,
id_guia int NOT NULL,
puntuacion double NOT NULL,
fecha date NOT NULL,
contenido varchar (500) NOT NULL,
PRIMARY KEY (id_reseña),
FOREIGN KEY (id_itinerario) REFERENCES `Itinerarios`(id_itinerario),
FOREIGN KEY (id_cliente) REFERENCES `Clientes`(id_cliente),
FOREIGN KEY (id_guia) REFERENCES `Guias`(id_guia)
);

-- create user u_golocal_BBDD identified by 'ugolocal';
-- grant all privileges on go_local.* to u_golocal_BBDD;


-- DROP DATABASE go_local;