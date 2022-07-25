CREATE TABLE Car(
  car_id SERIAL,
  sales_date DATE,
  car_condition VARCHAR(4),
  car_cost NUMERIC(10,2),
  PRIMARY KEY (car_id)
);

CREATE TABLE Customer(
  customer_id SERIAL,
  customer_name VARCHAR(50),
  PRIMARY KEY (customer_id)
);

CREATE TABLE Parts(
  parts_id SERIAL,
  parts_cost NUMERIC(10,2),
  part_description VARCHAR(100),
  PRIMARY KEY (parts_id)
);

CREATE TABLE Salesperson(
  salesperson_id SERIAL,
  salesperson_name VARCHAR(50),
  email VARCHAR(50),
  PRIMARY KEY (salesperson_id)
);

CREATE TABLE Mechanic(
  mechanic_id SERIAL,
  mechanic_name VARCHAR(50),
  PRIMARY KEY (mechanic_id)
);

CREATE TABLE Invoice(
  invoice_id SERIAL,
  car_id INTEGER,
  salesperson_id INTEGER,
  customer_id INTEGER,
  total_cost NUMERIC(10,2),
  PRIMARY KEY (invoice_id),
  FOREIGN KEY (salesperson_id) REFERENCES Salesperson(salesperson_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (car_id) REFERENCES Car(car_id)
);

CREATE TABLE Service_Ticket(
  service_id SERIAL,
  service_type VARCHAR(100),
  service_cost NUMERIC(8,2),
  car_id INTEGER,
  mechanic_id INTEGER,
  parts_id INTEGER,
  service_date DATE,
  customer_id INTEGER,
  PRIMARY KEY (service_id),
  FOREIGN KEY (car_id) REFERENCES Car(car_id),
  FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id),
  FOREIGN KEY (parts_id) REFERENCES Parts(parts_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);