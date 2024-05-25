USE go_local;

ALTER TABLE roles;
INSERT INTO roles (id_rol, nombre) VALUES
(1,'ROL_ADMIN'), (2,'ROL_GUIA'), (3,'ROL_CLIENTE');

ALTER TABLE Usuarios AUTO_INCREMENT = 1;
INSERT INTO `Usuarios` (`dni`, `nombre`, `username`, `apellidos`, `email`, `telefono`, `contraseña`, `sobre_mi`) VALUES
('123456789', 'Juan', 'juanito123', 'Pérez García', 'juanito@email.com', 123456789, 'contraseña123', 'Soy un entusiasta de la tecnología, especialmente apasionado por el desarrollo de aplicaciones web. Me encanta aprender nuevas tecnologías y compartir conocimientos con la comunidad.'),
('987654321', 'María', 'maria95', 'González Martínez', 'maria@email.com', 987654321, 'mariacontraseña', 'Amante de los viajes y la aventura. Disfruto descubriendo nuevas culturas y probando diferentes tipos de comida. Siempre buscando nuevas experiencias que me hagan crecer como persona.'),
('456123789', 'Carlos', 'carlitos22', 'Sánchez Rodríguez', 'carlos@email.com', 456123789, 'carlos123', 'Apasionado del deporte, especialmente del fútbol. Me encanta jugar con amigos los fines de semana y seguir de cerca las ligas internacionales. También disfruto del senderismo y la naturaleza.'),
('789456123', 'Ana', 'ana88', 'López Sánchez', 'ana@email.com', 789456123, 'anacontraseña', 'Soy una amante de la lectura y la escritura. Paso mi tiempo libre inmersa en libros de todo tipo, desde novelas de ficción hasta ensayos filosóficos. También disfruto escribiendo en mi blog personal.'),
('321654987', 'Pablo', 'pablito99', 'Martínez López', 'pablo@email.com', 321654987, 'pablo123', 'Me considero un eterno estudiante, siempre buscando aprender algo nuevo. Actualmente estoy aprendiendo sobre inteligencia artificial y espero poder aplicarlo en proyectos futuros.'),
('654987321', 'Laura', 'laura22', 'Hernández Gómez', 'laura@email.com', 654987321, 'lauracontraseña', 'Adicta al café y entusiasta de la fotografía. Me encanta capturar momentos especiales y jugar con la composición y la luz. Siempre buscando el ángulo perfecto para una buena foto.'),
('852963741', 'Pedro', 'pedrito21', 'Gómez Fernández', 'pedro@email.com', 852963741, 'pedro123', 'Amante de los animales y defensor de los derechos de los mismos. Colaboro con diferentes organizaciones de protección animal y promuevo la adopción responsable.'),
('369258147', 'Sara', 'sara90', 'Fernández Pérez', 'sara@email.com', 369258147, 'saracontraseña', 'Me apasiona la cocina y experimentar con nuevos ingredientes y recetas. Disfruto compartiendo mis creaciones culinarias con amigos y familiares en cenas y eventos.'),
('159357852', 'Javier', 'javi22', 'Martínez García', 'javi@email.com', 159357852, 'javier123', 'Entusiasta del cine y las series de televisión. Me encanta analizar películas desde un punto de vista técnico y discutir sobre teorías de tramas. Siempre buscando recomendaciones de nuevas películas y series.'),
('258369147', 'Elena', 'elena19', 'García Martínez', 'elena@email.com', 258369147, 'elenacontraseña', 'Me apasiona el arte en todas sus formas, desde la pintura hasta la escultura. Disfruto visitando museos y galerías de arte para inspirarme y conocer nuevas tendencias artísticas.'),
('753159852', 'Miguel', 'miguelito55', 'Hernández Pérez', 'miguel@email.com', 753159852, 'miguel123', 'Entusiasta de los deportes extremos y las actividades al aire libre. Me encanta la adrenalina que se siente al practicar deportes como el surf, el snowboard y el paracaidismo.'),
('654789123', 'Carmen', 'carmen88', 'Sánchez García', 'carmen@email.com', 654789123, 'carmencontraseña', 'Soy una persona creativa y me apasiona el diseño gráfico. Disfruto creando ilustraciones y diseños digitales en mi tiempo libre, y siempre estoy buscando nuevas técnicas y herramientas para mejorar.'),
('147852369', 'Antonio', 'antonio99', 'Gómez Rodríguez', 'antonio@email.com', 147852369, 'antonio123', 'Me considero un amante de la música y toco la guitarra desde hace varios años. Disfruto componiendo mis propias canciones y también me gusta explorar diferentes estilos musicales.'),
('369147852', 'Isabel', 'isabel22', 'Rodríguez Martínez', 'isabel@email.com', 369147852, 'isabelcontraseña', 'Apasionada por el voluntariado y la ayuda social. Colaboro con diferentes organizaciones benéficas y dedico parte de mi tiempo a actividades de servicio comunitario.'),
('258369147', 'Francisco', 'fran88', 'López Martínez', 'francisco@email.com', 258369147, 'fran123', 'Me considero un aficionado a la tecnología y la programación. Disfruto creando aplicaciones y páginas web, y siempre estoy buscando aprender nuevas tecnologías y lenguajes de programación.'),
('123698745', 'Eva', 'eva96', 'Martínez López', 'eva@email.com', 123698745, 'evacontraseña', 'Amante de los viajes y la fotografía. Me encanta explorar nuevos lugares y capturar momentos especiales con mi cámara. Siempre en busca de la próxima aventura.'),
('987654321', 'Alberto', 'alberto00', 'Gómez Sánchez', 'alberto@email.com', 987654321, 'alberto123', 'Soy un apasionado por el mundo del deporte y el fitness. Disfruto entrenando en el gimnasio y participando en carreras de resistencia como maratones y triatlones.'),
('852963741', 'Raquel', 'raquel22', 'Fernández Gómez', 'raquel@email.com', 852963741, 'raquelcontraseña', 'Me considero una persona curiosa y siempre estoy buscando aprender algo nuevo. Disfruto leyendo libros de diferentes géneros y participando en cursos y talleres.'),
('369852147', 'David', 'david33', 'Hernández Martínez', 'david@email.com', 369852147, 'david123', 'Apasionado por el mundo de la ciencia y la tecnología. Me encanta investigar sobre temas de actualidad y debatir sobre avances científicos y tecnológicos.'),
('159753258', 'Natalia', 'natalia55', 'Gómez García', 'natalia@email.com', 159753258, 'nataliacontraseña', 'Entusiasta del arte y la cultura. Disfruto visitando exposiciones de arte, conciertos y obras de teatro. Siempre buscando nuevas experiencias que me inspiren y enriquezcan mi vida.'),
('123456987', 'Sergio', 'sergio11', 'Rodríguez Gómez', 'sergio@email.com', 123456987, 'sergio123', 'Amante de la naturaleza y el aire libre. Disfruto haciendo senderismo, acampando y explorando parques naturales. Siempre en busca de nuevas aventuras en la naturaleza.'),
('852963741', 'Lucía', 'lucia77', 'Pérez Sánchez', 'lucia@email.com', 852963741, 'luciacontraseña', 'Apasionada por la cocina y la gastronomía. Disfruto experimentando en la cocina y probando nuevas recetas y sabores. Siempre buscando inspiración en la cocina de diferentes culturas.'),
('369852147', 'Rubén', 'ruben00', 'Martínez Gómez', 'ruben@email.com', 369852147, 'rubencontraseña', 'Entusiasta del cine y las series de televisión. Disfruto viendo películas de todo tipo, desde clásicos del cine hasta películas de ciencia ficción. Siempre buscando recomendaciones de nuevas películas.'),
('753159852', 'Paula', 'paula22', 'Sánchez Rodríguez', 'paula@email.com', 753159852, 'paula123', 'Amante de la música y la danza. Disfruto tocando el piano y bailando en mi tiempo libre. Siempre buscando nuevas melodías que inspiren mis creaciones musicales.'),
('654789123', 'Diego', 'diego88', 'Gómez Rodríguez', 'diego@email.com', 654789123, 'diegocontraseña', 'Apasionado por los deportes acuáticos y la vida marina. Disfruto practicando surf, buceo y navegación a vela. Siempre en busca de nuevas aventuras en el mar.'),
('147852369', 'Marina', 'marina99', 'Martínez Sánchez', 'marina@email.com', 147852369, 'marina123', 'Me considero una persona creativa y me apasiona la pintura y el dibujo. Disfruto creando obras de arte en lienzo y papel, y siempre estoy buscando nuevas técnicas y estilos artísticos.'),
('369147852', 'Manuel', 'manuel22', 'Rodríguez Pérez', 'manuel@email.com', 369147852, 'manuelcontraseña', 'Apasionado por el mundo de la tecnología y la informática. Disfruto programando y desarrollando aplicaciones web y móviles. Siempre buscando aprender nuevas habilidades y mejorar mis conocimientos.'),
('258369147', 'Cristina', 'cristina11', 'Pérez Martínez', 'cristina@email.com', 258369147, 'cristina123', 'Soy una amante de la naturaleza y los animales. Disfruto haciendo senderismo, acampando y observando la fauna y la flora. Siempre buscando nuevas aventuras en la naturaleza.'),
('123698745', 'Óscar', 'oscar33', 'Martínez Rodríguez', 'oscar@email.com', 123698745, 'oscarcontraseña', 'Me apasiona el mundo de la fotografía y la videografía. Disfruto capturando momentos especiales y creando videos creativos. Siempre buscando nuevas técnicas y equipos para mejorar mi trabajo.'),
('987654321', 'Elena', 'elena00', 'Gómez Fernández', 'elena@email.com', 987654321, 'elena123', 'Entusiasta de los viajes y la aventura. Disfruto explorando nuevos destinos y sumergiéndome en diferentes culturas. Siempre en busca de nuevas experiencias que amplíen mi perspectiva del mundo.'),
('852963741', 'Jorge', 'jorge55', 'Hernández Martínez', 'jorge@email.com', 852963741, 'jorgecontraseña', 'Amante de la música y la guitarra. Disfruto tocando la guitarra eléctrica y componiendo mis propias canciones. Siempre buscando nuevos sonidos que inspiren mi creatividad.'),
('369852147', 'Nerea', 'nerea22', 'Sánchez Gómez', 'nerea@email.com', 369852147, 'nereacontraseña', 'Me considero una persona curiosa y siempre estoy buscando aprender algo nuevo. Disfruto leyendo libros de diferentes géneros y explorando nuevos temas de interés.'),
('159753258', 'Víctor', 'victor99', 'Martínez Pérez', 'victor@email.com', 159753258, 'victorcontraseña', 'Apasionado por el mundo de la tecnología y la informática. Me encanta programar y desarrollar aplicaciones web y móviles. Siempre buscando aprender nuevas tecnologías y mejorar mis habilidades.'),
('123456987', 'Lorena', 'lorena77', 'Rodríguez López', 'lorena@email.com', 123456987, 'lorenacontraseña', 'Soy una amante de la naturaleza y los animales. Disfruto haciendo senderismo, acampando y observando la fauna y la flora. Siempre en busca de nuevas aventuras en la naturaleza.'),
('852963741', 'Héctor', 'hector22', 'Gómez Rodríguez', 'hector@email.com', 852963741, 'hectorcontraseña', 'Apasionado por los deportes y el fitness. Disfruto entrenando en el gimnasio y participando en competiciones de levantamiento de pesas. Siempre buscando superar mis límites y alcanzar nuevos objetivos.'),
('369852147', 'Inés', 'ines33', 'Pérez Martínez', 'ines@email.com', 369852147, 'inescontraseña', 'Me considero una persona creativa y me apasiona el diseño gráfico. Disfruto creando ilustraciones y diseños digitales en mi tiempo libre, y siempre estoy buscando nuevas técnicas y tendencias en el mundo del diseño.'),
('159753258', 'Diego', 'diego00', 'Martínez Sánchez', 'diego@email.com', 159753258, 'diego123', 'Entusiasta del deporte y el fitness. Me encanta entrenar en el gimnasio y participar en competiciones de culturismo. Siempre buscando nuevas rutinas de entrenamiento y formas de mejorar mi condición física.'),
('123456987', 'Lucía', 'lucia22', 'Rodríguez Pérez', 'lucia@email.com', 123456987, 'lucia123', 'Amante de la naturaleza y el aire libre. Disfruto haciendo senderismo, acampando y explorando parques naturales. Siempre en busca de nuevas aventuras en la naturaleza.'),
('852963741', 'Marcos', 'marcos33', 'Gómez Martínez', 'marcos@email.com', 852963741, 'marcos123', 'Apasionado por la música y la guitarra. Disfruto tocando la guitarra eléctrica y componiendo mis propias canciones. Siempre buscando nuevos sonidos que inspiren mi creatividad.'),
('369852147', 'Alicia', 'alicia00', 'Pérez Rodríguez', 'alicia@email.com', 369852147, 'aliciacontraseña', 'Me considero una persona curiosa y siempre estoy buscando aprender algo nuevo. Disfruto leyendo libros de diferentes géneros y explorando nuevos temas de interés.'),
('987654321', 'Laura', 'laura00', 'Pérez Rodríguez', 'laura@email.com', 987654321, 'lauracontraseña', 'Soy una aficionada de la fotografía y me encanta capturar momentos especiales. Disfruto explorando nuevas técnicas y estilos fotográficos.'),
('456123789', 'Carlos', 'carlos99', 'González Sánchez', 'carlos@email.com', 456123789, 'carloscontraseña', 'Apasionado del mundo del deporte, especialmente del fútbol y el baloncesto. Disfruto jugando con amigos y viendo partidos en vivo.'),
('321654987', 'Elena', 'elena11', 'Martínez Fernández', 'elena@email.com', 321654987, 'elenacontraseña', 'Me encanta viajar y descubrir nuevas culturas. Disfruto probando la comida local y explorando lugares históricos.'),
('987321654', 'Miguel', 'miguel77', 'Gómez López', 'miguel@email.com', 987321654, 'miguelcontraseña', 'Apasionado por la música y la guitarra. Disfruto tocando diferentes estilos musicales y componiendo mis propias canciones.'),
('123456780', 'Gabriel', 'gabi', 'Hernández Pérez', 'gabriel@example.com', 123456780, 'gabi123', 'Soy Gabriel y disfruto del arte y la pintura.'),
('987654320', 'Silvia', 'silvi', 'Rojas Martínez', 'silvia@example.com', 987654320, 'silvi456', '¡Hola! Soy Silvia y me encanta la lectura y los libros de ciencia ficción.'),
('456789120', 'Martín', 'martin12', 'Díaz López', 'martin@example.com', 456789120, 'martin789', 'Me llamo Martín y disfruto del baloncesto y los deportes en equipo.'),
('789123450', 'Carolina', 'caro', 'Herrera Rodríguez', 'carolina@example.com', 789123450, 'caro123', 'Soy Carolina y disfruto del senderismo y la naturaleza.'),
('654321980', 'Ricardo', 'ricardito', 'Ortega Martínez', 'ricardo@example.com', 654321980, 'ricardo456', '¡Hola a todos! Soy Ricardo y me apasiona la música y tocar la guitarra.'),
('321654970', 'Luciana', 'luli', 'Castro Sánchez', 'luciana@example.com', 321654970, 'luli789', 'Me llamo Luciana y disfruto del cine y las películas de drama.'),
('147258360', 'Felipe', 'felipito', 'Gutierrez Rodríguez', 'felipe@example.com', 147258360, 'felipe123', 'Soy Felipe y disfruto del surf y los deportes acuáticos.'),
('369258140', 'Valentina', 'vale', 'Reyes Martínez', 'valentina@example.com', 369258140, 'vale456', '¡Hola! Soy Valentina y me encanta la fotografía y capturar momentos.'),
('258369140', 'Héctor', 'hectorcito', 'Torres López', 'hector@example.com', 258369140, 'hector789', 'Me llamo Héctor y disfruto del teatro y las obras clásicas.'),
('963852740', 'Estefanía', 'estefi', 'Morales Rodríguez', 'estefania@example.com', 963852740, 'estefi123', 'Soy Estefanía y disfruto del patinaje y los deportes extremos.'),
('741852960', 'Fernando', 'fer', 'Santos Pérez', 'fernando@example.com', 741852960, 'fer456', '¡Hola a todos! Soy Fernando y me apasiona la cocina y la gastronomía.'),
('852963740', 'Valeria', 'vale90', 'Flores Martínez', 'valeria@example.com', 852963740, 'vale789', 'Me llamo Valeria y disfruto del cine y las películas de terror.'),
('369147250', 'Rodrigo', 'rodrigo', 'Vargas López', 'rodrigo@example.com', 369147250, 'rodrigo123', 'Soy Rodrigo y disfruto del yoga y la meditación.'),
('258147360', 'Paulina', 'pauli', 'Ramos Rodríguez', 'paulina@example.com', 258147360, 'pauli456', '¡Hola! Soy Paulina y me encanta el tenis y los deportes de raqueta.'),
('147369250', 'Leonardo', 'leo', 'Chávez Martínez', 'leonardo@example.com', 147369250, 'leo789', 'Me llamo Leonardo y disfruto del cine y las películas de acción.'),
('963741850', 'Camila', 'camila', 'Ramírez López', 'camila@example.com', 963741850, 'camila123', 'Soy Camila y disfruto del fitness y el entrenamiento personal.'),
('741963860', 'Tomás', 'tomy', 'Gómez Rodríguez', 'tomas@example.com', 741963860, 'tomy456', '¡Hola a todos! Soy Tomás y me apasiona el fútbol y los deportes en equipo.'),
('852741970', 'Antonella', 'anto', 'Hernández Sánchez', 'antonella@example.com', 852741970, 'anto789', 'Me llamo Antonella y disfruto del diseño gráfico y la creatividad.'),
('369741250', 'Gonzalo', 'gonza', 'Torres Martínez', 'gonzalo@example.com', 369741250, 'gonza123', 'Soy Gonzalo y disfruto del ciclismo y las rutas en bicicleta.'),
('258963140', 'Agustina', 'agus', 'Cabrera Rodríguez', 'agustina@example.com', 258963140, 'agus456', '¡Hola! Soy Agustina y me encanta el arte y la pintura.'),
('147852360', 'Matías', 'mati', 'Pérez López', 'matias@example.com', 147852360, 'mati789', 'Me llamo Matías y disfruto del cine y las películas de comedia.'),
('963258740', 'Josefina', 'jose', 'Díaz Martínez', 'josefina@example.com', 963258740, 'jose123', 'Soy Josefina y disfruto del yoga y la meditación.'),
('741258960', 'Bautista', 'bauti', 'Reyes Rodríguez', 'bautista@example.com', 741258960, 'bauti456', '¡Hola a todos! Soy Bautista y me apasiona la música y tocar la batería.'),
('852369140', 'Martina', 'martu', 'Gómez López', 'martina@example.com', 852369140, 'martu789', 'Me llamo Martina y disfruto del cine y las películas de aventura.'),
('369852140', 'Matías', 'matt', 'Santos Martínez', 'matias2@example.com', 369852140, 'matt123', 'Soy Matías y disfruto del diseño gráfico y la creatividad.'),
('258741360', 'Trinidad', 'trini', 'Vargas Rodríguez', 'trinidad@example.com', 258741360, 'trini456', '¡Hola! Soy Trinidad y me encanta el teatro y las obras clásicas.'),
('147963850', 'Benjamín', 'benja', 'Ramírez Sánchez', 'benjamin@example.com', 147963850, 'benja789', 'Me llamo Benjamín y disfruto del fitness y el entrenamiento personal.'),
('963147580', 'Juana', 'juanita', 'Hernández Martínez', 'juana@example.com', 963147580, 'juanita123', 'Soy Juana y disfruto del baloncesto y los deportes en equipo.'),
('741369850', 'Isabella', 'isa', 'García López', 'isabella@example.com', 741369850, 'isa456', '¡Hola a todos! Soy Isabella y me apasiona la fotografía y capturar momentos.'),
('852147360', 'Lautaro', 'lauti', 'Torres Rodríguez', 'lautaro@example.com', 852147360, 'lauti789', 'Me llamo Lautaro y disfruto del cine y las películas de terror.'),
('369963850', 'Valentina', 'vale', 'Pérez Martínez', 'valentina2@example.com', 369963850, 'vale123', 'Soy Valentina y disfruto del patinaje y los deportes extremos.'),
('258369580', 'Nicolás', 'nico', 'Sánchez López', 'nicolas@example.com', 258369580, 'nico456', '¡Hola! Soy Nicolás y me encanta la lectura y los libros de ciencia ficción.'),
('147852740', 'Luna', 'lunita', 'Martínez Rodríguez', 'luna@example.com', 147852740, 'lunita789', 'Me llamo Luna y disfruto del surf y los deportes acuáticos.'),
('963741580', 'Mariano', 'marian', 'Díaz López', 'mariano@example.com', 963741580, 'marian123', 'Soy Mariano y disfruto del cine y las películas de drama.'),
('741963850', 'Catalina', 'cata', 'González Rodríguez', 'catalina@example.com', 741963850, 'cata456', '¡Hola a todos! Soy Catalina y me apasiona la música y tocar la guitarra.'),
('852369740', 'Santino', 'santi', 'Flores López', 'santino@example.com', 852369740, 'santi789', 'Me llamo Santino y disfruto del senderismo y la naturaleza.'),
('369741580', 'Renata', 'reni', 'Chávez Martínez', 'renata@example.com', 369741580, 'reni123', 'Soy Renata y disfruto del tenis y los deportes de raqueta.'),
('258963740', 'Tomás', 'tom', 'Rojas Rodríguez', 'tomas2@example.com', 258963740, 'tom456', '¡Hola! Soy Tomás y me encanta el cine y las películas de acción.'),
('147852960', 'Isabella', 'isa', 'Gómez López', 'isabella2@example.com', 147852960, 'isa789', 'Me llamo Isabella y disfruto del fútbol y los deportes en equipo.'),
('963741580', 'Máximo', 'maxi', 'Torres Martínez', 'maximo@example.com', 963741580, 'maxi123', 'Soy Máximo y disfruto del diseño gráfico y la creatividad.'),
('741852960', 'Lucía', 'luci', 'Vargas Rodríguez', 'lucia@example.com', 741852960, 'luci456', '¡Hola a todos! Soy Lucía y me apasiona el cine y las películas de aventura.'),
('852963740', 'Juan Pablo', 'juanpi', 'Ramírez Sánchez', 'juanpablo@example.com', 852963740, 'juanpi789', 'Me llamo Juan Pablo y disfruto del fitness y el entrenamiento personal.'),
('369147580', 'Martina', 'marti', 'Hernández Martínez', 'martina2@example.com', 369147580, 'marti123', 'Soy Martina y disfruto del baloncesto y los deportes en equipo.'),
('258147360', 'Luciano', 'lucho', 'García López', 'luciano@example.com', 258147360, 'lucho456', '¡Hola! Soy Luciano y me encanta la fotografía y capturar momentos.'),
('147369850', 'Valentino', 'tino', 'Torres Rodríguez', 'valentino@example.com', 147369850, 'tino789', 'Me llamo Valentino y disfruto del cine y las películas de terror.'),
('963258140', 'Sofía', 'sofi', 'Pérez Martínez', 'sofia2@example.com', 963258140, 'sofi123', 'Soy Sofía y disfruto del patinaje y los deportes extremos.');



