-- create table products
CREATE TABLE products (
    id uuid NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(255),
    size varchar(255) NOT NULL,
    price varchar(255) NOT NULL,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

-- create table users
CREATE TABLE users (
    id int,
    name varchar(255),
    email varchar(255),
    password varchar(255),
    user_id varchar(255),
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
)

-- create table admin
CREATE TABLE admin (
    id int,
    name varchar(255),
    email varchar(255),
    password varchar(255),
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
)

-- create table categories
CREATE TABLE categories (
    id int,
    name varchar(255),
    slug varchar(255),
    display_pic blob, 
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
)





-- INSERT INTO table1 
-- (field1, field2) 
-- VALUES (value1, value2);

-- insert into products
insert into products 
(id, name, description, size, price, SKU) 
values (1, 'Nike', 'Shoe of Life', 'medium', 5000, '65232w44'),
values (2, 'Puma', 'Good Shoe', 'Small', 8000, '64383847u7'),

-- insert into users
insert into users 
(id, name, email, password, user_id) 
values (1, 'Ann Gift', 'ann@gmail.com', 234)

-- insert into admin
insert into admin 
(id, name, password, email) 
values (1, 'Gabriel Jesus', 'tetsf3gge', 'gab@gmail.com')

-- insert into categories
insert into categories 
(id, name, slug, display_pic) 
values (1, 'Men Shoes', 'men-shoes', 'placeholder.png')


--  get entities
select * from products

-- update a product
update products 
set name = 'Addidas'
where id = 2

-- delete a product
delete from products
where id = 2

