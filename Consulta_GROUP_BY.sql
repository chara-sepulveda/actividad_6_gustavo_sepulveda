SELECT NAME,
YEAR(fecha) AS 'año',
MONTH(fecha) AS 'mes'
 FROM species_animals
 GROUP BY año, mes




