
select teacher_id from training_course 
group by teacher_id having (count(*)>1);