
CREATE DATABASE exceedra;

CREATE TABLE exceedra_products (

    id serial PRIMARY KEY,

    product varchar(max),

    customer varchar(max),

    measure varchar(max),

    value float,

    valid_from_day DATE,

    valid_to_day DATE

);

INSERT INTO exceedra_products (product, customer, measure, value, valid_from_day, valid_to_day)

VALUES ('Widgets', 'Tesco', 'Gross Sales Price', 1, '20130101', '20130401'),

       ('Widgets', 'Tesco', 'Gross Sales Price', 1.5, '20130301', '20131231'),

       ('Widgets', 'Tesco', 'Gross Sales Price', 2, '20130401', '20150101'),

       ('Widgets', 'Tesco', 'Distribution Cost', 5, '20130101', '20130401'),

       ('Widgets', 'Tesco', 'Distribution Cost', 6, '20130301', '20140401'),

       ('Widgets', 'Tesco', 'Distribution Cost', 7, '20131231', '20150101'),

       ('Widgets', 'Asda', 'Gross Sales Price', 100, NULL, NULL),

       ('Widgets', 'Asda', 'Gross Sales Price', 200, '20131231', '20150101'),

       ('Widgets', 'Asda', 'Distribution Cost', 2, '20130301', '20131231'),

       ('Widgets', 'Asda', 'Distribution Cost', 3, '20140401', '20150101');
