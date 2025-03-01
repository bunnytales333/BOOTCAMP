CREATE TABLE cellphone_populations (
    country VARCHAR(50),
    year INT,
    num_cellphones INT
);
INSERT INTO cellphone_populations (country, year, num_cellphones) VALUES
('USA', 1985, 8500),
('France', 1985, 7200),
('Germany', 1985, 6900),
('France', 1986, 9060),
('USA', 1986, 8700),
('Germany', 1986, 8200),
('Japan', 1987, 9500),
('USA', 1987, 9100),
('France', 1987, 8800);
SELECT country, year, num_cellphones
FROM (
    SELECT 
        country,
        year,
        num_cellphones,
        RANK() OVER (PARTITION BY year ORDER BY num_cellphones DESC) AS rnk
    FROM cellphone_populations
) ranked
WHERE rnk = 1;