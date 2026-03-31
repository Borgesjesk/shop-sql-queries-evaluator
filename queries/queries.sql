-- 1. Lista el nombre de todos los productos que hay en la mesa producto.
SELECT nombre
FROM producto;

-- 2. Lista los nombres y los precios de todos los productos de la mesa producto.
SELECT nombre, precio
FROM producto;

-- 3. Lista todas las columnas de la tabla producto.
SELECT codigo, nombre, precio, codigo_fabricante
FROM producto;

-- 4. Lista el nombre de los productos, el precio en euros y el precio en dólares con tipo de cambio 1€ = 1$.
SELECT nombre,
       precio AS precio_eur,
       precio AS precio_usd
FROM producto;

-- 5. Lista el nombre de los productos, el precio en euros y el precio en dólares (1€ = 1.1$, redondeado a 2 decimales).
SELECT nombre                        AS "nom del producte",
       precio                        AS euros,
       ROUND(precio * 1.1, 2)        AS dòlars
FROM producto;

-- 6. Lista los nombres y los precios de todos los productos, convirtiendo los nombres a mayúscula.
SELECT UPPER(nombre) AS nombre, precio
FROM producto;

-- 7. Lista los nombres y los precios de los productos, convirtiendo los nombres a minúscula.
SELECT LOWER(nombre) AS nombre, precio
FROM producto;

-- 8. Lista el nombre de todos los fabricantes en una columna, y en otra columna los dos primeros caracteres en mayúsculas.
SELECT nombre,
       UPPER(LEFT(nombre, 2)) AS iniciales
FROM fabricante;

-- 9. Lista los nombres y los precios de los productos, redondeando el valor del precio.
SELECT nombre,
       ROUND(precio) AS precio
FROM producto;

-- 10. Lista los nombres y precios de todos los productos, truncando el valor del precio sin cifras decimales.
SELECT nombre,
       TRUNCATE(precio, 0) AS "precio truncado"
FROM producto;

-- 11. Muestra una lista con los códigos de los fabricantes que aparecen en la tabla producto, incluyendo posibles repeticiones.
SELECT codigo_fabricante
FROM producto;

-- 12. Lista el código de los fabricantes que tienen productos en la mesa producto, eliminando los códigos repetidos.
SELECT DISTINCT codigo_fabricante
FROM producto;

-- 13. Lista los nombres de los fabricantes ordenados de forma ascendente.
SELECT nombre
FROM fabricante
ORDER BY nombre ASC;

-- 14. Lista los nombres de los fabricantes ordenados de forma descendente.
SELECT nombre
FROM fabricante
ORDER BY nombre DESC;

-- 15. Lista los nombres y precios de los productos ordenados por nombre ascendente y precio descendente.
SELECT nombre, precio
FROM producto
ORDER BY nombre ASC, precio DESC;

-- 16. Devuelve una lista con las 5 primeras filas de la mesa fabricante.
SELECT *
FROM fabricante
LIMIT 5;

-- 17. Devuelve una lista con 2 filas a partir de la cuarta fila de la mesa fabricante.
SELECT *
FROM fabricante
LIMIT 3, 2;

-- 18. Lista el nombre y el precio del producto más barato.
SELECT nombre, precio
FROM producto
ORDER BY precio ASC
LIMIT 1;

-- 19. Lista el nombre y el precio del producto más caro.
SELECT nombre, precio
FROM producto
ORDER BY precio DESC
LIMIT 1;

-- 20. Lista el nombre de todos los productos del fabricante con código 2.
SELECT nombre
FROM producto
WHERE codigo_fabricante = 2;

-- 21. Devuelve una lista con el nombre del producto, precio y nombre del fabricante de todos los productos.
SELECT p.nombre, p.precio, f.nombre AS "nombre del fabricante"
FROM producto p
         JOIN fabricante f ON p.codigo_fabricante = f.codigo;

-- 22. Lista todos los productos con nombre, precio y nombre del fabricante ordenados alfabéticamente.
SELECT p.nombre, p.precio, f.nombre AS "nombre del fabricante"
FROM producto p
         JOIN fabricante f ON p.codigo_fabricante = f.codigo
ORDER BY f.nombre ASC, p.nombre ASC;

-- 23. Devuelve una lista con el código del producto, nombre del producto, código del fabricante y nombre del fabricante.
SELECT p.codigo, p.nombre, f.codigo AS "codigo fabricante", f.nombre AS "nombre fabricante"
FROM producto p
         JOIN fabricante f ON p.codigo_fabricante = f.codigo;

-- 24. Devuelve el nombre, el precio y el nombre del fabricante del producto más barato.
SELECT p.nombre, p.precio, f.nombre AS fabricant
FROM producto p
         JOIN fabricante f ON p.codigo_fabricante = f.codigo
ORDER BY p.precio ASC
LIMIT 1;

