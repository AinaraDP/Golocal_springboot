use go_local;

-- primero crear el id_usuario en las tablas
alter table Clientes 
add column id_usuario int;

alter table Guias 
add column id_usuario int;

alter table Admins 
add column id_usuario int;


-- Crear el fk de id_usuario en Guias, Clientes y Admins
ALTER TABLE Guias
ADD CONSTRAINT fk_id_usuario
FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario);

ALTER TABLE Clientes
ADD CONSTRAINT fk_c_id_usuario
FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario);

ALTER TABLE Admins
ADD CONSTRAINT fk_a_id_usuario
FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario);



alter table Clientes 
add column id_usuario int;

SET FOREIGN_KEY_CHECKS = 0;

DELETE FROM Guias;
DELETE FROM Clientes;
DELETE FROM Admins;
DELETE FROM Usuarios;
DELETE FROM ciudades;
DELETE FROM Usuarios;
DELETE FROM itinerarios;
DELETE FROM paises;
DELETE FROM post_blog;
DELETE FROM pueblos;
DELETE FROM reservas;
DELETE FROM reseñas;
DELETE FROM usuarios;

SET SQL_SAFE_UPDATES = 0;


SET FOREIGN_KEY_CHECKS = 1;