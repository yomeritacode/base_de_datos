DESCRIBE clientes;
DESCRIBE productos;
DESCRIBE proveedores;
DESCRIBE compras;
SHOW tables;
INSERT INTO clientes
VALUES('DOVA801117MY2','Gabriela','Dominguez','Huexotitla 53','1980-11-17');
INSERT INTO clientes
VALUES('RADA150408HDF','Alan','Rasgado','Huexotiltla 53','2015-04-08');
INSERT INTO proveedores
VALUES('DOVA8011MY3','Saori','Las Antenas');
INSERT INTO productos
VALUES(null,'Gel para cabello',25,'DOVA8011MY3');
SELECT *
FROM productos;
INSERT INTO productos
VALUES(null,'Pasta dental',30,null);



