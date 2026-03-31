# 📊 Análisis de Consultas SQL


## 📈 Resumen
✅ 22 correctas de 24 queries

## ✅ Query 1: Correcto

⏱ Tiempo: 0.33 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 2: Correcto

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 3: Correcto

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ✅ Query 4: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 5: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,4 @@
-nom del producte | euros | dòlars
+nom del producte | euros | dolars
 Disco duro SATA3 1TB | 86.99 | 95.69
 Memoria RAM DDR4 8GB | 120.00 | 132.00
 Disco SSD 1 TB | 150.99 | 166.09
```

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 6: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 7: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 8: Correcto

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 9: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 10: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 11: Correcto

⏱ Tiempo: 0.28 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 12: Correcto

⏱ Tiempo: 0.30 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

---

## ✅ Query 13: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 14: Correcto

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 15: Correcto

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 16: Correcto

⏱ Tiempo: 0.28 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ✅ Query 17: Correcto

⏱ Tiempo: 0.33 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ✅ Query 18: Correcto

⏱ Tiempo: 0.34 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 19: Correcto

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 20: Correcto

⏱ Tiempo: 0.35 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

---

## ✅ Query 21: Correcto

⏱ Tiempo: 0.35 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ✅ Query 22: Correcto

⏱ Tiempo: 0.39 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ✅ Query 23: Correcto

⏱ Tiempo: 0.38 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 24: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,100 @@
-nombre | precio | fabricant
+nombre | precio | fabricante
+Impresora HP Laserjet Pro M26nw | 180.00 | Asus
+Impresora HP Deskjet 3720 | 59.99 | Asus
+Portátil Ideapd 320 | 444.00 | Asus
+Portátil Yoga 520 | 559.00 | Asus
+Monitor 27 LED Full HD | 245.99 | Asus
+Monitor 24 LED Full HD | 202.00 | Asus
+GeForce GTX 1080 Xtreme | 755.00 | Asus
+GeForce GTX 1050Ti | 185.00 | Asus
+Disco SSD 1 TB | 150.99 | Asus
+Memoria RAM DDR4 8GB | 120.00 | Asus
+Disco duro SATA3 1TB | 86.99 | Asus
+Impresora HP Laserjet Pro M26nw | 180.00 | Lenovo
+Impresora HP Deskjet 3720 | 59.99 | Lenovo
+Portátil Ideapd 320 | 444.00 | Lenovo
+Portátil Yoga 520 | 559.00 | Lenovo
+Monitor 27 LED Full HD | 245.99 | Lenovo
+Monitor 24 LED Full HD | 202.00 | Lenovo
+GeForce GTX 1080 Xtreme | 755.00 | Lenovo
+GeForce GTX 1050Ti | 185.00 | Lenovo
+Disco SSD 1 TB | 150.99 | Lenovo
+Memoria RAM DDR4 8GB | 120.00 | Lenovo
+Disco duro SATA3 1TB | 86.99 | Lenovo
+Impresora HP Laserjet Pro M26nw | 180.00 | Hewlett-Packard
 Impresora HP Deskjet 3720 | 59.99 | Hewlett-Packard
+Portátil Ideapd 320 | 444.00 | Hewlett-Packard
+Portátil Yoga 520 | 559.00 | Hewlett-Packard
+Monitor 27 LED Full HD | 245.99 | Hewlett-Packard
+Monitor 24 LED Full HD | 202.00 | Hewlett-Packard
+GeForce GTX 1080 Xtreme | 755.00 | Hewlett-Packard
+GeForce GTX 1050Ti | 185.00 | Hewlett-Packard
+Disco SSD 1 TB | 150.99 | Hewlett-Packard
+Memoria RAM DDR4 8GB | 120.00 | Hewlett-Packard
+Disco duro SATA3 1TB | 86.99 | Hewlett-Packard
+Impresora HP Laserjet Pro M26nw | 180.00 | Samsung
+Impresora HP Deskjet 3720 | 59.99 | Samsung
+Portátil Ideapd 320 | 444.00 | Samsung
+Portátil Yoga 520 | 559.00 | Samsung
+Monitor 27 LED Full HD | 245.99 | Samsung
+Monitor 24 LED Full HD | 202.00 | Samsung
+GeForce GTX 1080 Xtreme | 755.00 | Samsung
+GeForce GTX 1050Ti | 185.00 | Samsung
+Disco SSD 1 TB | 150.99 | Samsung
+Memoria RAM DDR4 8GB | 120.00 | Samsung
+Disco duro SATA3 1TB | 86.99 | Samsung
+Impresora HP Laserjet Pro M26nw | 180.00 | Seagate
+Impresora HP Deskjet 3720 | 59.99 | Seagate
+Portátil Ideapd 320 | 444.00 | Seagate
+Portátil Yoga 520 | 559.00 | Seagate
+Monitor 27 LED Full HD | 245.99 | Seagate
+Monitor 24 LED Full HD | 202.00 | Seagate
+GeForce GTX 1080 Xtreme | 755.00 | Seagate
+GeForce GTX 1050Ti | 185.00 | Seagate
+Disco SSD 1 TB | 150.99 | Seagate
+Memoria RAM DDR4 8GB | 120.00 | Seagate
+Disco duro SATA3 1TB | 86.99 | Seagate
+Impresora HP Laserjet Pro M26nw | 180.00 | Crucial
+Impresora HP Deskjet 3720 | 59.99 | Crucial
+Portátil Ideapd 320 | 444.00 | Crucial
+Portátil Yoga 520 | 559.00 | Crucial
+Monitor 27 LED Full HD | 245.99 | Crucial
+Monitor 24 LED Full HD | 202.00 | Crucial
+GeForce GTX 1080 Xtreme | 755.00 | Crucial
+GeForce GTX 1050Ti | 185.00 | Crucial
+Disco SSD 1 TB | 150.99 | Crucial
+Memoria RAM DDR4 8GB | 120.00 | Crucial
+Disco duro SATA3 1TB | 86.99 | Crucial
+Impresora HP Laserjet Pro M26nw | 180.00 | Gigabyte
+Impresora HP Deskjet 3720 | 59.99 | Gigabyte
+Portátil Ideapd 320 | 444.00 | Gigabyte
+Portátil Yoga 520 | 559.00 | Gigabyte
+Monitor 27 LED Full HD | 245.99 | Gigabyte
+Monitor 24 LED Full HD | 202.00 | Gigabyte
+GeForce GTX 1080 Xtreme | 755.00 | Gigabyte
+GeForce GTX 1050Ti | 185.00 | Gigabyte
+Disco SSD 1 TB | 150.99 | Gigabyte
+Memoria RAM DDR4 8GB | 120.00 | Gigabyte
+Disco duro SATA3 1TB | 86.99 | Gigabyte
+Impresora HP Laserjet Pro M26nw | 180.00 | Huawei
+Impresora HP Deskjet 3720 | 59.99 | Huawei
+Portátil Ideapd 320 | 444.00 | Huawei
+Portátil Yoga 520 | 559.00 | Huawei
+Monitor 27 LED Full HD | 245.99 | Huawei
+Monitor 24 LED Full HD | 202.00 | Huawei
+GeForce GTX 1080 Xtreme | 755.00 | Huawei
+GeForce GTX 1050Ti | 185.00 | Huawei
+Disco SSD 1 TB | 150.99 | Huawei
+Memoria RAM DDR4 8GB | 120.00 | Huawei
+Disco duro SATA3 1TB | 86.99 | Huawei
+Impresora HP Laserjet Pro M26nw | 180.00 | Xiaomi
+Impresora HP Deskjet 3720 | 59.99 | Xiaomi
+Portátil Ideapd 320 | 444.00 | Xiaomi
+Portátil Yoga 520 | 559.00 | Xiaomi
+Monitor 27 LED Full HD | 245.99 | Xiaomi
+Monitor 24 LED Full HD | 202.00 | Xiaomi
+GeForce GTX 1080 Xtreme | 755.00 | Xiaomi
+GeForce GTX 1050Ti | 185.00 | Xiaomi
+Disco SSD 1 TB | 150.99 | Xiaomi
+Memoria RAM DDR4 8GB | 120.00 | Xiaomi
+Disco duro SATA3 1TB | 86.99 | Xiaomi
```

⏱ Tiempo: 0.39 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
🚨 `JOIN` sin índice. Revisar claves foráneas e índices.

---