ALTER TABLE Clientes AUTO_INCREMENT = 1;
-- Primero insertar los id_admins
INSERT INTO Clientes (id_cliente, id_usuario) VALUES
(1,1), (2,2), (3,3), (4,4), (5,5), (6,6), (7,7), (8,8), (9,9), (10,10),
(11,11), (12,12), (13,13), (14,14), (15,15), (16,16), (17,17), (18,18), (19,19), (20,20),
(21,21), (22,22), (23,23), (24,24), (25,25), (26,26), (27,27), (28,28), (29,29), (30,30),
(31,31), (32,32), (33,33), (34,34), (35,35), (36,36), (37,37), (38,38), (39,39), (40,40),
(41,41), (42,42), (43,43);

ALTER TABLE Guias AUTO_INCREMENT = 1;
-- Primero insertar los id_admins
INSERT INTO Guias (id_guia,id_usuario, idioma) VALUES
(1,44,'Ingles'), 
(2,45,'Frances'), 
(3,46,'Español'), 
(4,47,'Aleman'),
(5,48,'Italiano'),
(6,49,'Chino'),
(7,50,'Portugués'),
(8,51,'Japonés'),
(9,52,'Ruso'),
(10,53,'Árabe'),
(11,54,'Coreano'),
(12,55,'Holandés'),
(13,56,'Sueco'),
(14,57,'Noruego'),
(15,58,'Danés'),
(16,59,'Finlandés'),
(17,60,'Húngaro'),
(18,61,'Polaco'),
(19,62,'Turco'),
(20,63,'Griego'),
(21,64,'Hebreo'),
(22,65,'Hindi'),
(23,66,'Tailandés'),
(24,67,'Vietnamita'),
(25,68,'Malayo'),
(26,69,'Indonesio'),
(27,70,'Filipino'),
(28,71,'Bengalí'),
(29,72,'Persa'),
(30,73,'Ucraniano'),
(31,74,'Checo'),
(32,75,'Eslovaco'),
(33,76,'Croata'),
(34,77,'Serbio'),
(35,78,'Búlgaro'),
(36,79,'Rumano'),
(37,80,'Letón'),
(38,81,'Lituano'),
(39,82,'Estonio'),
(40,83,'Armenio'),
(41,84,'Georgiano'),
(42,85,'Albanés'),
(43,86,'Macedonio'),
(44,87,'Español');

