use modelo_universidad;

-- 1
drop function if exists fn_ver_creditos_cursados;

delimiter $$

create function fn_ver_creditos_cursados(p_documento_estudiante int)
returns int
deterministic
begin
    declare v_creditos int;
    
    select sum(materia.creditos) 
    into v_creditos
    from estudiante_x_curso
    join curso on estudiante_x_curso.id_curso = curso.id_curso
    join materia on curso.id_materia = materia.id
    where estudiante_x_curso.documentos_estudiante = p_documento_estudiante;

    return v_creditos;
end $$

delimiter ; 

select documento,
	concat(nombre, ' ', apellido) as full_name,
        fn_ver_creditos_cursados(documento) as creditos_que_cursa
from estudiante;



-- 2
drop function if exists fn_cantidad_estudiantes_por_materia;

delimiter $$

create function fn_cantidad_estudiantes_por_materia(p_id_materia int)
returns int
deterministic
begin
    declare v_num_estudiantes int;
    
    select count(*) into v_num_estudiantes
    from modelo_universidad.estudiante_x_curso
    inner join modelo_universidad.curso on estudiante_x_curso.id_curso = curso.id_curso
    where curso.id_materia = p_id_materia;
    
    return v_num_estudiantes;
end $$

delimiter ;

select id,
	nombre,
	fn_cantidad_estudiantes_por_materia(id) as cantidad_estudiantes
from materia;



-- 3
drop function if exists fn_tipo_contrato_docente;


delimiter $$


create function fn_tipo_contrato_docente(p_documento_docente int)
returns varchar(100)
deterministic
begin
    declare v_tipo_contrato varchar(100);
    
    select tipo_contrato into v_tipo_contrato
    from modelo_universidad.docente
    where documento = p_documento_docente;
    
    return v_tipo_contrato;
end $$

delimiter ;

select documento,
	concat(nombre, ' ', apellido) as full_name,
	fn_tipo_contrato_docente(documento) as tipo_contrato
from docente;
