CREATE DATABASE MarioPizza;
/*Pizza table oprettes
*/
CREATE TABLE pizza (
    pizzaID int not null primary key,
    pizzaName varchar(255) not null,
    ingredients varchar(255) not null,
    price int not null
);

/*Sådan sættes pizzaerne ind i pizza table
*/
INSERT INTO pizza (pizzaID, pizzaName, ingredients, price)
values ( 1, "Vesuvio", "Tomatsauce, ost, skinke, oregano", 57);

/* Ordre costumer table oprettes
*/
CREATE TABLE customer(
    cusID int not null auto_increment primary key,
    cusName varchar(255) not null, 
    cusPhone int default null
);

/* ordre table oprettes
*/
CREATE TABLE ordre (
    pizzaID int not null,
    cusID int not null,
    cusName varchar (255) not null,
    total int not null,
    pickuptime timestamp not null
);

/*ordre table og pizza table join
*/

SELECT 
pizza.pizzaID, pizza.price, 
customer.cusID, customer.cusName, 
ordre.pizzaID, ordre.total, ordre.cusID, ordre.cusName
FROM 
pizza, customer, ordre
WHERE pizza.pizzaID = ordre.pizzaID AND pizza.price = ordre.total
AND customer.cusID = ordre.cusID AND customer.cusName = ordre.cusName;



