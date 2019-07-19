select training_course.name, student.last_name, student.first_name
from training_course, student, student_result
where student_result.student_id = student.id and 
student_result.training_course_id = training_course.id and training_course.name like 'Ma%'
and student_result.result = 2;