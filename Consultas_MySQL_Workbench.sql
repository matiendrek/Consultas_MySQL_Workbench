use infotech;

-- 1) ¿Cuál es la sucursal con mayor ganancia neta en 2019?

SELECT v.IdSucursal, SUM(v.Precio * v.Cantidad) - SUM(g.Monto) AS Ganancia, s.Sucursal
FROM Venta v
LEFT JOIN Gasto g ON (v.IdSucursal = g.IdSucursal AND YEAR(v.Fecha) = 2019 AND YEAR(g.Fecha) = 2019)
LEFT JOIN Sucursal s ON (v.IdSucursal = s.IdSucursal)
GROUP BY v.IdSucursal
ORDER BY Ganancia DESC;