-- 25. Devuelve el nombre del producto, el precio y el nombre del fabricante del producto más caro.
SELECT p.nombre, p.precio, f.nombre AS fabricante
FROM producto p
         JOIN fabricante f ON p.codigo_fabricante = f.codigo
ORDER BY p.precio DESC
LIMIT 1;

-- 26. Devuelve una lista con nombre y precio de todos los productos del fabricante Lenovo.
SELECT p.nombre, p.precio
FROM producto p
         JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre = 'Lenovo';

-- 27. Devuelve una lista con nombre y precio de todos los productos del fabricante Crucial con precio mayor que 200€.
SELECT p.nombre, p.precio
FROM producto p
         JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre = 'Crucial'
  AND p.precio > 200;

-- 28. Devuelve un listado con nombre, precio y nombre del fabricante de los fabricantes Asus, Hewlett-Packard y Seagate. Sin usar IN.
SELECT p.nombre, p.precio, f.nombre AS fabricante
FROM producto p
         JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre = 'Asus'
   OR f.nombre = 'Hewlett-Packard'
   OR f.nombre = 'Seagate';

-- 29. Devuelve un listado con nombre, precio y nombre del fabricante de los fabricantes Asus, Hewlett-Packard y Seagate. Usando IN.
SELECT p.nombre, p.precio, f.nombre AS fabricante
FROM producto p
         JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre IN ('Asus', 'Hewlett-Packard', 'Seagate');

-- 30. Devuelve un listado con nombre, precio y nombre del fabricante donde el nombre del fabricante termine en 'e'.
SELECT p.nombre, p.precio, f.nombre AS fabricante
FROM producto p
         JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre LIKE '%e';

-- 31. Devuelve un listado con nombre, precio y nombre del fabricante para todos los productos cuyos fabricantes contienen la letra 'w'.
SELECT p.nombre, p.precio, f.nombre AS fabricante
FROM producto p
         JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre LIKE '%w%';

-- 32. Devuelve un listado con nombre, precio y nombre del fabricante para productos con precio >= 180€, ordenado por precio descendente y nombre ascendente.
SELECT p.nombre, p.precio, f.nombre AS fabricante
FROM producto p
         JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE p.precio >= 180
ORDER BY p.precio DESC, p.nombre ASC;

-- 33. Devuelve un listado con el código y el nombre del fabricante, solo de aquellos que tienen productos asociados.
SELECT DISTINCT f.codigo, f.nombre
FROM fabricante f
         JOIN producto p ON f.codigo = p.codigo_fabricante;

-- 34. Devuelve un listado de todos los fabricantes con los productos que tiene cada uno. Incluye fabricantes sin productos.
SELECT f.nombre AS fabricante, p.nombre AS producto
FROM fabricante f
         LEFT JOIN producto p ON f.codigo = p.codigo_fabricante;

-- 35. Devuelve un listado donde sólo aparezcan los fabricantes que no tienen ningún producto asociado.
SELECT f.nombre AS fabricante
FROM fabricante f
         LEFT JOIN producto p ON f.codigo = p.codigo_fabricante
WHERE p.codigo IS NULL;

-- 36. Devuelve todos los productos del fabricante Lenovo. Sin usar INNER JOIN.
SELECT p.*
FROM producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo
  AND f.nombre = 'Lenovo';

-- 37. Devuelve todos los datos de los productos que tienen el mismo precio que el producto más caro del fabricante Lenovo. Sin usar INNER JOIN.
SELECT *
FROM producto
WHERE precio = (
    SELECT MAX(p.precio)
    FROM producto p, fabricante f
    WHERE p.codigo_fabricante = f.codigo
      AND f.nombre = 'Lenovo'
);

-- 38. Lista el nombre del producto más caro del fabricante Lenovo.
SELECT p.nombre
FROM producto p
         JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre = 'Lenovo'
ORDER BY p.precio DESC
LIMIT 1;

-- 39. Lista el nombre del producto más barato del fabricante Hewlett-Packard.
SELECT p.nombre
FROM producto p
         JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre = 'Hewlett-Packard'
ORDER BY p.precio ASC
LIMIT 1;

-- 40. Devuelve todos los productos con precio mayor o igual al producto más caro del fabricante Lenovo.
SELECT *
FROM producto p
WHERE p.precio >= (
    SELECT MAX(p2.precio)
    FROM producto p2
             JOIN fabricante f ON p2.codigo_fabricante = f.codigo
    WHERE f.nombre = 'Lenovo'
);

-- 41. Lista todos los productos del fabricante Asus que tienen un precio superior al precio medio de todos sus productos.
SELECT p.*
FROM producto p
         JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre = 'Asus'
  AND p.precio > (
    SELECT AVG(p2.precio)
    FROM producto p2
             JOIN fabricante f2 ON p2.codigo_fabricante = f2.codigo
    WHERE f2.nombre = 'Asus'
);