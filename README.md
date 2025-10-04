# FoodTrack-DB

Esquema de base de datos para el proyecto **FoodTrack**, que gestiona operaciones de food trucks, productos, pedidos, ubicaciones e ítems, usando SQL Server.

---

## Tabla de contenido

- [Descripción](#descripción)  
- [Modelo de datos](#modelo-de-datos)  
- [Archivos del repositorio](#archivos-del-repositorio)  
- [Instrucciones de uso](#instrucciones-de-uso)  
- [Convenciones y reglas de diseño](#convenciones-y-reglas-de-diseño)  
- [Contribuciones](#contribuciones)  
- [Licencia](#licencia)  

---

## Descripción

FoodTrack-DB contiene el esquema relacional que soporta una aplicación de gestión de food trucks. Permite:

- Registrar food trucks y sus ubicaciones.  
- Registrar productos disponibles.  
- Generar pedidos y gestionar los detalles de cada pedido.  
- Relacionar entidades mediante claves foráneas para mantener la integridad referencial.

El proyecto está pensado para usarse con SQL Server (y administrarse con herramientas como DBeaver).  
El versionamiento del esquema permite mantener control de cambios sobre la estructura de la base de datos.  

---

## Modelo de datos

Las tablas principales son:

- `Foodtruck`  
- `Ubicacion`  
- `Producto`  
- `Pedido`  
- `DetallePedido`  

Cada tabla está relacionada con las demás mediante claves foráneas, por ejemplo:

- Un `Pedido` puede tener múltiples `DetallePedido`.  
- Cada `DetallePedido` referencia un `Producto`.  
- Las ubicaciones están asociadas a food trucks (o entidades que requieran ubicación).  

También hay índices y restricciones definidos para mejorar el rendimiento y garantizar la integridad de los datos.

---

## Archivos del repositorio

| Archivo | Descripción |
|---|---|
| `01_create_schema.sql` | Script inicial para crear las tablas del esquema. |
| `02_indexes_and_constraints.sql` | Script para agregar índices y restricciones (llaves foráneas, claves únicas, etc.). |
| `03_add_comments_to_orders.sql` | Script opcional que agrega comentarios/documentación dentro de la base de datos (por ejemplo, comentarios en columnas o tablas). |

*(Si en el futuro agregas más scripts o versiones, puedes ampliarlo aquí.)*

---

## Instrucciones de uso

1. Clona el repositorio:  
   ```bash
   git clone https://github.com/faiver07/foodtrack-db.git
