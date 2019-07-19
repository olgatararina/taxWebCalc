
select student.last_name, student.first_name, avg (student_result.result) as avg_mark
from student, student_result
where student.id = student_result.student_id
group by student_result.student_id having (count(*)>1)
order by avg(student_result.result) desc limit 5;

