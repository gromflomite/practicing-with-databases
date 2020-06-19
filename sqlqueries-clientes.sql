USE clientes;

/* 
 * Listado con nombre completo del trabajador, empresa en la que trabaja y
 * sector productivo, ordenado por la inicial del apellido y limitado a 100 resultados. 
 *
 *  INNER JOIN implícito
 */

SELECT 
	edo.nombre		AS "Nombre del empleado",
	edo.apellidos AS "Apellidos del empleado",
	esa.nombre 		AS "Empresa donde trabaja",
	sec.nombre		AS "Sector productivo"
FROM 
	empleados		AS edo,
	empresas		AS esa,
	sectores		AS sec
WHERE 
	edo.id_empresa 	= esa.id
AND 
	esa.id_sector	= sec.id
ORDER BY edo.apellidos ASC 
LIMIT 100;

/* ------------------------------------------------------------------------*/

/* Listado de empresas y sector productivo al que pertenecen, ordenado por la inicial
 * del nombre de la empresa y limitado a 100 resultados.
 * 
 * INNER JOIN implícito
 */

SELECT 
	esa.nombre	AS "Nombre de la empresa",
	esa.cif 	  AS "CIF de la empresa",
	sec.nombre	AS "Sector productivo"
FROM
	empresas 	AS esa,
	sectores	AS sec
WHERE
	esa.id_sector = sec.id
ORDER BY esa.nombre ASC 
LIMIT 100;
/* ------------------------------------------------------------------------*/
