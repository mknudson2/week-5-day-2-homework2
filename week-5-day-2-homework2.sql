--customers 

INSERT INTO customer (
	name,
	billing_addr,
	birthdate,
	email
) VALUES (
	'Kjartan Olafsson',
	'Hjarðarholt, Laxadalr, Ísland',
	'17 september 985',
	'TheRealKjartan@saga.is'
);

INSERT INTO customer (
	name,
	billing_addr,
	birthdate,
	email
) VALUES (
	'Egill Skallagrimsson',
	'Ekkert, Þrœndalǫg, Noregr',
	'23 march 950',
	'e.skallagrims@saga.is'
);


--managers
INSERT INTO manager (
	first_name,
	last_name,
	location_id
) VALUES (
	'Lawrence',
	'Fletcher',
	1
);

INSERT INTO manager (
	first_name,
	last_name,
	location_id
) VALUES (
	'Linda',
	'Flynn',
	2
);

--theater location
INSERT INTO theater_location  (
	location_address ,
	manager_id 
) VALUES (
	'Vergon 6',
	1
);

INSERT INTO theater_location  (
	location_address ,
	manager_id 
) VALUES (
	'Omicron Persei 8',
	2
);

--film offerings
INSERT INTO film_offerings  (
	location_id ,
	movie_id  
) VALUES (
	1,
	1
);

INSERT INTO film_offerings  (
	location_id ,
	movie_id  
) VALUES (
	2,
	2
);

--concessions
INSERT INTO concessions (
	item_name,
	item_price,
	item_qnty 
) VALUES (
	'milk duds',
	2.50,
	20
);

INSERT INTO concessions (
	item_name,
	item_price,
	item_qnty 
) VALUES (
	'jelly beans XL',
	3.00,
	15
);

--movies
INSERT INTO movies  (
	title,
	rating ,
	length_in_min  
) VALUES (
	'Stumbleberry Finkbat',
	'PG-13',
	153
);

INSERT INTO movies  (
	title,
	rating ,
	length_in_min  
) VALUES (
	'The Dream-Quest of Unknown Kadath',
	'R',
	188
);

--tickets
INSERT INTO tickets  (
	movie_id,
	location_id ,
	showing_id 
) VALUES (
	1,
	1,
	1
);

INSERT INTO tickets  (
	movie_id,
	location_id ,
	showing_id 
) VALUES (
	2,
	2,
	2
);

INSERT INTO tickets  (
	movie_id,
	location_id ,
	showing_id 
) VALUES (
	2,
	1,
	2
);

INSERT INTO tickets  (
	movie_id,
	location_id ,
	showing_id 
) VALUES (
	1,
	2,
	1
);

--online cart
INSERT INTO online_cart  (
	customer_id ,
	ticket_id ,
	ticket_qnty  
) VALUES (
	1,
	2,
	3
);

INSERT INTO online_cart  (
	customer_id ,
	ticket_id ,
	ticket_qnty  
) VALUES (
	2,
	3,
	4
);

--online order
INSERT INTO online_order (
	online_cart_id ,
	total_price  
) VALUES (
	1,
	25.58 --calculated USING Utah's 6.6% sales tax
);

INSERT INTO online_order (
	online_cart_id ,
	total_price  
) VALUES (
	4,
	51.17 --calculated USING Utah's 6.6% sales tax
);


--showings
INSERT INTO showings (
	time_of_day ,
	ticket_price  
) VALUES (
	'matinee',
	8.00
);

INSERT INTO showings (
	time_of_day ,
	ticket_price  
) VALUES (
	'evening',
	12.00
);


--employees
INSERT INTO employee_list (
	first_name ,
	last_name,
	location_id ,
	address 
) VALUES (
	'Zapp',
	'Brannigan',
	1,
	'Nimbus (BP-1729), New New York'
);

INSERT INTO employee_list (
	first_name ,
	last_name,
	location_id ,
	address 
) VALUES (
	'Grima',
	'Wormtung',
	2,
	'Meduseld, Rohan, Middle Earth'
);


--in-person orders
INSERT INTO in_person_orders  (
	location_id ,
	ticket_id,
	purchase_qnty ,
	total_price  
) VALUES (
	1,
	3,
	2,
	25.58
);

INSERT INTO in_person_orders  (
	location_id ,
	ticket_id,
	purchase_qnty ,
	total_price  
) VALUES (
	2,
	4,
	1,
	8.53
);




