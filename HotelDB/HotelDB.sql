--16. Count total rooms across all hotels from Rooms table.
SELECT COUNT(*) AS TotalRooms FROM ROOM;

--17. Average room price per night from Rooms table. 
SELECT AVG(Nightly_Rate) AS AvgRoomRate FROM ROOM;

--18. Count rooms per hotel grouped by Hotel_ID. 
SELECT Branch_ID, COUNT(*) AS RoomCount
FROM ROOM
GROUP BY Branch_ID;

--19.  Sum booking cost per guest from Bookings grouped by Guest_ID.
SELECT Customer_ID, SUM(TotalCost) AS TotalBookingCost
FROM (
    SELECT 
        B.Customer_ID,
        R.Nightly_Rate * (B.Check_Out_Date - B.Check_In_Date) AS TotalCost
    FROM BOOKING B
    JOIN BOOKING_ROOM BR 
        ON B.Booking_ID = BR.Booking_ID
    JOIN ROOM R 
        ON BR.Room_Number = R.Room_Number 
        AND BR.Branch_ID = R.Branch_ID
) AS BookingCosts
GROUP BY Customer_ID;

--20.  Guests with total bookings > 5000 grouped by Guest_ID.
SELECT Customer_ID, SUM(TotalCost) AS TotalBookingCost
FROM (
    SELECT 
        B.Customer_ID,
        R.Nightly_Rate * (B.Check_Out_Date - B.Check_In_Date) AS TotalCost
    FROM BOOKING B
    JOIN BOOKING_ROOM BR 
        ON B.Booking_ID = BR.Booking_ID
    JOIN ROOM R 
        ON BR.Room_Number = R.Room_Number 
        AND BR.Branch_ID = R.Branch_ID
) AS BookingCosts
GROUP BY Customer_ID
HAVING SUM(TotalCost) > 5000;
