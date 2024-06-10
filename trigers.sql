-- aca vamos a realizar los trigger 

create table docente_history(
	old_documento int primary key not null,
	evente_action varchar(225) not null, 
    old_nombre varchar(255) not null,
	old_apellido varchar(225) not null,
	old_tipo_contrato varchar(100) not null
);

create table materias_history(
	new_id int,
    event_action varchar(225),
    new_nombre varchar(225),
    new_creditos varchar(225)
);
 

delimiter $$
create trigger tr_delete_profesores
after delete on docente
for each row

begin 
insert into docente_history(old_documento,evente_action ,old_nombre ,old_apellido,old_tipo_contrato)
value (old.documento,'Eliminar docente',old.nombre, old.apellido, old.tipo_contrato);
end;
$$
delimiter ; 

delimiter $$
create trigger tr_insert_materias 
after insert on materia
for each row
begin 
insert into materias_history(new_id, event_action, new_nombre, new_creditos)
values (new.id, 'insertar materia' , new.nombre , new.creditos); 
end;
$$
delimiter ; 

drop trigger tr_delete_profesores;
drop trigger tr_insert_materias ;

-- primer trigger
call pr_insertar_docente(50000, 'Pedro', 'luis','indefinido',@r1);
select * from docente;
call  pr_eliminar_docente(50000,@r1);
select * from docente_history;

-- segundo trigger 
call pr_insertar_materia(1,'geoestadistica',7,@r1);
select * from materia;
select * from materias_history;