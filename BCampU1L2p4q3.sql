SELECT 
    stations.name,
	trips.start_station,
	COUNT(trips.start_station) as station_count
FROM 
    stations
JOIN 
    trips
ON 
    stations.station_id = trips.start_terminal 
GROUP BY
    trips.start_station
ORDER BY stations.dockcount