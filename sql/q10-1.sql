use students;
select year(student_result.date) as year, student.last_name as st_name, student_result.result as mark
from student_result, student, training_course
where student_result.student_id = student.id and 
student_result.training_course_id = training_course.id and training_course.name like 'Phi%'
order by year(student_result.date) desc;