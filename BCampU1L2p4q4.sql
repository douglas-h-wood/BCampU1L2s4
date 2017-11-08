WITH 
    rainy_days 
AS (
SELECT 
    weather.Date
FROM 
    weather
WHERE 
    weather.Events = 'Rain'
	)
SELECT 
    rainy_days.Date, 
    max(trips.duration)
FROM 
    rainy_days
JOIN 
    trips 
ON 
   trips.start_date LIKE rainy_days.Date 