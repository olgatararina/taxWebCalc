select  techer.last_name as teach, avg(student_result.result)as avg_res
from student_result, training_course, techer
where student_result.training_course_id=training_course.id and training_course.teacher_id = techer.id
group by student_result.training_course_id having (count(*)>1)
order by avg(student_result.result) desc limit 1;