-- Primero insertar los id_admins
INSERT INTO Admins (id_admin, id_usuario) VALUES
(1,88), (2,89), (3,90);

ALTER TABLE Usuario_roles;
INSERT INTO usuario_roles (id_rol, id_usuario) VALUES
(1,88), (1,89), (1,90);

-- Meter a todos los guias con el rol 2
INSERT INTO usuario_roles (id_rol, id_usuario) VALUES
(2, 44), (2, 45),(2, 46),(2, 47),(2, 48),(2, 49),(2, 50),(2, 51),(2, 52),(2, 53),(2, 54),(2, 55),(2, 56),(2, 57),(2, 58),(2, 59),
(2, 60),(2, 61),(2, 62),(2, 63),(2, 64),(2, 65),(2, 66),(2, 67),(2, 68),(2, 69),(2, 71),(2, 72),(2, 73),(2, 74),(2, 75),(2, 76),
(2, 77),(2, 78),(2, 79),(2, 80),(2, 81),(2, 82),(2, 83),(2, 84),(2, 85),(2, 86),(2, 87);

-- Meter a todos los clientes con el rol 3
INSERT INTO usuario_roles (id_rol, id_usuario)
VALUES
(3, 1),(3, 2),(3, 3),(3, 4),(3, 5),(3, 6),(3, 7),(3, 8),(3, 9),(3, 10),(3, 11),(3, 12),(3, 13),(3, 14),(3, 15),(3, 16),(3, 17),(3, 18),
(3, 19),(3, 20),(3, 21),(3, 22),(3, 23),(3, 24),(3, 25),(3, 26),(3, 27),(3, 28),(3, 29),(3, 30),(3, 31),(3, 32),(3, 33),(3, 34),(3, 35),
(3, 36),(3, 37),(3, 38),(3, 39),(3, 40),(3, 41),(3, 42),(3, 43);


