USE libreria;

/* ----- Mostrar todos los libros del género ciencia-ficción ----- */
SELECT 
	l.nombre							AS "Título",
	CONCAT (a.nombre, ' ',a.apellidos)	AS "Autor",	
	c.nombre							AS "Género literario" 
FROM 	
	libro			AS l,
	autor			AS a,
	categoria		AS c,
	libro_categoria AS lc
WHERE
	l.id_autor = a.id
AND
	l.id = lc.id_libro
AND
	lc.id_categoria = c.id 
AND
	c.id = 2
ORDER BY 
	l.nombre ASC
LIMIT 10;
/* ------------------------------------------------------------------*/


/* --------- Mostrar todos los libros de autores ingleses ---------- */
SELECT
	CONCAT (a.nombre, ' ',a.apellidos)	AS "Autor",	
	l.nombre							AS "Título",	
	n.nombre							AS "Nacionalidad del autor"			
FROM
	libro		 AS l,
	autor 		 AS a,
	nacionalidad AS n
WHERE
	l.id_autor = a.id
AND 
	a.id_nacionalidad = n.id
AND 
	n.id = 3
ORDER BY 
	a.nombre ASC
LIMIT 10;
/* ------------------------------------------------------------------*/
	

/* ---------- Mostrar todos los libros en formato digital ---------- */	
SELECT
	l.nombre							AS "Título",
	CONCAT (a.nombre, ' ',a.apellidos)	AS "Autor",
	f.nombre							AS "Formato"	
FROM 
	libro 	AS l,
	autor 	AS a,
	formato AS f 
WHERE
	l.id_autor = a.id
AND 
	l.id_formato = f.id
AND 
	f.id = 2
ORDER BY 
	l.nombre ASC
LIMIT 10;
/* ------------------------------------------------------------------*/