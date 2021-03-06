
create database ShoppingDB;
USE ShoppingDB;
CREATE TABLE Account(
	user_mail varchar(100) NOT NULL,
	password varchar(64) NOT NULL,
	account_role int NOT NULL,
	user_name varchar(50) charset utf8MB4 NOT NULL,
	user_address varchar(255) charset utf8MB4 NULL,
	user_phone varchar(10) NULL,
PRIMARY KEY CLUSTERED 
(
	user_mail ASC
));

CREATE TABLE Products(
	product_id int auto_increment NOT NULL,
	product_name varchar(100) charset utf8mb4 NOT NULL,
	product_des varchar(255) charset utf8mb4 NULL,
	product_price float NOT NULL,
	product_img_source varchar(255) NULL,
	product_type varchar(100) NULL,
	product_brand varchar(100) NULL,
PRIMARY KEY CLUSTERED 
(
	product_id ASC
));


CREATE TABLE Orders(
	user_mail varchar(100) NULL,
	order_id int auto_increment NOT NULL,
	order_status int NULL,
	order_date date NOT NULL,
	order_discount_code varchar(8) NULL,
	order_address varchar(255) charset utf8mb4 NOT NULL,
PRIMARY KEY CLUSTERED 
(
	order_id ASC
));

/****** Object:  StoredProcedure GetProductsType    Script Date: 12/04/2019 15:03:36 ******/
DELIMITER $$
create procedure GetProductsType(
u int,
v int,
b varchar(50))
begin
 SELECT p.product_id ,p.product_name, p.product_des, p.product_price, p.product_img_source, p.product_type, p.product_brand 
 FROM ( 
  SELECT *, ROW_NUMBER() OVER (ORDER BY product_id) as row1
  FROM Products p where p.product_type = b
 ) p WHERE (p.row1 >= u) and (p.row1 <= v);
end $$
DELIMITER ;


/****** Object:  StoredProcedure GetProducts    Script Date: 12/04/2019 15:03:36 ******/
DELIMITER $$
create procedure GetProducts (
u int,
v int)
begin
 SELECT p.product_id ,p.product_name, p.product_des, p.product_price, p.product_img_source, p.product_type, p.product_brand 
 FROM ( 
  SELECT *, ROW_NUMBER() OVER (ORDER BY product_id) as row1
  FROM Products p
 ) p 
 WHERE p.row1 >= @u and p.row1 <= v;
end $$
DELIMITER ;

/****** Object:  Table Orders_detail    Script Date: 12/04/2019 15:03:35 ******/

CREATE TABLE Orders_detail(
	order_id int NOT NULL,
	product_id int NOT NULL,
	amount_product int NULL,
	price_product int NULL,
PRIMARY KEY CLUSTERED 
(
	order_id ASC,
	product_id ASC
));
/****** Object:  Default DF__Orders__order_da__1273C1CD    Script Date: 12/04/2019 15:03:35 ******/
ALTER TABLE Orders Alter order_date SET  DEFAULT (current_date());

/****** Object:  ForeignKey FK__Orders_de__order__182C9B23    Script Date: 12/04/2019 15:03:35 ******/
ALTER TABLE Orders_detail ADD FOREIGN KEY(order_id) REFERENCES Orders (order_id);

/****** Object:  ForeignKey FK__Orders_de__produ__1920BF5C    Script Date: 12/04/2019 15:03:35 ******/
ALTER TABLE Orders_detail  ADD FOREIGN KEY(product_id) REFERENCES Products (product_id);

