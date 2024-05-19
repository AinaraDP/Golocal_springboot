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
INSERT INTO Usuarios (id_usuario, dni, nombre, username, apellidos, email, telefono, contraseña, sobre_mi) VALUES 
(1,'12345678A', 'Juan', 'juanperez', 'Perez', 'juan@example.com', 123456789, 'contraseña1', 'Apasionado por la historia y la cultura de mi país. Como guía, me encanta compartir mis conocimientos sobre los sitios históricos y las tradiciones locales. ¡Ven y descubre la magia de nuestros lugares más emblemáticos'),
(2,'98765432B', 'María', 'mariagarcia', 'García', 'maria@example.com', 987654321, 'contraseña2', 'Explorador incansable y amante de la naturaleza. Mi misión es llevarte a lugares increíbles fuera de los circuitos turísticos habituales. Juntos, podemos vivir aventuras inolvidables y descubrir la belleza oculta de nuestra tierra.'),
(3,'11111111A', 'Pedro', 'pedrolopez', 'Lopez', 'pedro@example.com', 111111111, 'contraseña3', 'Adicto a la adrenalina y experto en deportes extremos. Si buscas emociones fuertes y experiencias únicas, estás en el lugar correcto. Prepárate para desafiar tus límites y sentir la verdadera aventura en cada paso del camino.'),
(4,'22222222B', 'Ana', 'anagomez', 'Gómez', 'ana@example.com', 222222222, 'contraseña4', 'Conocedor de los secretos culinarios locales y amante de la buena comida. Te invito a disfrutar de un viaje gastronómico inolvidable, donde podrás degustar los sabores auténticos de nuestra cocina tradicional y descubrir los mejores restaurantes locales.'),
(5,'33333333C', 'Luis', 'luisrodriguez', 'Rodríguez', 'luis@example.com', 333333333, 'contraseña5', 'Guía profesional y entusiasta de la fotografía. Mi objetivo es capturar los momentos más especiales de tu viaje y ayudarte a crear recuerdos que perdurarán para siempre. Descubre la belleza de nuestro destino a través de mi lente.'),
(6,'44444444D', 'Laura', 'lauraramirez', 'Ramírez', 'laura@example.com', 444444444, 'contraseña6', 'Amante de la música y la cultura urbana. Como guía local, te llevaré a los lugares más vibrantes de la ciudad, donde podrás sumergirte en la escena musical, el arte callejero y la vida nocturna. ¡Prepárate para vivir una experiencia única y llena de ritmo!'),
(7,'55555555E', 'Carlos', 'carlosfernandez', 'Fernández', 'carlos@example.com', 555555555, 'contraseña7', 'Explorador de rincones ocultos y aficionado a la arquitectura. Descubre conmigo los tesoros escondidos de nuestra ciudad, desde antiguas iglesias hasta modernos rascacielos. ¡Déjate sorprender por la diversidad de estilos y la belleza de nuestros edificios!'),
(8,'66666666F', 'Elena', 'elenamartinez', 'Martínez', 'elena@example.com', 666666666, 'contraseña8', 'Apasionado por el ecoturismo y la conservación del medio ambiente. Acompáñame en una aventura ecológica donde podrás explorar la biodiversidad de nuestra región y aprender sobre la importancia de preservar nuestros recursos naturales para las generaciones futuras.'),
(9,'77777777G', 'David', 'davidgomez', 'Gómez', 'david@example.com', 777777777, 'contraseña9', 'Experto en leyendas locales y cuentacuentos de corazón. Déjame llevarte en un viaje mágico a través de las historias y mitos de nuestra tierra. Desde relatos de fantasmas hasta leyendas ancestrales, te sumergirás en un mundo de misterio y fascinación.'),
(10,'88888888H', 'Sofia', 'sofiatorres', 'Torres', 'sofia@example.com', 888888888, 'contraseña10', 'Entusiasta de la aventura y especialista en viajes de mochilero. Si buscas una experiencia auténtica y fuera de lo común, estoy aquí para mostrarte los lugares más auténticos y pintorescos de nuestra región. ¡Prepárate para una aventura única y llena de sorpresas!');

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
-- Itinerarios para Barcelona
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(1, 1, 'Recorrido por el casco antiguo de Barcelona', 2.5, '2024-06-15', 15, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0),
(2, 1, 'Visita a la Sagrada Familia y el Parque Güell', 3, '2024-06-15', 20, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1),
(3, 1, 'Paseo en bicicleta por la costa de Barcelona', 4, '2024-06-15', 25, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(4, 1, 'Tour de tapas por el Barrio Gótico', 2, '2024-06-15', 12, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1);

-- Itinerarios para Madrid
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(1, 2, 'Recorrido por el Madrid de los Austrias', 3, '2024-06-20', 15, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0),
(2, 2, 'Visita al Museo del Prado y el Parque del Retiro', 3.5, '2024-06-20', 20, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1),
(3, 2, 'Tour en Segway por los principales monumentos', 4, '2024-06-20', 25, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1),
(4, 2, 'Ruta de compras por el Barrio de Salamanca', 2.5, '2024-06-20', 12, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0);

-- Itinerarios para París
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(1, 3, 'Visita a la Torre Eiffel y el Museo del Louvre', 3, '2024-07-01', 15, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0),
(2, 3, 'Paseo en barco por el río Sena al atardecer', 3.5, '2024-07-01', 20, 0, 1, 1, 0, 0, 0, 0, 0, 10, 1),
(3, 3, 'Cata de vinos y quesos en una bodega parisina', 4, '2024-07-01', 25, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0),
(4, 3, 'Espectáculo de cabaret en el Moulin Rouge', 2.5, '2024-07-01', 12, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0);

-- Itinerarios para Roma
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(1, 4, 'Tour por el Coliseo y el Foro Romano', 3, '2024-07-05', 15, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0),
(2, 4, 'Visita al Vaticano y la Capilla Sixtina', 3.5, '2024-07-05', 20, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1),
(3, 4, 'Paseo en Vespa por las calles de Roma', 4, '2024-07-05', 25, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1),
(4, 4, 'Degustación de pasta fresca en una trattoria romana', 2.5, '2024-07-05', 12, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0);

-- Itinerarios para Berlín
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(1, 5, 'Recorrido por el Muro de Berlín y la Puerta de Brandeburgo', 3, '2024-08-18', 15, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1),
(2, 5, 'Visita al Museo de la DDR y el Checkpoint Charlie', 3.5, '2024-08-18', 20, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1),
(3, 5, 'Paseo en bicicleta por los parques de Berlín', 4, '2024-08-18', 25, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(4, 5, 'Tour de cerveza artesanal por los bares de Berlín', 2.5, '2024-07-05', 12, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1);

-- Itinerarios para Lisboa
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(1, 6, 'Recorrido por el Barrio de Alfama y el Castillo de San Jorge', 3, '2024-08-22', 15, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(2, 6, 'Visita al Monasterio de los Jerónimos y la Torre de Belém', 3.5, '2024-08-22', 20, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1),
(3, 6, 'Paseo en tranvía por las colinas de Lisboa', 4, '2024-08-22', 25, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1),
(4, 6, 'Cata de vinos portugueses en una bodega de Lisboa', 2.5, '2024-08-22', 12, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1);

-- Itinerarios para Tokio
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(1, 7, 'Recorrido por el Templo Senso-ji y el barrio de Asakusa', 3, '2024-09-15', 15, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(2, 7, 'Visita al barrio de Harajuku y el Santuario Meiji', 3.5, '2024-09-15', 20, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1),
(3, 7, 'Paseo en barco por la bahía de Tokio al atardecer', 4, '2024-09-15', 25, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(4, 7, 'Cena en un restaurante con estrellas Michelin en Roppongi', 2.5, '2024-09-15', 12, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1);

-- Itinerarios para Moscú
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(1, 8, 'Recorrido por la Plaza Roja y el Kremlin', 3, '2024-09-03', 15, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1),
(2, 8, 'Visita al Museo Estatal de Historia y la Catedral de San Basilio', 3.5, '2024-09-03', 20, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1),
(3, 8, 'Paseo en barco por el río Moscova', 4, '2024-09-03', 25, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(4, 8, 'Tour nocturno por los teatros y la vida cultural de Moscú', 2.5, '2024-09-03', 12, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1);

-- Itinerarios para Atenas
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(1, 9, 'Recorrido por la Acrópolis y el Partenón', 3, '2024-06-01', 15, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0),
(2, 9, 'Visita al Museo Arqueológico Nacional y el Ágora Antigua', 3.5, '2024-06-01', 20, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1),
(3, 9, 'Paseo en bicicleta por la costa de Atenas', 4, '2024-06-01', 25, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1),
(4, 9, 'Cata de vinos griegos en una taberna tradicional', 2.5, '2024-07-05', 12, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1);

-- Itinerarios para Buenos Aires
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(1, 10, 'Recorrido por la Casa Rosada y el barrio de San Telmo', 3, '2024-08-30', 15, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1),
(2, 10, 'Visita al Teatro Colón y la Avenida 9 de Julio', 3.5, '2024-08-30', 20, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1),
(3, 10, 'Paseo en barco por el Río de la Plata al atardecer', 4, '2024-08-30', 25, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(4, 10, 'Cena con espectáculo de tango en un restaurante tradicional', 2.5, '2024-08-30', 12, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1);

-- Itinerarios para Monterrey
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(1, 11, 'Recorrido por el Paseo Santa Lucía y el Barrio Antiguo', 3, '2024-09-07', 15, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0),
(2, 11, 'Visita al Museo de Historia Mexicana y el Mirador Asta Bandera', 3.5, '2024-09-07', 20, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0),
(3, 11, 'Paseo en teleférico por el Cerro de la Silla', 4, '2024-09-07', 25, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(4, 11, 'Cena en un restaurante con vista panorámica de la ciudad', 2.5, '2024-09-07', 12, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1);


/*
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

*/

/*
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
*/