ALTER TABLE Post_blog AUTO_INCREMENT = 1;
INSERT INTO Post_blog (id_admin, titulo, parrafo1, contenido1, parrafo2, contenido2, parrafo3, contenido3, parrafo4, contenido4, autor, fecha_publi, descripcion, minutos_lectura) VALUES 
(1, 'Encanto de Venecia', 
    'Descubre los canales y la historia de Venecia.',
    'Explora los canales de Venecia en una góndola tradicional, visita la Basílica de San Marcos y admira las obras maestras de la Galería de la Academia. No te pierdas un paseo por el Puente de Rialto y una visita al Palacio Ducal. ¡Venecia te cautivará con su belleza única!',
    'Disfruta de la gastronomía veneciana y sus encantadores rincones.',
    'Venecia es famosa por sus delicias culinarias, desde los cicchetti en los bares locales hasta los platos de pescado fresco en los restaurantes junto al Gran Canal. Explora los barrios menos conocidos como Cannaregio y Dorsoduro, donde encontrarás auténticas trattorias y tiendas de artesanía local. No te pierdas un paseo al atardecer por los callejones estrechos y los puentes pintorescos.',
    'Descubre las islas cercanas y sus tesoros ocultos.',
    'Venecia está rodeada de islas fascinantes que merecen ser exploradas. Toma un vaporetto hacia las islas de Murano y Burano, famosas por sus vidrieras y encajes. Visita también la isla de Torcello, donde encontrarás antiguas iglesias y ruinas romanas. No te pierdas la oportunidad de degustar el vino local y los productos artesanales en las tabernas de la laguna.',
    NULL, NULL,
    'Admin 1', '2024-05-11', 'Explora la ciudad de los canales', 12),
