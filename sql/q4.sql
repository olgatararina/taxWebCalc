select training_course.name, avg(result) as avg_res
from student_result, training_course 
where training_course_id=(select id from training_course where name like 'RDBMS');