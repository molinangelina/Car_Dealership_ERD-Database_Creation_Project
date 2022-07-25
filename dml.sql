INSERT INTO Car(
  sales_date,
  car_condition,
  car_cost
)
VALUES(
    '1959-11-09',
    'new',
    8500.00
),(
    '1969-12-12',
    'new',
    20000.00
),(
    '2022-02-22',
    'used',
    NULL
),(
    '2008-01-11',
    'used',
    NULL
),(
    '2022-03-08',
    'used',
    NULL
),(
    '2022-05-26',
    'used',
    NULL
),(
    '2008-06-16',
    'used',
    NULL
),(
    '2011-04-03',
    'used',
    NULL
),(
    '2020-12-12',
    'used',
    NULL
);


INSERT INTO Customer(
    customer_name
) 
VALUES(
    'Ella Fitzgerald' --custom installs
),(
    'Frank Sinatra' --painted orange metallic, paintwork, custom installs
),(
    'Eiichiro Oda' -- oil change
),(
    'Kanye West' -- scheduled maintenance
),(
    'Steve Lacy' -- inspection
),(
    'Adam Sandler' -- antifreeze added
),(
    'Michael Jackson' -- replace air filter
),(
    'Erykah Badu' -- battery replacement
),(
    'Bobby Caldwell' -- new tires 
);


CREATE OR REPLACE FUNCTION add_parts(
    Parts INTEGER,
    parts_cost NUMERIC(10,2),
    part_description VARCHAR(100)
)
RETURNS VOID
LANGUAGE plpgsql
AS
$MAIN$
BEGIN

    INSERT INTO Parts(parts_id, parts_cost, part_description)
    VALUES (Parts, parts_cost, part_description);

END
$MAIN$

SELECT add_parts(1, 1300.00, 'W189 chassis 300 D, retractable black fabric soft top, and landau bars'); -- ella
SELECT add_parts(2, 2000.00, 'boar leather, Chassis No. 4407, Engine No. 30447, orange shagpile carpeting, 8 track stereo player'); -- frank
SELECT add_parts(3, 100.00, 'motor oil'); -- eiichiro
SELECT add_parts(4, 100000.00, 'motor oil, radiator coolant, brake fluid, power steering fluid, wiper blades and brake pads'); -- kanye
SELECT add_parts(5, 85.00, 'air filter'); -- MJ
SELECT add_parts(6, 35.00, 'antifreeze'); -- Adam
SELECT add_parts(7, 132.99, 'DieHard HD Battery - Heavy Duty Commercial & Farm Battery, Group Size 31A, 950 CCA'); -- erykah
SELECT add_parts(8, 552.00, 'P275/50R22 tires'); -- Bobby


INSERT INTO Salesperson(
  salesperson_name,
  email
)
Values(
    'Travis Davie',
    'travdavie@hotmail.com'
),(
    'Lorenzo Hanson',
    'lohanson@yahoo.com'
),(
    'Clare Timms',
    'clarietimms90@gmail.com'
),(
    'Abigail Langley',
    'abbylang222@gmail.com'
);


CREATE OR REPLACE FUNCTION add_mechanic(
    Mechanic INTEGER,
    mechanic_name VARCHAR(50)
)
RETURNS VOID
LANGUAGE plpgsql
AS
$MAIN$
BEGIN

    INSERT INTO Mechanic(mechanic_id, mechanic_name)
    VALUES(Mechanic, mechanic_name);

END
$MAIN$

SELECT add_mechanic(1, 'Vincent Guadagnino');
SELECT add_mechanic(2, 'Paul DelVecchio');
SELECT add_mechanic(3, 'Cédric Bourgeois');
SELECT add_mechanic(4, 'Richard Dubois');


INSERT INTO Invoice(
  car_id,
  salesperson_id,
  customer_id,
  total_cost
)
VALUES(
    1,
    1,
    1,
    9900.00
),(
    2,
    1,
    2,
    22200.00
),(
    3,
    3,
    3,
    120.00
),(
    4,
    4,
    4,
    101000.00
),(
    5,
    2,
    5,
    25.00
),(
    6,
    3,
    6,
    45.00
),(
    7,
    2,
    7,
    95.00
),(
    8,
    3,
    8,
    142.99
),(
    9,
    4,
    9,
    572.00
);


INSERT INTO Service_Ticket(
  service_type,
  service_cost,
  car_id,
  mechanic_id,
  parts_id,
  service_date,
  customer_id
)
VALUES(
    'custom install',
    100.00,
    1,
    1,
    1,
    '1959-11-09',
    1
),(
    'paintwork, custom install',
    200.00,
    2,
    1,
    2,
    '1969-12-12',
    2
),(
    'oil change',
    20.00,
    3,
    2,
    3,
    '2022-02-22',
    3
),(
    'scheduled maintenance',
    1000.00,
    4,
    4,
    4,
    '2008-01-11',
    4
),(
    'inspection',
    25.00,
    5,
    3,
    NULL,
    '2022-03-08',
    5
),(
    'antifreeze added',
    10.00,
    6,
    4,
    6,
    '2022-05-26',
    6
),(
    'replace air filter',
    10.00,
    7,
    3,
    5,
    '2008-06-16',
    7
),(
    'battery replacement',
    10.00,
    8,
    2,
    7,
    '2011-04-03',
    8
),(
    'new tires',
    20.00,
    9,
    4,
    8,
    '2020-12-12',
    9
);