(2, 'Maravillas de Florencia', 
    'Explora el arte y la historia de Florencia.',
    'Visita la Galería Uffizi para ver las obras maestras del Renacimiento, admira la cúpula de la Catedral de Santa María del Fiore y pasea por los Jardines de Boboli. No te pierdas un paseo por el Ponte Vecchio y una visita al Palazzo Pitti. ¡Florencia te sorprenderá con su belleza y su legado artístico!',
    'Descubre los secretos mejor guardados de la ciudad.',
    'Florencia es una ciudad llena de rincones encantadores y curiosidades históricas. Explora el barrio de Oltrarno, donde encontrarás talleres de artesanos y trattorias auténticas. Visita la iglesia de Santa Croce y el Mercato Centrale para experimentar la vida cotidiana de la ciudad. No te pierdas una degustación de vinos toscanos y una cena en una trattoria familiar.',
    'Disfruta de la naturaleza y la tranquilidad de los alrededores.',
    'Florencia está rodeada de paisajes impresionantes y pueblos medievales que merecen ser descubiertos. Toma un tren hacia la campiña toscana y visita las ciudades de Siena y San Gimignano. Explora las colinas de Chianti y degusta el vino y el aceite de oliva local en una bodega familiar. No te pierdas la oportunidad de hacer una caminata por los Apeninos y disfrutar de las vistas panorámicas.',
    NULL, NULL,
    'Admin 2', '2024-05-12', 'Explora la cuna del Renacimiento', 14),
