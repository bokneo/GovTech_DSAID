CREATE TABLE Salesperson(
    id SERIAL PRIMARY KEY,
    last_name VARCHAR(128),
    first_name VARCHAR(128)
);

CREATE TABLE Car(
    serialnumber VARCHAR(128) NOT NULL PRIMARY KEY,
    manufacturers VARCHAR(128) NOT NULL,
    modelname VARCHAR(128) NOT NULL,
    weight NUMERIC(12,2) NOT NULL,
    price NUMERIC(12,2) NOT NULL
);

CREATE TABLE Customer(
    id SERIAL PRIMARY KEY,
    last_name VARCHAR(128),
    first_name VARCHAR(128),
    customer_phone VARCHAR(128),
    date_bought TIMESTAMP default NULL
);


CREATE TABLE Transaction(
    invoice_id SERIAL PRIMARY KEY,
    serialnumber VARCHAR(128) references Car(serialnumber),
    customer_id INTEGER references Customer(id),
    salesperson_id INTEGER,
    FOREIGN KEY(salesperson_id) REFERENCES Salesperson(id)
);

