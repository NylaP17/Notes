-- excercise 1
SELECT CONCAT(course_name, ' - ', semester) AS course_info
FROM courses;
-- excercise 2
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'Fri%';
-- excercise 3
SELECT title, course_id, due_date
FROM assignments
WHERE due_date > '2024-11-22';

-- excercise 4
SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;

-- excercise 5
SELECT course_id, course_name
FROM courses
ORDER BY LENGTH(course_name) DESC

-- excercise 6
SELECT UPPER(course_name) AS uppercase_course_name
FROM courses;

-- excercise 7
SELECT title,due_date
FROM assignments
WHERE due_date LIKE '%-09-%';

-- excercise 8
SELECT title, course_id,due_date
FROM assignments
WHERE due_date IS NULL;
