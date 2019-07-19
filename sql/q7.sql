select student.id, student.last_name
from student, exam_result
where exam_result.student_id = student.id 
group by exam_result.exam_id, exam_result.student_id having (count(*)>1);