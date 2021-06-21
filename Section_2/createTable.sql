CREATE TABLE car(
    salesperson VARCHAR(128) NOT NULL,
    manufacturers VARCHAR(128) NOT NULL,
    modelname VARCHAR(128) NOT NULL,
    serialnumber VARCHAR(128) NOT NULL,
    weight NUMERIC(12,2) NOT NULL,
    price NUMERIC(12,2) NOT NULL,
    PRIMARY KEY (salesperson, serialnumber, manufacturers)
);

CREATE TABLE transaction(
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(128),
    customer_phone VARCHAR(128),
    salesperson VARCHAR(128),
    manufacturers VARCHAR(128) NOT NULL,
    serialnumber VARCHAR(128) NOT NULL,
    date_sold TIMESTAMP default NULL,
    FOREIGN KEY(salesperson, serialnumber, manufacturers) REFERENCES car(salesperson, serialnumber, manufacturers)
);