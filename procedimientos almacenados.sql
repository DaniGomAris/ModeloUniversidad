-- procedimientos almacenados 3
-- estudiante
delimiter $$
create procedure pr_insertar_docente(
in documento_ int,
in nombre_ varchar(225),
in apellido_ varchar(225),
in tipo_contrato_ varchar(100),
out Profesores_insertados_ tinyint 
)
begin
insert into docente (documento, nombre, apellido, tipo_contrato) 
values (documento_,nombre_,apellido_,tipo_contrato_);
set Profesores_insertados_ := row_count();
end;

create procedure pr_eliminar_docente(
    in documento_ int,
    out profesores_eliminados_ tinyint
)
begin
    delete from modelo_universidad.docente 
    where documento = documento_;

    set profesores_eliminados_ := row_count();
end $$


create procedure pr_insertar_estudiante(
in documento_ int,
in nombre_ varchar(225),
in apellido_ varchar(225),
in id_carrera_ int,
in estado_  VARCHAR(10),
in semestre_ int ,
in crecditos_cursados_ int,
out estudiantes_modificados_ tinyint
)
begin 
insert into estudiante (documento, nombre, apellido, id_carrera, estado, semestre, creditos_cursados) 
values (documento_, nombre_, apellido_, id_carrera_, estado_, semestre_, crecditos_cursados_);
set estudiantes_modificados_ := row_count();
end;

create procedure pr_eliminar_estudiante(
    in documento_ int,
    out estudiantes_eliminados_ tinyint
)
begin 
    delete from modelo_universidad.estudiante 
    where documento = documento_;

    set estudiantes_eliminados_ := row_count();
end $$

create procedure pr_insertar_carrera(
in id_ int,
in nombre_ varchar(225),
out carreras_insertadas tinyint
)
begin
insert into modelo_universidad.carrera (id, nombre)
values (id_,nombre_);
set carreras_insertadas := row_count();
end;


create procedure pr_insertar_materia(
in id_ int,
in nombre_ varchar(225),
in creditos_ int,
out materias_insertadas tinyint
)
begin
insert into modelo_universidad.materia(id, nombre, creditos) 
values (id_, nombre_, creditos_);
set materias_insertadas := row_count();
end;
$$
delimiter ;

drop procedure pr_insertar_docente;
drop Procedure pr_insertar_estudiante;
drop procedure pr_eliminar_estudiante;
drop procedure pr_eliminar_docente; 
drop  procedure pr_insertar_carrera;
drop procedure pr_insertar_materia;


call pr_insertar_docente(50000, 'Pedro', 'luis','indefinido',@r1);
call  pr_insertar_estudiante( 10001,'pepe','rodrigo',1,'antiguo',6,42,@r1);
call  pr_eliminar_docente(50000,@r1);
call  pr_eliminar_estudiante (10001,@r1);
call pr_insertar_carrera(5,"Gastronomia",@r1);
call pr_insertar_materia(1,'geoestadistica',7,@r1);

