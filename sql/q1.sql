
select training_course.name, student.last_name, student.first_name, student_result.result
from training_course, student, student_result
where training_course.id = student_result.training_course_id and
student.id = student_result.student_id and student_result.result>2
order by training_course.name, student_result.result desc;
 