-- adding data to product table
insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone 11 Pro Max 512GB','M??n h??nh: 6.5", Super Retina XDR
H??H: iOS 13
CPU: Apple A13 Bionic 6 nh??n
RAM: 4 GB, ROM: 512 GB
Camera: 3 camera 12 MP, Selfie: 12 MP',43.990,'https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-gold-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone 11 Pro Max 256GB','M??n h??nh: 6.5", Super Retina XDR
H??H: iOS 13
CPU: Apple A13 Bionic 6 nh??n
RAM: 4 GB, ROM: 512 GB
Camera: 3 camera 12 MP, Selfie: 12 MP',37.990,'https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-black-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone Xs Max 256GB','M??n h??nh: 6.5", Super Retina
H??H: iOS 12
CPU: Apple A12 Bionic 6 nh??n
RAM: 4 GB, ROM: 256 GB
Camera: Ch??nh 12 MP & Ph??? 12 MP, Selfie: 7 MP',32.990,'https://cdn.tgdd.vn/Products/Images/42/190322/iphone-xs-max-256gb-white-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone X 256GB','M??n h??nh: 5.8", Super Retina
H??H: iOS 12
CPU: Apple A11 Bionic 6 nh??n
RAM: 3 GB, ROM: 256 GB
Camera: Ch??nh 12 MP & Ph??? 12 MP, Selfie: 7 MP',27.990,'https://cdn.tgdd.vn/Products/Images/42/190324/iphone-xs-256gb-white-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone Xs 64GB','M??n h??nh: 5.8", Super Retina          
H??H: iOS 12
CPU: Apple A12 Bionic 6 nh??n
RAM: 4 GB, ROM: 64 GB
Camera: Ch??nh 12 MP & Ph??? 12 MP, Selfie: 7 MP',24.990,'https://cdn.tgdd.vn/Products/Images/42/190321/iphone-xs-max-gold-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone Xr 128GB','M??n h??nh: 6.1", Liquid Retina
H??H: iOS 12
CPU: Apple A12 Bionic 6 nh??n
RAM: 3 GB, ROM: 128 GB
Camera: 12 MP, Selfie: 7 MP',17.990,'https://cdn.tgdd.vn/Products/Images/42/191483/iphone-xr-128gb-red-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone Xr 128GB','M??n h??nh: 6.1", Liquid Retina
H??H: iOS 12
CPU: Apple A12 Bionic 6 nh??n
RAM: 3 GB, ROM: 128 GB
Camera: 12 MP, Selfie: 7 MP',17.990,'https://cdn.tgdd.vn/Products/Images/42/191483/iphone-xr-128gb-red-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone 8 Plus 64GB','M??n h??nh: 5.5", Retina HD
H??H: iOS 12
CPU: Apple A11 Bionic 6 nh??n
RAM: 3 GB, ROM: 64 GB
Camera: Ch??nh 12 MP & Ph??? 12 MP, Selfie: 7 MP',16.590,'https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-hh-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone 7 Plus 32GB','M??n h??nh: 5.5", Retina HD
H??H: iOS 12
CPU: Apple A10 Fusion 4 nh??n 64-bit
RAM: 3 GB, ROM: 32 GB
Camera: Ch??nh 12 MP & Ph??? 12 MP, Selfie: 7 MP',12.490,'https://cdn.tgdd.vn/Products/Images/42/78124/iphone-7-plus-32gb-gold-600x600.jpg','cellphone',
'apple');

insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone 7 32GB','M??n h??nh: 4.7", Retina HD
H??H: iOS 12
CPU: Apple A10 Fusion 4 nh??n 64-bit
RAM: 2 GB, ROM: 32 GB
Camera: 12 MP, Selfie: 7 MP',10.490,'https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-gold-600x600.jpg','cellphone',
'apple');

-- account table
INSERT Account (user_mail, password, account_role, user_name, user_address, user_phone) 
VALUES ('duongdt@fpt.com.v', '123', 1, '??inh T??ng D????ng', '?????i h???c FPT', '0765870407');
-- customer
INSERT Account (user_mail, password, account_role, user_name, user_address, user_phone) 
VALUES ('duydt@fpt.com.v', '123', 1, 'Dao Trong Duy', '?????i h???c FPT', '1234567');

 select * from Products;
 ALTER TABLE Orders CHANGE COLUMN order_date order_date date NULL;
select * from Orders_detail;
select * from Orders;
delete from Orders_detail;
delete from orders;