(3, 'Secretos de Praga', 
    'Descubre la magia y el misterio de Praga.',
    'Pasea por el Puente de Carlos, visita el Castillo de Praga y explora el barrio judío. No te pierdas la oportunidad de subir a la Torre de la Pólvora y disfrutar de las vistas panorámicas de la ciudad. ¡Praga te fascinará con su encanto medieval!',
    'Explora los rincones menos conocidos de la ciudad.',
    'Praga esconde numerosos secretos y curiosidades históricas que merecen ser descubiertos. Explora el barrio de Malá Strana, donde encontrarás iglesias barrocas y palacios renacentistas. Visita el barrio de Vyšehrad y el cementerio judío para conocer la historia y la cultura de la ciudad. No te pierdas una visita al Museo del Comunismo y una cena en un restaurante tradicional checo.',
    'Disfruta de la música y la vida nocturna de la ciudad.',
    'Praga es famosa por su vibrante escena musical y su vida nocturna animada. Disfruta de un concierto de música clásica en la Sala Smetana o de un espectáculo de ópera en el Teatro Nacional. Explora los bares y clubes del barrio de Zizkov y del centro histórico, donde encontrarás música en vivo y DJs internacionales. No te pierdas la oportunidad de probar la cerveza checa en una taberna local y de bailar hasta altas horas de la madrugada.',
    NULL, NULL,
    'Admin 3', '2024-05-13', 'Descubre la ciudad dorada', 13),
