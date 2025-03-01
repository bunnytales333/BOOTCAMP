CREATE TABLE restaurants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address TEXT NOT NULL,
    latitude DECIMAL(10, 8) NOT NULL,
    longitude DECIMAL(11, 8) NOT NULL
);
INSERT INTO restaurants (name, address, latitude, longitude) VALUES
('Mufasa', 'Race Course, Coimbatore', 11.0055, 76.9661),
('Luna Rooftop', 'Peelamedu, Coimbatore', 11.0324, 77.0032),
('The Bermuda', 'RS Puram, Coimbatore', 11.0181, 76.9512);
SET @user_lat = 11.0168; -- Replace with your latitude
SET @user_lon = 76.9558; -- Replace with your longitude
SET @radius = 5; -- Radius in kilometers
SELECT 
    id, 
    name, 
    address, 
    (6371 * ACOS(COS(RADIANS(@user_lat)) * COS(RADIANS(latitude)) * 
    COS(RADIANS(longitude) - RADIANS(@user_lon)) + 
    SIN(RADIANS(@user_lat)) * SIN(RADIANS(latitude)))) AS distance_km
FROM restaurants
HAVING distance_km <= @radius
ORDER BY distance_km;