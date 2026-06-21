--Ranking Students
SELECT name,marks,DENSE_RANK() OVER (ORDER BY marks DESC) AS rnk FROM Students;
--Topper in each city
SELECT * FROM (SELECT name,city,marks,DENSE_RANK() OVER (PARTITION BY city ORDER BY marks DESC) AS rnk FROM Students) t WHERE rnk=1;
--Comparing marks with previous marks 
SELECT name,marks,marks-LAG(marks) OVER (ORDER BY marks DESC) AS diff FROM Students;