(1, 'Encantos de Sevilla', 
    'Descubre la historia y la cultura de Sevilla.',
    'Visita la Catedral de Sevilla, pasea por el Barrio de Santa Cruz y admira los Reales Alcázares. No te pierdas la oportunidad de subir a la Giralda y disfrutar de las vistas panorámicas de la ciudad. ¡Sevilla te conquistará con su belleza y su pasión!',
    'Explora los barrios más auténticos y sus tradiciones.',
    'Sevilla es una ciudad llena de tradiciones y costumbres que merecen ser descubiertas. Explora el barrio de Triana, donde encontrarás talleres de cerámica y bares de flamenco. Visita el Mercado de la Encarnación y el Mercado de Triana para disfrutar de productos locales y artesanía. No te pierdas una visita al Barrio de los Remedios y una degustación de tapas en un bar típico.',
    'Disfruta del arte y la arquitectura de la ciudad.',
    'Sevilla es una ciudad rica en arte y arquitectura, con una gran variedad de monumentos y museos para visitar. Explora el Real Alcázar, un palacio de estilo mudéjar con hermosos jardines y patios. Visita la Plaza de España y el Parque de María Luisa para disfrutar de la arquitectura neomudéjar y pasear por sus amplios jardines. No te pierdas una visita al Museo de Bellas Artes y una tarde de compras en la calle Sierpes.',
    NULL, NULL,
    'Admin 1', '2024-05-14', 'Descubre la ciudad de la Giralda', 11),
(2, 'Maravillas de Praga', 
    'Explora la belleza y el encanto de Praga.',
    'Pasea por el Puente de Carlos, visita el Castillo de Praga y admira el Reloj Astronómico en la Plaza del Casco Antiguo. No te pierdas una visita al barrio judío y una cena en un restaurante típico checo. ¡Praga te cautivará con su atmósfera medieval!',
    'Descubre los rincones más pintorescos y los secretos mejor guardados de la ciudad.',
    'Praga es una ciudad llena de rincones encantadores y curiosidades históricas. Explora el barrio de Malá Strana, donde encontrarás palacios barrocos y callejones adoquinados. Visita el barrio de Žižkov y la colina de Petřín para disfrutar de las vistas panorámicas de la ciudad. No te pierdas una visita al Museo Franz Kafka y una cata de cerveza en una taberna local.',
    'Disfruta de la música y la vida nocturna de Praga.',
    'Praga es famosa por su vibrante escena musical y su vida nocturna animada. Disfruta de un concierto de música clásica en el Rudolfinum o de un espectáculo de jazz en el club U Malého Glena. Explora los bares y clubes del barrio de Vinohrady y del centro histórico, donde encontrarás música en vivo y DJs internacionales. No te pierdas la oportunidad de probar la absenta checa en un bar temático y de bailar hasta altas horas de la madrugada.',
    NULL, NULL,
    'Admin 2', '2024-05-15', 'Descubre la ciudad dorada de Europa Central', 12),
(3, 'Encanto de Budapest', 
    'Descubre la belleza y la historia de Budapest.',
    'Pasea por el Puente de las Cadenas, visita el Palacio Real y relájate en los baños termales. No te pierdas una visita a la Basílica de San Esteban y una cena en un restaurante típico húngaro. ¡Budapest te sorprenderá con su arquitectura y su cultura únicas!',
    'Explora los barrios más auténticos y los rincones menos conocidos de la ciudad.',
    'Budapest es una ciudad llena de contrastes y rincones pintorescos que merecen ser descubiertos. Explora el barrio judío, donde encontrarás sinagogas históricas y ruinas medievales. Visita el distrito de Castle Hill y el barrio de Buda para disfrutar de las vistas panorámicas del Danubio y la ciudad. No te pierdas una visita al Mercado Central y una cata de vinos en una bodega local.',
    'Disfruta de la gastronomía y la vida nocturna de Budapest.',
    'Budapest es famosa por su cocina tradicional húngara y su animada vida nocturna. Prueba platos típicos como el goulash y el lángos en un restaurante local y luego dirígete a un bar de ruina en el distrito de Pest para disfrutar de música en vivo y cócteles creativos. Explora los bares y clubes del barrio de Erzsébetváros y del centro histórico, donde encontrarás fiestas hasta altas horas de la madrugada. No te pierdas la oportunidad de relajarte en uno de los baños termales de la ciudad y disfrutar de las vistas del Danubio.',
    NULL, NULL,
    'Admin 3', '2024-05-16', 'Explora la Perla del Danubio', 13),
(1, 'Maravillas de Estambul', 
    'Descubre la historia y la cultura de Estambul.',
    'Visita la Mezquita Azul, pasea por el Gran Bazar y admira el Palacio de Topkapi. No te pierdas una visita al Bósforo y una cena en un restaurante típico turco. ¡Estambul te fascinará con su mezcla única de Oriente y Occidente!',
    'Explora los barrios más auténticos y los rincones menos conocidos de la ciudad.',
    'Estambul es una ciudad llena de contrastes y sorpresas que merecen ser descubiertas. Explora el barrio de Sultanahmet, donde encontrarás callejones adoquinados y palacios otomanos. Visita el distrito de Beyoğlu y la Torre Gálata para disfrutar de las vistas panorámicas del Bósforo y la ciudad. No te pierdas una visita al Mercado de las Especias y un paseo en ferry por el Cuerno de Oro.',
    'Disfruta de la gastronomía y la vida nocturna de Estambul.',
    'Estambul es famosa por su cocina tradicional turca y su animada vida nocturna. Prueba platos típicos como el kebab y el baklava en un restaurante local y luego dirígete a un café histórico en el distrito de Kadıköy para disfrutar de música en vivo y dulces turcos. Explora los bares y clubes del barrio de Karaköy y del centro histórico, donde encontrarás fiestas hasta altas horas de la madrugada. No te pierdas la oportunidad de relajarte en un hammam tradicional y disfrutar de un baño turco con vistas al Bósforo.',
    NULL, NULL,
    'Admin 1', '2024-05-17', 'Explora la ciudad entre dos continentes', 14);
    
   

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
(4, 1, 'Tour de tapas por el Barrio Gótico', 2, '2024-06-15', 12, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1),
(5, 2, 'Recorrido por el Madrid de los Austrias', 3, '2024-06-20', 15, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0),
(6, 2, 'Visita al Museo del Prado y el Parque del Retiro', 3.5, '2024-06-20', 20, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1),
(7, 2, 'Tour en Segway por los principales monumentos', 4, '2024-06-20', 25, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1),
(8, 2, 'Ruta de compras por el Barrio de Salamanca', 2.5, '2024-06-20', 12, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0);



