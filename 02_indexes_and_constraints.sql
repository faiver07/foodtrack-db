-- 02_indexes_and_constraints.sql
-- Índices y restricciones adicionales

-- Índices para acelerar búsquedas frecuentes
CREATE INDEX idx_orders_foodtruck ON orders(foodtruck_id);
CREATE INDEX idx_order_items_order ON order_items(order_id);
CREATE INDEX idx_order_items_product ON order_items(product_id);
CREATE INDEX idx_foodtrucks_location ON foodtrucks(location_id);
