--11. Count total flights in FLIGHT table. 
SELECT COUNT(*) AS TotalFlights FROM FLIGHT;

--12. Average available seats per leg using FLIGHT_LEG table. 
SELECT AVG(num_available_seats) AS AvgSeats
FROM LEG_INSTANCE;

--13. Count flights scheduled per airline from FLIGHT grouped by Airline_ID.
SELECT airline AS Airline_ID, COUNT(*) AS FlightCount
FROM FLIGHT
GROUP BY airline;

--14. Total payments per leg using LEG_INSTANCE table grouped by Flight_Leg_ID.
SELECT leg_no, SUM(Payment) FROM LEG_INSTANCE GROUP BY leg_no;

--15. List flight legs with total payments > 10000 grouped by Flight_Leg_ID.
SELECT leg_no, SUM(Payment) AS TotalPayment
FROM LEG_INSTANCE
GROUP BY leg_no
HAVING SUM(Payment) > 10000;
