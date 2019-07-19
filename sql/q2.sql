
select training_course.name, count(student_result.student_id) as st_quan
from student_result, training_course
where training_course.id = student_result.training_course_id and student_result.result >3
group by student_result.training_course_id;
