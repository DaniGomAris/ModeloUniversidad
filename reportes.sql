-- reportes 
-- Reporte numero 1: cuantos estudiantes por carrera hay 

create view Estudiantes_por_carrera as 
select carrera.nombre as carrera, COUNT(estudiante.documento) as num_estudiantes
from estudiante
join carrera on estudiante.id_carrera = carrera.id
group by carrera.nombre;

select * from Estudiantes_por_carrera;

--  reporte numero 2: Promedio de creditos cursados por semestre en general
create view promedio_creditos as 
select semestre, avg(creditos_cursados) as promedio_creditos
from modelo_universidad.estudiante
group by semestre;

select * from promedio_creditos;

-- Reporte 3: Me permite saber cuántos cursos activos tiene cada docente.

create view Cursos_por_profesor as 
select docente.nombre, 
       docente.apellido, 
       count(curso.id_curso) as cursos_activos
from docente
join curso on docente.documento = curso.documento_docente
where curso.activo = true
group by docente.nombre, docente.apellido;

select * from Cursos_por_profesor;

-- reporte 4: me permite saber cuantos cupos falta por llenarse 
create table cupos_faltantes(
id_curso_ int not null,
capacidad_ int not null,
faltante_ int   not null
);

delimiter $$
create procedure cupos_restantes()
begin
SET SQL_SAFE_UPDATES = 0;
DELETE FROM cupos_faltantes; 
insert into cupos_faltantes (id_curso_, capacidad_, faltante_)
select curso.id_curso, curso.capacidad, curso.capacidad - count(estudiante_x_curso.id_curso) as faltante
from curso
left join estudiante_x_curso 
on curso.id_curso = estudiante_x_curso.id_curso
group by curso.id_curso, curso.capacidad;
end
$$
delimiter ;

call cupos_restantes();
select * from cupos_faltantes;

-- Reporte 5:pago a profesores por curso aca suponemos que a los profesores de tiempo completo dar la materia 
-- vale 5000000 al medio tiempo 2500000 y al de catedra vale 1000000 dar la materia


select cursos_por_profesor.nombre, cursos_por_profesor.apellido, cursos_por_profesor.cursos_activos,docente.tipo_contrato,
case docente.tipo_contrato when 'Tiempo Completo' 
then cursos_por_profesor.cursos_activos * 5000000
when 'Medio Tiempo' then cursos_por_profesor.cursos_activos * 2500000
else cursos_por_profesor.cursos_activos * 1000000
end as salario
from cursos_por_profesor 
left join docente on cursos_por_profesor.nombre = docente.nombre;


-- reporte 6 porcentaje de estudiantes que esta en cada carrera 

create view porcentajes as 
select carrera.nombre as carrera,round((count(estudiante.documento)/(select count(*) from estudiante)) * 100, 1) as porcentaje_estudiantes
from modelo_universidad.estudiante
join  modelo_universidad.carrera on estudiante.id_carrera = carrera.id
group by carrera.nombre;

select * from porcentajes;

-- reporte 7 carrera con mayor cantidad de estudianes

select * 
from porcentajes
where porcentaje_estudiantes = (select MAX(porcentaje_estudiantes)from porcentajes
);