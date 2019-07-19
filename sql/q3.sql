
select count(student_result.result) -
(select count(exam_result.result) from exam_result) as stud
from student_result;

