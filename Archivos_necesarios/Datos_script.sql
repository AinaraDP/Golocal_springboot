USE go_local;

-- Primero insertar los id_admins
INSERT INTO Admins (id_admin) VALUES
(1), (2), (3);

-- Primero insertar los id_admins
INSERT INTO Clientes (id_cliente) VALUES
(1), (2), (3);

-- Primero insertar los id_admins
INSERT INTO Guias (id_guia, idioma) VALUES
(1,'Ingles'), (2,'Frances'), (3,'Español'), (4,'Aleman');

ALTER TABLE Usuarios AUTO_INCREMENT = 1;
-- Insertar datos en la tabla Usuarios
INSERT INTO Usuarios (id_usuario, id_guia, id_admin, id_cliente, dni, nombre, username, apellidos, email, telefono, contraseña, sobre_mi) VALUES 
(1,1,null,null,'12345678A', 'Juan', 'juanperez', 'Perez', 'juan@example.com', 123456789, 'contraseña1', 'Soy un guía turístico experimentado.'),
(2,null,1,null,'98765432B', 'María', 'mariagarcia', 'García', 'maria@example.com', 987654321, 'contraseña2', 'Me encanta compartir mi conocimiento sobre historia y cultura.'),
(3,null,null,1,'11111111A', 'Pedro', 'pedrolopez', 'Lopez', 'pedro@example.com', 111111111, 'contraseña3', 'Disfruto explorando nuevas culturas.'),
(4,2,null,null,'22222222B', 'Ana', 'anagomez', 'Gómez', 'ana@example.com', 222222222, 'contraseña4', 'Apasionada por la gastronomía local.'),
(5,null,2,null,'33333333C', 'Luis', 'luisrodriguez', 'Rodríguez', 'luis@example.com', 333333333, 'contraseña5', 'Me encanta planificar nuevas aventuras.'),
(6,null,null,2,'44444444D', 'Laura', 'lauraramirez', 'Ramírez', 'laura@example.com', 444444444, 'contraseña6', 'Experta en rutas culturales.'),
(7,null,3,null,'55555555E', 'Carlos', 'carlosfernandez', 'Fernández', 'carlos@example.com', 555555555, 'contraseña7', 'Aventurero y amante de la naturaleza.'),
(8,3,null,null,'66666666F', 'Elena', 'elenamartinez', 'Martínez', 'elena@example.com', 666666666, 'contraseña8', 'Especialista en turismo rural.'),
(9,null,null,3,'77777777G', 'David', 'davidgomez', 'Gómez', 'david@example.com', 777777777, 'contraseña9', 'Guía turístico bilingüe.'),
(10,4,null,null,'88888888H', 'Sofia', 'sofiatorres', 'Torres', 'sofia@example.com', 888888888, 'contraseña10', 'Amante de la historia y la cultura.');

-- insertar el id_usuario en Admins
UPDATE Admins SET id_usuario = 2 WHERE id_admin = 1;
UPDATE Admins SET id_usuario = 5 WHERE id_admin = 2;
UPDATE Admins SET id_usuario = 7 WHERE id_admin = 3;


-- insertar el id_usuario en Guias
UPDATE Guias SET id_usuario = 1 WHERE id_guia = 1;
UPDATE Guias SET id_usuario = 4 WHERE id_guia = 2;
UPDATE Guias SET id_usuario = 8 WHERE id_guia = 3;
UPDATE Guias SET id_usuario = 10 WHERE id_guia = 4;

-- insertar el id_usuario en Clientes
UPDATE Clientes SET id_usuario = 3 WHERE id_cliente = 1;
UPDATE Clientes SET id_usuario = 6 WHERE id_cliente = 2;
UPDATE Clientes SET id_usuario = 9 WHERE id_cliente = 3;


ALTER TABLE Post_blog AUTO_INCREMENT = 1;
-- Insertar datos en la tabla Post_blog
INSERT INTO Post_blog (id_admin, titulo, contenido, autor, fecha_publi, descripcion, minutos_lectura) VALUES 
(1, 'Descubre Barcelona', '¡Ven y descubre los secretos de Barcelona con nuestros guías expertos!', 'Admin 1', '2024-05-01', 'Conoce Barcelona a fondo', 10),
(2, 'Explora Madrid', 'Descubre la historia y la cultura de Madrid en una visita guiada única.', 'Admin 2', '2024-05-02', 'Explora la capital de España', 15),
(3, 'Ruta por París', 'Disfruta de un recorrido por los lugares más emblemáticos de París.', 'Admin 3', '2024-05-03', 'Visita París', 12),
(1, 'Gastronomía en Roma', 'Conoce los mejores lugares para degustar la comida italiana en Roma.', 'Admin 4', '2024-05-04', 'Sabores de Roma', 8),
(2, 'Tour por Berlín', 'Descubre la historia y cultura de Berlín en un recorrido inolvidable.', 'Admin 5', '2024-05-05', 'Historia en Berlín', 14),
(3, 'Aventura en Lisboa', 'Explora los rincones ocultos de Lisboa con nuestras guías.', 'Admin 6', '2024-05-06', 'Descubre Lisboa', 10),
(1, 'Cultura en Tokio', 'Sumérgete en la cultura japonesa con una visita guiada por Tokio.', 'Admin 7', '2024-05-07', 'Cultura en Tokio', 13),
(1, 'Historia de Moscú', 'Conoce los lugares históricos de Moscú en un tour exclusivo.', 'Admin 8', '2024-05-08', 'Historia en Moscú', 11),
(3, 'Explorando Atenas', 'Recorre la antigua ciudad de Atenas y descubre su rica historia.', 'Admin 9', '2024-05-09', 'Atenas Antiguo', 9),
(2, 'Encantos de Buenos Aires', 'Sumérgete en la vibrante cultura de Buenos Aires.', 'Admin 10', '2024-05-10', 'Cultura en Buenos Aires', 10);


