SELECT 
    trips.trip_id,
    trips.duration
FROM 
    trips 
JOIN 
	weather 
ON 
    trips.start_date LIKE weather.Date
WHERE 
    weather.Events LIKE 'Rain' 
ORDER BY 
    trips.duration DESC 
limit 3