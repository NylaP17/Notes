-- Student Name: Nyla Prince
--question 1
--answer:
select * from rectangles


--question 2
--answer: There are 17 Rectangles
select * from rectangles

--question 3
--answer: The color #abcdef has the widest rectangle
SELECT color, width
FROM rectangles
WHERE width = (SELECT MAX(width) FROM rectangles);


--question 4
--answer: The color #ffffff has the tallest rectangle
SELECT color,height
FROM rectangles
WHERE height = (SELECT MAX(height) FROM rectangles);


--question 5

SELECT *
FROM rectangles
WHERE width > height;


--question 6


SELECT width, height, (width * height) AS Area
FROM rectangles;

--question 7
--answer: #ffffff is the largest rectangle
SELECT color
FROM rectangles
ORDER BY (width * height) DESC
LIMIT 1;

--question 8
--answer: The color of the rectangle that extends the most to the right is #abcedf
SELECT color,x,y,height,width
FROM rectangles
ORDER BY (x + width) DESC
LIMIT 1;


--question 9

SELECT *
FROM rectangles
WHERE color IS NULL;

--question 10


SELECT DISTINCT color
FROM rectangles
WHERE color IS NOT NULL;

--question 11   

SELECT DISTINCT color
FROM rectangles
WHERE color IS NOT NULL
  AND color NOT LIKE '#%';


--question 12
SELECT DISTINCT UPPER(color) AS color
FROM rectangles
WHERE color IS NOT NULL;


--question 13
--answer: COMP1235

SELECT course_id
FROM courses
ORDER BY LENGTH(course_name) DESC
LIMIT 1;

--question 14
--answer: There are 13 assignments due in 2024.
SELECT *
FROM assignments
WHERE due_date >= '2024-01-01' 
  AND due_date < '2025-01-01';

--question 15

SELECT CONCAT(course_id, ': ', course_name) AS course_info
FROM courses;

--question 16
 --student name: Nyla Prince
SELECT course_id, course_name, lab_time
FROM  courses
WHERE lab_time LIKE 'Mon%';

--question 17

SELECT *
FROM  assignments
WHERE due_date < '2024-12-06';

--question 18

SELECT course_id, COUNT(*) AS assignment_count
FROM assignments
GROUP BY course_id;

