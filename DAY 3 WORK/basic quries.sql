INSERT INTO public.student_information(
	id, name, branch)
	VALUES (1, 'varun', 'csd'),(2,'shashi','aiml'),(3,'shashanth','cse'),(4,'chinnu','ece'),(5,'sheshu','eee');


SELECT * from student_information where branch='aiml'
select * from student_information where name='varun'
select * from student_information where id='5'


select branch,count(*) total_branch_student from student_information group by branch;

select branch,count(*) total_branch_student from student_information group by branch having count(*)>(0);


SELECT * FROM student_information;

