USE profesores;

/* Listado de profesores con su teléfono, correo electrónico, carrera y materia impartida (INNER JOIN implícito) */

SELECT 
	p.id "id_profesor", p.nombre AS "nombre_profesor", p.correo_electronico, t.numero_telefono,
	c.id "id_carrera", c.nombre	 AS "nombre_carrera", 
	m.id "id_materia", m.nombre	 AS "nombre_materia"

FROM 
	profesores p, 
	carreras c, 
	profesor_imparte_materias pim, 
	materias m,
	telefonos t	

WHERE p.id_carrera = c.id AND p.id = pim.id_profesor AND pim.id_materia = m.id AND t.id_profesor = p.id;

/* Listado de profesores y su carrera con INNER JOIN explícito */

SELECT * FROM profesores p INNER JOIN carreras c ON p.id_carrera = c.id;