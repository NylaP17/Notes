--exercise 1
SELECT due_date, title
FROM assignments
WHERE course_id = 'COMP1234';

--exercise 2
SELECT min(due_date)
FROM assignments

--exercise 3
SELECT max(due_date)
from assignments

--exercise 4
SELECT title,course_id
from assignments
WHERE due_date= '2024-10-08'
--exercise 5
SELECT title, course_id,due_date
FROM assignments
WHERE due_date
LIKE '2024-10%';

--exercise 6
SELECT title, course_id, due_date, status
FROM assignments
WHERE status = 'Completed';

