# Autores:
* Liana Diaz
* Daniel Gomez
* David Lopez

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
* *Asignarle carrera* : Inscribir al estudiante en la carrera que este desee

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

* Cursos disponibles: Ver cuales cursos estan disponibles y cuales no 
* Capasidad maxima para curso: Ver la capacidad de cada curso y definir si el estudiante puede ingresar o no
* docente de cada curso: Asignar un docente a cada curso
* ver si esta activo: manejar y administrar los cursos que estan activos o inactivos


## archivos del repositorio 
Este repositorio contiene todos los entregables que se deben de realizar

### Diagrama.jpg
Este repo contiene el modelo relacional que describe el proceso que estamos llevando acabo, en este caso que es administrar el ingreso 
de los entudiantes y profesores a universidad y la asignacion de materias y cursos a cada uno de estos

### Planteamiento_tablas.sql 
Aca se muestra la creacion de las tablas mostradas en el modelo relacional y su posterior insercion de datos

### Procedimientos almacenados
En esta parte de aca vamos a encontrar todos los procedimiento
1. insertar docente.
2. eliminar docente.
3. insertar estudiante.
4. eliminar estudiante.
5. insertar carrera.
6. insertar materia.

### Funciones
1. Creditos de cada estudiante
2. estufdiantes inscritos en cada curso
3. tipo de contrato de cada profe

### Reportes 

1. cuantos estudiantes hay por carrera
2. Promedio de creditos cursados por semestre en general
3.  Cuantos cursos activos tiene cada docente
4.  Cupos faltanes por curso
5.  Nomina de profesores por materia
6.  Porcentaje de estudiantes que esta en cada carrera
7.  Carrera con mayor cantidad de porcenje de estudiantes

 ## tiggers
1. Tigger que me guarda los profes que han salido de la universidad
2. ntigger que me guarda las materias nuevas que se han creado

  
