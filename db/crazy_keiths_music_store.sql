DROP TABLE albums;
DROP TABLE prices;
DROP TABLE artists;


CREATE TABLE artists(
id SERIAL8 primary key,
name VARCHAR(255)
);

CREATE TABLE prices(
id SERIAL8 primary key,
price_sell INT2,
price_buy INT2
);

CREATE TABLE albums(
id SERIAL8 primary key,
name VARCHAR(255),
quantity INT2,
artist_id INT8 references artists,
price_id INT8 references prices
);

