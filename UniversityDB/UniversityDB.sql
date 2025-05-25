--6.  Count total number of students in the Student table. 
SELECT COUNT(*) AS TotalStudents FROM STUDENT;


--7. Count number of students per city (group by City in Student).
SELECT City, COUNT(*) AS StudentCount
FROM HOSTAL H
JOIN Student S ON H.Hostel_id = S.Hostel_id
GROUP BY City;

--8. Count students per course using Enrols (group by CourseID). 
SELECT Subject.Course_id, COUNT(DISTINCT Enroll.S_ID) AS StudentCount
FROM Enroll
JOIN Subject ON Enroll.Subject_id = Subject.Subject_id
GROUP BY Subject.Course_id;

--9. Count number of courses per department using Course (group by DepartmentID). 
SELECT Department_id, COUNT(DISTINCT Course_id) AS CourseCount
FROM Department_Handles_Course
GROUP BY Department_id;


--10.  Count number of students assigned to each hostel (group by HostelID).
SELECT Hostel_id, COUNT(*) AS StudentCount
FROM Student
GROUP BY Hostel_id;
