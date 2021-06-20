CREATE TABLE salesperson (
    id SERIAL PRIMARY KEY
    first_name VARCHAR(150) NOT NULL,
    last_name VARCHAR(150) NOT NULL,
    password VARCHAR(128) NOT NULL,
    email VARCHAR(254),
    username VARCHAR(150) UNIQUE,
    last_login DATE,
    is_superuser BOOLEAN
    is_staff BOOLEAN
    is_active BOOLEAN
    date_joined DATE
);

CREATE TABLE project(
    id VARCHAR(128) NOT NULL,
    username VARCHAR(128) NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    start DATE NOT NULL,
    end DATE NOT NULL,
    image VARCHAR(100) NOT NULL,
    pledged NUMERIC(12,2) NOT NULL DEFAULT 0,
    amount NUMERIC(12,2) NOT NULL DEFAULT 0,
    created_at TIMESTAMP,
    category VARCHAR(255) NOT NULL DEFAULT 'other',
    PRIMARY KEY (id, username, name)
    FOREIGN KEY(id, username) REFERENCES auth_user(id, username)
);

CREATE TABLE invest(
    id SERIAL PRIMARY KEY,
    project_name VARCHAR(255),
    user VARCHAR(128) REFERENCES users(id),
    amount NUMERIC(12,2) DEFAULT 0,
    ts  TIMESTAMP,
    FOREIGN KEY(project_name) REFERENCES project(project_name)
);