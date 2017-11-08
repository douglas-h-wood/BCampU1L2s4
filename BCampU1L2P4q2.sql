SELECT 
    stations.station_id,
	COUNT(*) as empty_count
FROM 
    stations
JOIN 
    status_abbreviated
ON 
    stations.station_id = status_abbreviated.station_id
WHERE 
    status_abbreviated.bikes_available = 0
GROUP BY 1 DESC 