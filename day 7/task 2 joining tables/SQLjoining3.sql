create database task;
use task
CREATE TABLE cellphone_population (
    country VARCHAR(50),
    year INT,
    num_cellphones INT,
    population DECIMAL(10,2)
);
INSERT INTO cellphone_population (country, year, num_cellphones, population) VALUES
('UAE', 1982, 2330, 1170000);
INSERT INTO cellphone_population (country, year, num_cellphones, population) VALUES
('USA', 1983, 1330, 1500000);
INSERT INTO cellphone_population (country, year, num_cellphones, population) VALUES
('Colombia', 1984, 1329, 15004680);
INSERT INTO cellphone_population (country, year, num_cellphones, population) VALUES
('Iceland', 1985, 1420, 1320000);
INSERT INTO cellphone_population (country, year, num_cellphones, population) VALUES
('Lesotho', 1986, 1450, 1300000);
INSERT INTO cellphone_population (country, year, num_cellphones, population) VALUES
('New Caledonia', 1987, 1400, 1400000);
INSERT INTO cellphone_population (country, year, num_cellphones, population) VALUES
('Eswatini', 1988, 1200, 1800000);
SELECT 
    country,
    year,
    CONCAT(num_cellphones, ' / ', FORMAT(population / 1000000, 2), 'M = ', 
           ROUND(num_cellphones / population, 6)) AS 'No of cell phone / Population'
FROM 
    cellphone_population;