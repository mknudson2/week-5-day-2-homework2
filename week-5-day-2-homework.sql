CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	billing_addr VARCHAR(100) NOT NULL,
	birthdate VARCHAR(50), --birthday promos option
	saved_cc INT, --give customers the choice TO save their info FOR faster checkout NEXT time
	email VARCHAR(50)
);

CREATE TABLE manager (
	manager_id SERIAL PRIMARY KEY,
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR (25) NOT NULL,
	location_id INT NOT NULL,
	FOREIGN KEY (location_id) REFERENCES theater_location (location_id)
);

CREATE TABLE theater_location(
	location_id SERIAL PRIMARY KEY,
	location_address VARCHAR(100) NOT NULL,
	manager_id INT NOT NULL
);

CREATE TABLE film_offerings(
	film_offerings_id SERIAL PRIMARY KEY,
	location_id INT NOT NULL,
	movie_id INT NOT NULL,
	FOREIGN KEY (location_id) REFERENCES theater_location(location_id),
	FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE concessions(
	concessions_id SERIAL PRIMARY KEY,
	item_name VARCHAR(50) NOT NULL,
	item_price NUMERIC(4,2) NOT NULL,
	item_qnty INT NOT NULL
);

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR(50),
	rating VARCHAR(10),
	length_in_min INT NOT NULL
);

CREATE TABLE tickets (
	ticket_id SERIAL PRIMARY KEY,
	movie_id INT NOT NULL,
	location_id INT NOT NULL,
	showing_id INT NOT NULL,
	FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
	FOREIGN KEY (location_id) REFERENCES theater_location(location_id),
	FOREIGN KEY (showing_id) REFERENCES showings(showing_id)
	
);

CREATE TABLE online_cart (
	online_cart_id SERIAL PRIMARY KEY,
	customer_id INT NOT NULL,
	ticket_id INT NOT NULL,
	ticket_qnty INT NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
);

CREATE TABLE online_order (
	order_id SERIAL PRIMARY KEY,
	online_cart_id INT NOT NULL,
	total_price NUMERIC(6,2)
);

CREATE TABLE showings(
	showing_id SERIAL PRIMARY KEY,
	time_of_day VARCHAR(20) NOT NULL,
	ticket_price NUMERIC(6,2) NOT NULL
);

CREATE TABLE employee_list(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR (20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
	location_id INT NOT NULL,
	address VARCHAR(50) NOT NULL,
	FOREIGN KEY (location_id) REFERENCES theater_location(location_id)
);

CREATE TABLE in_person_orders(
	in_person_order_id SERIAL PRIMARY KEY,
	location_id INT NOT NULL,
	ticket_id INT NOT NULL,
	purchase_qnty INT NOT NULL,
	total_price NUMERIC(6,2) NOT NULL,
	FOREIGN KEY (location_id) REFERENCES theater_location(location_id),
	FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
);