-- Itinerarios para París
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(9, 3, 'Visita a la Torre Eiffel y el Museo del Louvre', 3, '2024-07-01', 15, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0),
(10, 3, 'Paseo en barco por el río Sena al atardecer', 3.5, '2024-07-01', 20, 0, 1, 1, 0, 0, 0, 0, 0, 10, 1),
(11, 3, 'Cata de vinos y quesos en una bodega parisina', 4, '2024-07-01', 25, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0),
(12, 3, 'Espectáculo de cabaret en el Moulin Rouge', 2.5, '2024-07-01', 12, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0);

-- Itinerarios para Roma
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(13, 4, 'Tour por el Coliseo y el Foro Romano', 3, '2024-07-05', 15, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0),
(14, 4, 'Visita al Vaticano y la Capilla Sixtina', 3.5, '2024-07-05', 20, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1),
(15, 4, 'Paseo en Vespa por las calles de Roma', 4, '2024-07-05', 25, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1),
(16, 4, 'Degustación de pasta fresca en una trattoria romana', 2.5, '2024-07-05', 12, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0);

-- Itinerarios para Berlín
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(17, 5, 'Recorrido por el Muro de Berlín y la Puerta de Brandeburgo', 3, '2024-08-18', 15, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1),
(18, 5, 'Visita al Museo de la DDR y el Checkpoint Charlie', 3.5, '2024-08-18', 20, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1),
(19, 5, 'Paseo en bicicleta por los parques de Berlín', 4, '2024-08-18', 25, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(20, 5, 'Tour de cerveza artesanal por los bares de Berlín', 2.5, '2024-07-05', 12, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1);

-- Itinerarios para Lisboa
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(21, 6, 'Recorrido por el Barrio de Alfama y el Castillo de San Jorge', 3, '2024-08-22', 15, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(22, 6, 'Visita al Monasterio de los Jerónimos y la Torre de Belém', 3.5, '2024-08-22', 20, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1),
(23, 6, 'Paseo en tranvía por las colinas de Lisboa', 4, '2024-08-22', 25, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1),
(24, 6, 'Cata de vinos portugueses en una bodega de Lisboa', 2.5, '2024-08-22', 12, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1);

-- Itinerarios para Tokio
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(25, 7, 'Recorrido por el Templo Senso-ji y el barrio de Asakusa', 3, '2024-09-15', 15, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(26, 7, 'Visita al barrio de Harajuku y el Santuario Meiji', 3.5, '2024-09-15', 20, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1),
(27, 7, 'Paseo en barco por la bahía de Tokio al atardecer', 4, '2024-09-15', 25, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(28, 7, 'Cena en un restaurante con estrellas Michelin en Roppongi', 2.5, '2024-09-15', 12, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1);

-- Itinerarios para Moscú
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(29, 8, 'Recorrido por la Plaza Roja y el Kremlin', 3, '2024-09-03', 15, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1),
(30, 8, 'Visita al Museo Estatal de Historia y la Catedral de San Basilio', 3.5, '2024-09-03', 20, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1),
(31, 8, 'Paseo en barco por el río Moscova', 4, '2024-09-03', 25, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(32, 8, 'Tour nocturno por los teatros y la vida cultural de Moscú', 2.5, '2024-09-03', 12, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1);

-- Itinerarios para Atenas
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(33, 9, 'Recorrido por la Acrópolis y el Partenón', 3, '2024-06-01', 15, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0),
(34, 9, 'Visita al Museo Arqueológico Nacional y el Ágora Antigua', 3.5, '2024-06-01', 20, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1),
(35, 9, 'Paseo en bicicleta por la costa de Atenas', 4, '2024-06-01', 25, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1),
(36, 9, 'Cata de vinos griegos en una taberna tradicional', 2.5, '2024-07-05', 12, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1);

-- Itinerarios para Buenos Aires
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(37, 10, 'Recorrido por la Casa Rosada y el barrio de San Telmo', 3, '2024-08-30', 15, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1),
(38, 10, 'Visita al Teatro Colón y la Avenida 9 de Julio', 3.5, '2024-08-30', 20, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1),
(39, 10, 'Paseo en barco por el Río de la Plata al atardecer', 4, '2024-08-30', 25, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(40, 10, 'Cena con espectáculo de tango en un restaurante tradicional', 2.5, '2024-08-30', 12, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1);

-- Itinerarios para Monterrey
INSERT INTO Itinerarios (id_guia, id_ciudad, descripcion, duracion, fecha_disponible, plazas_max, monte, playa, cultura, gastronomia, enologico, ecologico, nocturno, relajacion, rural, local) VALUES 
(41, 11, 'Recorrido por el Paseo Santa Lucía y el Barrio Antiguo', 3, '2024-09-07', 15, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0),
(42, 11, 'Visita al Museo de Historia Mexicana y el Mirador Asta Bandera', 3.5, '2024-09-07', 20, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0),
(43, 11, 'Paseo en teleférico por el Cerro de la Silla', 4, '2024-09-07', 25, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(44, 11, 'Cena en un restaurante con vista panorámica de la ciudad', 2.5, '2024-09-07', 12, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1);


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