ALTER TABLE Paises AUTO_INCREMENT = 1;
-- Insertar datos en la tabla Paises
INSERT INTO Paises (nombre) VALUES 
('España'),
('Francia'),
('Italia'),
('Alemania'),
('Portugal'),
('Japón'),
('Rusia'),
('Grecia'),
('Argentina'),
('México');


ALTER TABLE Ciudades AUTO_INCREMENT = 1;
-- Insertar datos en la tabla Ciudades
INSERT INTO Ciudades (id_pais, nombre) VALUES 
(1, 'Barcelona'),
(1, 'Madrid'),
(2, 'París'),
(3, 'Roma'),
(4, 'Berlín'),
(5, 'Lisboa'),
(6, 'Tokio'),
(7, 'Moscú'),
(8, 'Atenas'),
(9, 'Buenos Aires'),
(10, 'Monterrey');


ALTER TABLE Pueblos AUTO_INCREMENT = 1;
-- Insertar datos en la tabla Pueblos
INSERT INTO Pueblos (id_ciudad, nombre) VALUES 
(1, 'Sitges'),
(1, 'Sant Cugat del Vallès'),
(2, 'Versalles'),
(3, 'Florencia'),
(4, 'Hamburgo'),
(5, 'Oporto'),
(6, 'Yokohama'),
(7, 'San Petersburgo'),
(8, 'Salónica'),
(9, 'Rosario');


ALTER TABLE Itinerarios AUTO_INCREMENT = 1;
-- Insertar datos en la tabla Itinerarios
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(1, 1, 'Recorrido por el casco antiguo de Barcelona', 2.5, '2024-06-15', 15, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1),
(2, 2, 'Tour por el Museo del Prado y el Parque del Retiro', 3, '2024-06-20', 20, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(3, 3, 'Visita a la Torre Eiffel y el Louvre', 4, '2024-07-01', 25, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1),
(2, 4, 'Ruta gastronómica por Roma', 2, '2024-07-05', 12, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1),
(1, 5, 'Descubre la historia de Berlín', 3.5, '2024-07-10', 18, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1),
(3, 6, 'Tour por los barrios históricos de Lisboa', 3, '2024-07-15', 22, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1),
(3, 7, 'Explorando la modernidad de Tokio', 4, '2024-07-20', 30, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1),
(1, 8, 'Ruta histórica por Moscú', 3, '2024-07-25', 20, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(1, 9, 'Descubre la antigua Atenas', 3.5, '2024-08-01', 25, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(1, 10, 'Cultura y tango en Buenos Aires', 2.5, '2024-08-05', 15, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1);

ALTER TABLE Reservas AUTO_INCREMENT = 1;
-- Insertar datos en la tabla Reservas
INSERT INTO Reservas (id_itinerario, id_cliente, fecha) VALUES 
(1, 1, '2024-06-15'),
(2, 2, '2024-06-20'),
(3, 3, '2024-07-01'),
(4, 1, '2024-07-05'),
(5, 1, '2024-07-10'),
(6, 3, '2024-07-15'),
(7, 3, '2024-07-20'),
(8, 3, '2024-07-25'),
(9, 2, '2024-08-01'),
(10, 1, '2024-08-05');


ALTER TABLE Reseñas AUTO_INCREMENT = 1;
-- Insertar datos en la tabla Reseñas
INSERT INTO Reseñas (id_itinerario, id_cliente, id_guia, puntuacion, fecha, contenido) VALUES 
(1, 1, 1, 4.5, '2024-06-15', 'Excelente tour, muy informativo y entretenido.'),
(2, 2, 3, 4.0, '2024-06-20', 'Muy buena experiencia, el guía fue muy amable.'),
(3, 3, 1, 5.0, '2024-07-01', '¡Increíble! La mejor visita guiada que he tenido.'),
(4, 2, 2, 3.5, '2024-07-05', 'Buena experiencia, aunque podría haber sido más larga.'),
(5, 1, 3, 4.8, '2024-07-10', 'Muy interesante y bien organizado.'),
(6, 3, 4, 4.3, '2024-07-15', 'El guía conocía mucho sobre la historia local.'),
(7, 2, 2, 5.0, '2024-07-20', 'Fantástico tour, muy recomendable.'),
(8, 1, 3, 4.7, '2024-07-25', 'Disfruté mucho la visita, aprendí mucho.'),
(9, 3, 4, 4.2, '2024-08-01', 'Buena experiencia, aunque esperaba más lugares para visitar.'),
(10, 2, 4, 4.9, '2024-08-05', 'Excelente recorrido, el guía fue muy profesional.');
