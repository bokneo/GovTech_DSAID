CREATE TABLE car(
    salesperson VARCHAR(128) NOT NULL UNIQUE,
    manufacturers VARCHAR(128) NOT NULL,
    modelname VARCHAR(255) NOT NULL,
    serialnumber VARCHAR(255) NOT NULL,
    weight NUMERIC(12,2) NOT NULL,
    price NUMERIC(12,2) NOT NULL,
    PRIMARY KEY (serialnumber, manufacturers)
);

CREATE TABLE transaction(
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(255),
    customer_phone VARCHAR(255),
    salesperson VARCHAR(128),
    manufacturers VARCHAR(128) NOT NULL,
    serialnumber VARCHAR(255) NOT NULL,
    date_sold DATE,
    time_sold TIMESTAMP,
    FOREIGN KEY(serialnumber, manufacturers) REFERENCES car(serialnumber, manufacturers)
);