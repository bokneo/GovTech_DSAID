CREATE TABLE car(
    id VARCHAR(128) NOT NULL,
    salesperson VARCHAR(128) NOT NULL,
    manufacturers VARCHAR(128) NOT NULL,
    modelname VARCHAR(255) NOT NULL,
    serialnumber VARCHAR(255) NOT NULL,
    weight NUMERIC(12,2) NOT NULL,
    price NUMERIC(12,2) NOT NULL,
    PRIMARY KEY (id, username, name)
    FOREIGN KEY(id, username) REFERENCES auth_user(id, username)
);

CREATE TABLE transaction(
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(255),
    user VARCHAR(128) REFERENCES users(id),
    salesperson VARCHAR(128),
    carcharacteristics TEXT,
    FOREIGN KEY(project_name) REFERENCES project(project_name)
);