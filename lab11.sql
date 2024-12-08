-- exercise 1
SELECT  title, due_date
FROM assignments
WHERE course_id LIKE 'comp1234'
  
  --exercise 2
SELECT  title, course_id, min (due_date) 
FROM assignments;

--exercise 3
SELECT  title, course_id, max (due_date) 
FROM assignments;

--exercise 4
SELECT title, course_id, due_date
FROM assignments
WHERE due_date = '2024-10-08'

--exercise 5
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

--exercise 6
SELECT MAX(due_date) AS most_recent_due_date
FROM assignments
WHERE status = 'Completed';





