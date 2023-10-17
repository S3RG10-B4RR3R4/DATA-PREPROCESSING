-- Seleccionar todos los registros de INE_DISTRITO_2020
SELECT *
FROM INE_DISTRITO_2020;

-- Seleccionar el nombre de entidades (NOM_ENT) donde PCON_DISC está entre 18500 y 30500
SELECT NOM_ENT
FROM INE_DISTRITO_2020
WHERE PCON_DISC BETWEEN 18500 AND 30500;

-- Actualizar registros donde NOM_ENT es 'Quinatan Roo' a 'Caracolandia'
UPDATE INE_DISTRITO_2020
SET NOM_ENT = 'Caracolandia'
WHERE NOM_ENT = 'Quinatan Roo';

-- Seleccionar todos los registros donde NOM_ENT es 'Caracolandia'
SELECT *
FROM INE_DISTRITO_2020
WHERE NOM_ENT = 'Caracolandia';

-- Seleccionar los nombres de entidades (NOM_ENT) distintos
SELECT DISTINCT NOM_ENT
FROM INE_DISTRITO_2020;

-- Actualizar nombres de entidades que coincidan con patrones específicos
UPDATE INE_DISTRITO_2020
SET NOM_ENT = 'Ciudad de México'
WHERE NOM_ENT LIKE 'Ciudad de M%';

UPDATE INE_DISTRITO_2020
SET NOM_ENT = 'Michoacán de Ocampo'
WHERE NOM_ENT LIKE 'Michoac%';

UPDATE INE_DISTRITO_2020
SET NOM_ENT = 'México'
WHERE NOM_ENT LIKE 'M%xico';

UPDATE INE_DISTRITO_2020
SET NOM_ENT = 'Nuevo León'
WHERE NOM_ENT LIKE 'Nuevo Le%n';

UPDATE INE_DISTRITO_2020
SET NOM_ENT = 'Querétaro'
WHERE NOM_ENT LIKE 'Quer%';

UPDATE INE_DISTRITO_2020
SET NOM_ENT = 'Yucatán'
WHERE NOM_ENT LIKE 'Yucat%n';

UPDATE INE_DISTRITO_2020
SET NOM_ENT = 'San Luis Potosí'
WHERE NOM_ENT LIKE 'San Luis%';

-- Actualizar el valor de COMPLEJIDA a 'Concentración Media' donde COMPLEJIDA contiene 'Concentraci%n Media'
UPDATE INE_DISTRITO_2020
SET COMPLEJIDA = 'Concentración Media'
WHERE COMPLEJIDA LIKE 'Concentraci%n Media';

-- Seleccionar todos los registros de INE_DISTRITO_2020 y ordenarlos por COMPLEJIDA
SELECT *
FROM INE_DISTRITO_2020
ORDER BY COMPLEJIDA;

-- Crear y ejecutar comandos SQL para establecer columnas en 0 antes de las actualizaciones
UPDATE INE_DISTRITO_2020
SET ALT_CON_1 = 0, ALT_CON_2 = 0, CON_MED = 0, CON1 = 0, CON2 = 0, DIS1 = 0, DIS2 = 0, MDIS_1 = 0, MDIS_2 = 0;

-- Actualizar columnas específicas a 1
UPDATE INE_DISTRITO_2020
SET ALT_CON_1 = 1
WHERE COMPLEJIDA = 'Altamente Concentrado 1';

UPDATE INE_DISTRITO_2020
SET ALT_CON_2 = 1
WHERE COMPLEJIDA = 'Altamente Concentrado 2';

UPDATE INE_DISTRITO_2020
SET CON_MED = 1
WHERE COMPLEJIDA = 'Concentración Media';

UPDATE INE_DISTRITO_2020
SET CON1 = 1
WHERE COMPLEJIDA = 'Concentrado 1';

UPDATE INE_DISTRITO_2020
SET CON2 = 1
WHERE COMPLEJIDA = 'Concentrado 2';

UPDATE INE_DISTRITO_2020
SET DIS1 = 1
WHERE COMPLEJIDA = 'Disperso 1';

UPDATE INE_DISTRITO_2020
SET DIS2 = 1
WHERE COMPLEJIDA = 'Disperso 2';

UPDATE INE_DISTRITO_2020
SET MDIS_1 = 1
WHERE COMPLEJIDA = 'Muy Disperso 1';

UPDATE INE_DISTRITO_2020
SET MDIS_2 = 1
WHERE COMPLEJIDA = 'Muy Disperso 2';

-- Seleccionar valores distintos de COMPLEJIDA
SELECT DISTINCT COMPLEJIDA
FROM INE_DISTRITO_2020;






