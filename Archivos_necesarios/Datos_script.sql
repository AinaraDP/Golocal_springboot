-- Insertar datos en la tabla Ciudades (continuación)
INSERT INTO Ciudades (id_pais, nombre) VALUES 
(1, 'Barcelona'),
(1, 'Madrid'),
(2, 'París'),
(3, 'Roma'),
(4, 'Berlín'),
(5, 'Zúrich'),
(6, 'Londres');

-- Insertar datos en la tabla Pueblos (ejemplo)
INSERT INTO Pueblos (id_ciudad, nombre) VALUES 
(1, 'Sitges'),
(1, 'Sant Cugat del Vallès'),
(3, 'Versalles'),
(3, 'Montmartre'),
(4, 'Florencia'),
(4, 'Pisa'),
(5, 'Heidelberg'),
(5, 'Bonn'),
(6, 'Bath'),
(6, 'Oxford');

-- Insertar datos en la tabla Itinerarios (ejemplo)
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(1, 1, 'Recorrido por el casco antiguo de Barcelona', 2.5, '2024-06-15', 15, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1),
(2, 2, 'Tour por el Museo del Prado y el Parque del Retiro', 3, '2024-06-20', 20, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(3, 3, 'Visita a la Torre Eiffel y crucero por el Sena', 4, '2024-07-05', 25, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(4, 4, 'Recorrido por el Coliseo y el Foro Romano', 3, '2024-07-10', 20, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1),
(5, 5, 'Tour por el Muro de Berlín y el Reichstag', 4.5, '2024-07-15', 20, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1),
(6, 6, 'Visita al Museo de Historia Natural y paseo por Hyde Park', 3, '2024-07-20', 15, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1);

-- Insertar datos en la tabla Reservas (ejemplo)
INSERT INTO Reservas (id_itinerario, id_cliente, fecha) VALUES 
(1, 3, '2024-06-01'),
(2, 4, '2024-06-05'),
(3, 5, '2024-06-10'),
(4, 9, '2024-06-15'),
(5, 10, '2024-06-20');

-- Insertar datos en la tabla Reseñas (ejemplo)
INSERT INTO Reseñas (id_itinerario, id_cliente, id_guia, puntuacion, fecha, contenido) VALUES 
(1, 3, 1, 4.5, '2024-06-02', 'Excelente recorrido por Barcelona. El guía fue muy informativo y amigable.'),
(2, 4, 2, 5, '2024-06-07', 'La visita al Museo del Prado fue increíble. El guía era muy conocedor y entusiasta.'),
(3, 5, 3, 4.8, '2024-06-12', 'Una experiencia memorable en París. El guía fue muy atento y conocedor.'),
(4, 9, 4, 4.7, '2024-06-17', 'La visita a Roma superó mis expectativas. El guía fue excelente.'),
(5, 10, 5, 4.9, '2024-06-22', 'Berlín es una ciudad fascinante. El guía hizo que la visita fuera muy interesante.');

-- Otros inserts según sea necesario...
