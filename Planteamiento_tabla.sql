-- crear tablas que vamos a usar

create schema if not exists modelo_universidad;
-- drop modelo_universidad;

-- Crear la tabla carrera
create table modelo_universidad.carrera (
    id int primary key not null,
    nombre varchar(255) not null
);

-- Crear la tabla estudiante
create table modelo_universidad.estudiante(
    documento int primary key not null,
    nombre varchar(250) not null,
    apellido varchar(250) not null,
    id_carrera int not null,
    estado enum('nuevo','antiguo') not null,
    semestre int not null,
    creditos_cursados int not null,
    foreign key (id_carrera) references modelo_universidad.carrera(id)
);

-- Crear la tabla docentes
create table modelo_universidad.docente (
    documento int primary key not null,
    nombre varchar(255) not null,
    apellido varchar(225) not null,
    tipo_contrato varchar(100) not null
);

-- Crear la tabla materias
create table modelo_universidad.materia(
    id int primary key not null,
    nombre varchar(225) not null,
    creditos int not null
);

-- Crear la tabla cursos
create table modelo_universidad.curso (
    id_curso int primary key not null,
    id_carrera int not null,
    id_materia int not null,
    documento_docente int not null,
    capacidad int not null,
    activo boolean not null,
    foreign key (id_carrera) references modelo_universidad.carrera(id),
    foreign key (id_materia) references modelo_universidad.materia(id),
    foreign key (documento_docente) references modelo_universidad.docente(documento)
);

-- Crear la tabla de asociación estudiante_x_cursos
create table modelo_universidad.estudiante_x_curso (
    documentos_estudiante int not null,
    id_curso int not null,
    foreign key (documentos_estudiante) references modelo_universidad.estudiante(documento),
    foreign key (id_curso) references modelo_universidad.curso(id_curso)
);
-- crear la tabla modelo_universidad.Carrera_x_cursos
create table modelo_universidad.Carrera_x_curso(
	id_carrera int not null,
	id_curso int not null,
	foreign key (id_carrera) references Carrera(id),
	foreign key (id_curso) references modelo_universidad.Curso(id_curso)
);


-- Insertar datos en carrera
insert into modelo_universidad.carrera (id, nombre) values
(1, 'Ingeniería de Sistemas'),
(2, 'Administración de Empresas'),
(3, 'Derecho'),
(4, 'Medicina');

-- Insertar datos en estudiante
insert into modelo_universidad.estudiante (documento, nombre, apellido, id_carrera, estado, semestre, creditos_cursados) values
(1001, 'Ana', 'Gómez', 1, 'nuevo', 1, 0),
(1002, 'Pedro', 'Rivera', 1, 'antiguo', 5, 30),
(1003, 'Luis', 'Martínez', 2, 'antiguo', 6 , 60),
(1004, 'Jorge', 'Hernández', 2, 'nuevo', 1, 0),
(1005, 'María', 'Fernández', 3, 'antiguo', 2, 20),
(1006,'juana','Rosa',3,'nuevo',1,0),
(1007, 'Carlos', 'López', 4, 'antiguo', 3, 45),
(1008, 'Laura', 'Mendoza', 4, 'nuevo', 1, 0); 

-- Insertar datos en docente
insert into modelo_universidad.docente (documento, nombre, apellido, tipo_contrato) values
(2001, 'Laura', 'Pérez', 'Tiempo Completo'),
(2002, 'José', 'García', 'Medio Tiempo'),
(2003, 'Marta', 'Rodríguez', 'Catedrático'),
(2004, 'Pedro', 'Sánchez', 'Catedrático');

-- Insertar datos en materia
insert into modelo_universidad.materia(id, nombre, creditos) values
(3001, 'Matemáticas', 4),
(3002, 'Programación', 3),
(3003, 'Derecho Civil', 5),
(3004, 'Anatomía', 6),
(3005, 'Física', 4),
(3006, 'Economía', 3),
(3007, 'Historia de la moneda', 5),
(3008, 'Biología Celular', 6);

-- Insertar datos en curso
insert into modelo_universidad.curso (id_curso, id_carrera, id_materia, documento_docente, capacidad, activo) values
(4001, 1, 3001, 2001, 30, true),
(4002, 1, 3002, 2002, 25, true),
(4003, 3, 3003, 2003, 20, true),
(4004, 4, 3004, 2004, 15, false),
(4005,1, 3001, 2002, 20, false),
(4006,2, 3006, 2002, 15, true),
(4007,2, 3007, 2003, 15, true),
(4008,4, 3004, 2004, 15, True);

-- Insertar datos en estudiante_x_curso
insert into modelo_universidad.estudiante_x_curso (documentos_estudiante, id_curso) values
(1001, 4001),
(1002, 4002),
(1003, 4003),
(1004, 4004),
(1005,4005),
(1006,4006),
(1007,4007),
(1008,4008);

-- Insertar datos en carrera_x_curso
insert into modelo_universidad.carrera_x_curso (id_carrera, id_curso) values
(1, 4001),
(1, 4002),
(3, 4003),
(4, 4004),
(1,4005),
(2,4006),
(2,4007),
(4,4008);

select * from estudiante_x_curso;

drop table modelo_universidad.estudiante_x_curso;
drop table modelo_universidad.Carrera_x_curso;
drop table modelo_universidad.Curso;
drop table modelo_universidad.Estudiante;
drop table modelo_universidad.Carrera;
drop table modelo_universidad.Docente;
drop table modelo_universidad.Materia;

show tables from modelo_universidad;
