# Autores:
* Liana Diaz.
* Daniel Gomez.
* David Lopez.

# Problema: Modelo de Datos para Gestor de Base de Datos de Universidad
La Universidad X lleva registros de sus operaciones de forma manual, y todos los datos que maneja están en archivos de Excel. 
Este método les funciona porque hay poca afluencia de estudiantes, pero en los últimos años la cantidad de estudiantes 
que ha ingresado a la universidad ha sido considerablemente alta, haciendo que los métodos para guardar la información y 
llevar registro sobre esta hayan quedado obsoletos, ocasionando un gran problema a los administrativos.

Para solucionar este problema, los administrativos han decidido contratar un grupo de desarrolladores que tienen la tarea de crear una pequeña 
aplicación que ayude a mejorar la situación planteada anteriormente, implementando un gestor de información usando el lenguaje de base de datos SQL. 
Dentro de las funcionalidades que el programa debe tener, se incluyen las siguientes:

### Estudiantes:
* *Insertar Nuevo Estudiante* : Permitir la adición de nuevos estudiantes a la base de datos.
* *Eliminar Estudiantes* : Posibilidad de eliminar estudiantes del sistema.
* *Asignarle carrera* : Inscribir al estudiante en la carrera que este desee.

### Docentes:
* *Ingresar Profesores Nuevos* : Permitir la adición de nuevos profesores a la base de datos.
* *Etiquetar Profesores* : Clasificar a los profesores según su tipo de contrato (cátedra, tiempo completo,medio tiempo).

### Carrera:
* *Cantidad de carreras disponibles* : Registrar y gestionar la cantidad de carreras disponibles.
* *Carreras  Abiertos* : Listar y gestionar las carreras que están actualmente abiertos.
* *Carreras  que se Pueden Abrir* : Identificar y gestionar las carreras que no cumplen con los requisitos para estar abiertos.

### Asignaturas / materias:
* *Listado de Asignaturas* : Gestionar un catálogo de todas las asignaturas ofrecidas por la universidad.
* *Asignar creditos a asignaturas * : Establecer La cantidad de creditos que tiene cada asignatura.

### Cursos:

* Cursos disponibles: Ver cuales cursos estan disponibles y cuales no.
* Capasidad maxima para curso: Ver la capacidad de cada curso y definir si el estudiante puede ingresar o no.
* docente de cada curso: Asignar un docente a cada curso.
* ver si esta activo: Manejar y administrar los cursos que estan activos o inactivos.


## Archivos del repositorio 
Este repositorio contiene todos los entregables que se deben realizar siguiendo la rúbrica presentada.

### Diagrama.jpg
Este repositorio contiene el modelo relacional que describe el proceso que se lleva a cabo, cuya función principal es administrar el ingreso 
de los estudiantes y profesores a la universidad X, y la asignación de materias y cursos a cada uno respectivamente.

### Planteamiento_tablas.sql 
Se evidencia la creación de las tablas presentadas en el modelo relacional y su posterior inserción de datos.

### Procedimientos almacenados
1. Insertar docente.
2. Eliminar docente.
3. Insertar estudiante.
4. Eliminar estudiante.
5. Insertar carrera.
6. Insertar materia.

### Funciones
1. Ver los créditos de cada estudiante.
2. Ver la cantidad de estudiantes inscritos en cada materia.
3. Ver el tipo de contrato de cada profesor.

### Reportes 

1. Cantidad de estudiantes por carrera.
2. Promedio de créditos cursados por semestre en general.
3. Cuántos cursos activos tiene cada docente.
4. Cupos sobrantes por cada curso.
5. Nómina de profesores por materia.
6. Porcentaje de estudiantes en cada carrera.
7. Carrera con mayor porcentaje de estudiantes.

 ## Triggers
1. Guardar los profesores que se han retirado de la universidad.
2. Guardar las materias que se han creado.

  
