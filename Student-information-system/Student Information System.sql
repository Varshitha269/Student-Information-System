
------- TASK - 1 Assignment -------

-- Creating Students Table --
create table Students(
student_id int not null primary key,
first_name varchar(50),
last_name varchar(50),
date_of_birth DATE,
email varchar(50),
phone_number int);

-- Altering the phone number data type --
ALTER TABLE Students
ALTER COLUMN phone_number BIGINT;


-- Creating Teacher table --

create table Teacher(
teacher_id int not null primary key,
first_name varchar(50),
last_name varchar(50),
email varchar(50));

-- Creating Courses table --

create table Courses(
course_id int not null primary key,
course_name varchar(50),
credits int,
teacher_id int,
foreign key(teacher_id) REFERENCES Teacher(teacher_id));

-- Creating Enrollment table --

create table Enrollments(
enrollment_id int not null primary key,
student_id int,
foreign key(student_id) REFERENCES Students(student_id),
course_id int,
foreign key(course_id) REFERENCES Courses(course_id),
enrollment_date DATE);

-- Creating Payments table --

create table Payments(
payment_id int not null primary key,
student_id int,
foreign key(student_id) REFERENCES Students(student_id),
amount int,
payment_date DATE);



-- displaying ALL table--

select * from Students;
select * from Courses;
select * from Teacher;
select * from Payments;
select * from Enrollments;

-- Adding constraints to referential integrity
Alter table Courses
Add Constraint FK_teacher_id foreign key (teacher_id) references teacher(teacher_id) on delete cascade

Alter table Courses
Add Constraint FK_teacher_id foreign key (teacher_id) references teacher(teacher_id) on update cascade

-- Altering existing constraint to add ON DELETE and ON UPDATE actions --
ALTER TABLE Courses
DROP CONSTRAINT FK_teacher_id; -- Drop the existing constraint

ALTER TABLE Courses
ADD CONSTRAINT FK_teacher_id 
FOREIGN KEY (teacher_id) 
REFERENCES Teacher(teacher_id) 
ON DELETE CASCADE 
ON UPDATE CASCADE; -- Add the constraint with ON DELETE and ON UPDATE actions

-- adding student-id constraints referentials
ALTER TABLE Enrollments
ADD CONSTRAINT FK_student_id 
FOREIGN KEY (student_id) 
REFERENCES Students(student_id) 
ON DELETE CASCADE 
ON UPDATE CASCADE;

--adding course-id referentials
ALTER TABLE Enrollments
ADD CONSTRAINT FK_course_id 
FOREIGN KEY (course_id) 
REFERENCES Courses(course_id) 
ON DELETE CASCADE 
ON UPDATE CASCADE;

ALTER TABLE Payments
ADD CONSTRAINT FK_student_id_payments 
FOREIGN KEY (student_id) 
REFERENCES Students(student_id) 
ON DELETE CASCADE 
ON UPDATE CASCADE;




insert into Students(student_id,first_name, last_name,date_of_birth, email,phone_number) 
values(101, 'Varshitha', 'Govindaswamy', '2002-09-26', 'gvarshithavarshi@gmail.com',7075043186);
insert into Students(student_id,first_name, last_name,date_of_birth, email,phone_number) 
values(102, 'Sunil', 'Ganesh', '2002-09-08', 'ganeshreddy@gmail.com',7013312345);
insert into Students(student_id,first_name, last_name,date_of_birth, email,phone_number) 
values(103, 'Sanjana', 'Muthineedi', '2002-09-22', 'sanjanamuthineedi@gmail.com',7075043178);
insert into Students(student_id,first_name, last_name,date_of_birth, email,phone_number) 
values(104, 'Sowmya', 'Depuru', '2002-04-18', 'depurusaisowmya@gmail.com',7075078186);
insert into Students(student_id,first_name, last_name,date_of_birth, email,phone_number) 
values(105, 'Rohith Sai', 'Armugam', '2002-09-26', 'saaeee@gmail.com',7075043187);
insert into Students(student_id,first_name, last_name,date_of_birth, email,phone_number) 
values(106, 'Sasi', 'kala', '2002-04-29', 'sasikala@gmail.com',7072345789);
insert into Students(student_id,first_name, last_name,date_of_birth, email,phone_number) 
values(107, 'Teju', 'Bhumireddy', '2002-07-18', 'tejubhumireddy@gmail.com',9876378945);
insert into Students(student_id,first_name, last_name,date_of_birth, email,phone_number) 
values(108, 'Shobha', 'Rani', '2002-09-03', 'shobha@gmail.com',7013379865);
insert into Students(student_id,first_name, last_name,date_of_birth, email,phone_number) 
values(100, 'bhavana', 'sruthi', '2002-05-22', 'bhavana@gmail.com',7072356123);
insert into Students(student_id,first_name, last_name,date_of_birth, email,phone_number) 
values(110, 'Nivi', 'Thirumalasetty', '2002-07-19', 'nivi@gmail.com',9877456945);

insert into Students(student_id,first_name, last_name,date_of_birth, email,phone_number) 
values(127, 'Sarada', 'Rani', '2002-09-03', 'sarada@gmail.com',7013375105);
insert into Students(student_id,first_name, last_name,date_of_birth, email,phone_number) 
values(126, 'bhavan', 'sruthi', '2002-05-22', 'bhavan@gmail.com',7072178123);
insert into Students(student_id,first_name, last_name,date_of_birth, email,phone_number) 
values(130, 'Niveditha', 'T', '2002-07-19', 'niveditha@gmail.com',9639456945);


--deleting row 

delete from Students where student_id=10;

--inserting values for Courses table
insert into Courses(course_id,course_name,credits,teacher_id) values(1002, 'Data Structures', 5,  501) 
insert into Courses(course_id,course_name,credits,teacher_id) values(1004,'Python',8, 505) 
insert into Courses(course_id,course_name,credits,teacher_id) values(1005,'Java',8,506)
insert into Courses(course_id,course_name,credits,teacher_id) values(1008,'C#' , 7, 504)
insert into Courses(course_id,course_name,credits,teacher_id) values(1010,'Angular',4, 509)
insert into Courses(course_id,course_name,credits,teacher_id) values(1014,'React.js', 4, 503)
insert into Courses(course_id,course_name,credits,teacher_id) values(1003,'Html',5, 507)
insert into Courses(course_id,course_name,credits,teacher_id) values(1018,' DBMS ' ,7, 502)
insert into Courses(course_id,course_name,credits,teacher_id) values(1012,'Javascript',4,514)
insert into Courses(course_id,course_name,credits,teacher_id) values(1019,'Data Science', 7, 516)





-- inserting values for teachers table

insert into Teacher(teacher_id,first_name,last_name,email) values(501,'Syamala','Devarapalli', 'syamala@gmail.com')
insert into Teacher(teacher_id,first_name,last_name,email) values(505,'Renuka','A', 'renuka@gmail.com')
insert into Teacher(teacher_id,first_name,last_name,email) values(506,'Vijaya', 'M','vijaya@gmail.com')
insert into Teacher(teacher_id,first_name,last_name,email) values(504, 'rama','lakshmi','ramalakshmi@gmail.com')
insert into Teacher(teacher_id,first_name,last_name,email) values(509,'Pranay','Kumar','pranaykumar@gmail.com')
insert into Teacher(teacher_id,first_name,last_name,email) values(507,'Bindu','priya','bindupriya@gmail.com')
insert into Teacher(teacher_id,first_name,last_name,email) values(502,'Sharmila','B','sharmila@gmail.com')
insert into Teacher(teacher_id,first_name,last_name,email) values(514,'Kiran Moni', 'T','kiran@gmail.com')
insert into Teacher(teacher_id,first_name,last_name,email) values(516,'Samba','Siva', 'samba@gmail.com')
insert into Teacher(teacher_id,first_name,last_name,email) values(503,'Nethra' ,'Kumari','Nethravathi@gmail.com')
insert into Teacher(teacher_id,first_name,last_name,email) values(545,'Happy', 'D','happy@gmail.com')
insert into Teacher(teacher_id,first_name,last_name,email) values(560,'Moni','Shree', 'moni@gmail.com')
insert into Teacher(teacher_id,first_name,last_name,email) values(530,'Siri' ,'Kumari','Siri@gmail.com')




--inserting values in payment table
insert into Payments(payment_id,student_id,amount,payment_date) values(1,101,5000,'2024-09-23')
insert into Payments(payment_id,student_id,amount,payment_date) values(2,102,4000,'2024-08-23')
insert into Payments(payment_id,student_id,amount,payment_date) values(3,103,7000,'2024-05-10')
insert into Payments(payment_id,student_id,amount,payment_date) values(4,104,2000,'2024-04-26')
insert into Payments(payment_id,student_id,amount,payment_date) values(5,105,9000,'2024-07-18')
insert into Payments(payment_id,student_id,amount,payment_date) values(6,106,10000,'2024-06-3')
insert into Payments(payment_id,student_id,amount,payment_date) values(7,107,4000,'2024-09-15')
insert into Payments(payment_id,student_id,amount,payment_date) values(8,108,3000,'2024-01-20')
insert into Payments(payment_id,student_id,amount,payment_date) values(9,100,10000,'2024-10-24')
insert into Payments(payment_id,student_id,amount,payment_date) values(10,110,5000,'2024-12-02')



-- inserting values into Enrollments table

insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(801,101,1002,'2024-09-20')
insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(802,102,1003,'2024-04-24')
insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(803,103,1004,'2024-05-02')
insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(804,104,1005,'2024-02-20')
insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(805,105,1008,'2024-05-26')
insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(806,106,1010,'2024-03-09')
insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(807,107,1012,'2024-05-13')
insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(808,108,1014,'2023-11-20')
insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(809,100,1018,'2024-07-23')
insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(810,110,1019,'2024-09-26')



------- TASK - 2 Assignment -------

-- inserting value in students table
insert into Students(student_id,first_name,last_name,date_of_birth,email,phone_number) values(112,'John','Doe','1995-08-15','john.doe@example.com',1234567890);

--Write an SQL query to enroll a student in a course. Choose an existing student and course and insert a record into the "Enrollments" table with the enrollment date.

insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(811,105,1008,'2024-12-27')

--Update the email address of a specific teacher in the "Teacher" table. Choose any teacher and modify their email address
update Teacher
set email='vijayalakshmi@gmail.com'
where teacher_id=506;

--Write an SQL query to delete a specific enrollment record from the "Enrollments" table. Select an enrollment record based on the student and course.
Delete from Enrollments where student_id=107 and course_id=1012;

-- Update the "Courses" table to assign a specific teacher to a course. Choose any course and teacher from the respective tables.
update Courses 
set course_id=1020 
where teacher_id=502;

--Delete a specific student from the "Students" table and remove all their enrollment records from the "Enrollments" table. Be sure to maintain referential integrity.
Delete from Enrollments where student_id=100
select * from Enrollments;
select * from Students;
Delete from Students where student_id=100

--Update the payment amount for a specific payment record in the "Payments" table. Choose any payment record and modify the payment amount.
Update Payments
set amount=3500
where payment_id=8;
select * from Payments


------- TASK - 3 Assignment -------

--Write an SQL query to calculate the total payments made by a specific student. You will need to join the "Payments" table with the "Students" table based on the student's ID.

-- to do this query i am inserting few values with same student id 
insert into Payments(payment_id,student_id,amount,payment_date) values(11,101,3000,'2024-10-12')
insert into Payments(payment_id,student_id,amount,payment_date) values(12,103,2500,'2024-07-19')
insert into Payments(payment_id,student_id,amount,payment_date) values(13,108,1000,'2024-04-16')
insert into Payments(payment_id,student_id,amount,payment_date) values(14,106,1750,'2024-08-18')
insert into Payments(payment_id,student_id,amount,payment_date) values(15,110,2000,'2025-02-28')

 select * from Payments
--calculating total payments
select s.student_id,s.first_name,s.last_name,SUM(p.amount) as Total_amount
from Students s
Join Payments p on s.student_id=p.student_id
where s.student_id=108 
group by s.student_id,s.first_name,s.last_name

--Write an SQL query to retrieve a list of courses along with the count of students enrolled in each course. Use a JOIN operation between the "Courses" table and the "Enrollments" table.
insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(815,108,1012,'2024-05-13')
insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(812,102,1014,'2023-11-20')
insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(814,110,1008,'2024-09-26')

insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(823,127,NULL,NULL)
insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(817,126,NULL,NULL)
insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(818,130,NULL,NULL)
insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(820,126,1002,NULL)
insert into Enrollments(enrollment_id,student_id,course_id,enrollment_date) values(821,130,1008,NULL)

select c.course_id ,e.student_id, COUNT(e.student_id) as Total_no_of_students from Courses c
Join Enrollments e on c.course_id=e.course_id
group by e.student_id, c.course_id

--Write an SQL query to find the names of students who have not enrolled in any course. Use a LEFT JOIN between the "Students" table and the "Enrollments" table to identify students without enrollments.

select s.student_id,s.first_name,s.last_name from Students s
Left Join Enrollments e on e.course_id=NULL 

--Write an SQL query to retrieve the first name, last name of students, and the names of the courses they are enrolled in. Use JOIN operations between the "Students" table and the "Enrollments" and "Courses" tables.

select s.student_id,s.first_name,s.last_name,c.course_name from Students s
Join Enrollments e on e.student_id=s.student_id
Join Courses c on c.course_id=e.course_id

--Create a query to list the names of teachers and the courses they are assigned to. Join the "Teacher" table with the "Courses" table.
select t.teacher_id,c.course_id,c.course_name from Teacher t
Join Courses c on c.teacher_id=t.teacher_id

--Retrieve a list of students and their enrollment dates for a specific course. You'll need to join the "Students" table with the "Enrollments" and "Courses" tables.
select s.student_id,s.first_name,s.last_name ,e.enrollment_date from Students s
Join Enrollments e on e.student_id=s.student_id
Join Courses c on e.course_id=c.course_id
where c.course_name='Python';


select * from Courses

--Find the names of students who have not made any payments. Use a LEFT JOIN between the "Students" table and the "Payments" table and filter for students with NULL payment records.
select * from Students s
left join Payments p on p.student_id=s.student_id where p.student_id=NULL

--Write a query to identify courses that have no enrollments. You'll need to use a LEFT JOIN between the "Courses" table and the "Enrollments" table and filter for courses with NULL enrollment records.
select c.course_id,c.course_name,e.enrollment_id from Courses c
left join Enrollments e on e.course_id=c.course_id

--Identify students who are enrolled in more than one course. Use a self-join on the "Enrollments" table to find students with multiple enrollment records.
-- gives only ID of students
select distinct e1.student_id
from Enrollments e1
Join Enrollments e2 ON e1.student_id = e2.student_id
where e1.course_id <> e2.course_id;
-- gives indetail entry of students with courses
Select distinct e1.student_id,e1.course_id
from Enrollments e1
join Enrollments e2 ON e1.student_id = e2.student_id
where e1.course_id <> e2.course_id;

--Find teachers who are not assigned to any courses. Use a LEFT JOIN between the "Teacher" table and the "Courses" table and filter for teachers with NULL course assignments.
select * from Teacher

select t.*, c.course_id from Teacher t
Left Join Courses c on t.teacher_id=c.teacher_id
where c.teacher_id IS NULL


select * from Enrollments

------- TASK - 4 Assignment -------

--Write an SQL query to calculate the average number of students enrolled in each course. Use aggregate functions and subqueries to achieve this.
select c.course_id,c.course_name,AVG(e.student_count) as average_student_enrollments from Courses c 
left join (select course_id ,COUNT(Distinct student_id) as student_count from Enrollments Group by course_id ) as e on c.course_id=e.course_id
group by c.course_id,c.course_name;


--Identify the student(s) who made the highest payment. Use a subquery to find the maximum payment amount and then retrieve the student(s) associated with that amount.
select s.student_id,p.payment_id, p.amount as total_amount from Students s 
Left join Payments p on s.student_id=p.student_id where p.amount=(select MAX(amount) from Payments)

--Retrieve a list of courses with the highest number of enrollments. Use subqueries to find the course(s) with the maximum enrollment count.
select c.course_id,c.course_name, e.enrollment_id from Courses c  
Join Enrollments e on c.course_id=e.course_id 
where e.course_id=(select TOP 1 course_id from(select course_id,COUNT(*) as enrollment_count 
from Enrollments Group by course_id) as subquery Order by enrollment_count DESC  )

--Calculate the total payments made to courses taught by each teacher. Use subqueries to sum payments for each teacher's courses.
select * from Teacher;
select * from Courses;

select t.teacher_id,t.first_name,t.last_name,
( select SUM(p.amount) from Payments p join Enrollments e on p.student_id=e.student_id 
join Courses c on e.course_id=c.course_id
where c.teacher_id=t.teacher_id) as total_no_of_payments from Teacher t;

--Identify students who are enrolled in all available courses. Use subqueries to compare a student's enrollments with the total number of courses.
select s.student_id,s.first_name,s.last_name from Students s 
where (select COUNT(distinct course_id) from courses)=(select COUNT(distinct course_id) 
from Enrollments e where s.student_id=e.student_id)


--Retrieve the names of teachers who have not been assigned to any courses. Use subqueries to find teachers with no course assignments.
--using joins
select t.teacher_id,t.first_name,t.last_name,c.course_id from Teacher t Left join Courses c on c.teacher_id=t.teacher_id where c.course_id Is NULL;
-- using subquery
select t.teacher_id,t.first_name,t.last_name from Teacher t where teacher_id NOT IN(select distinct teacher_id from Courses);

--Calculate the average age of all students. Use subqueries to calculate the age of each student based on their date of birth.
select AVG(q.age) as avg_age from(select DATEDIFF(YEAR,s.date_of_birth, GETDATE()) as age from Students s) as q;

--Identify courses with no enrollments. Use subqueries to find courses without enrollment records.-- no courses with zero enrollments
select distinct c.course_id from Courses c where c.course_id Not in (select distinct course_id from Enrollments)

--Calculate the total payments made by each student for each course they are enrolled in. Use subqueries and aggregate functions to sum payments.
select s.student_id,s.first_name,s.last_name,e.course_id , (select  SUM(p.amount) from Payments p where p.student_id = s.student_id) as Total_No_Of_Payments  from Students s 
Join Enrollments e on s.student_id=e.student_id;

--Identify students who have made more than one payment. Use subqueries and aggregate functions to count payments per student and filter for those with counts greater than one.
select s.student_id,s.first_name,s.last_name from Students s where (select COUNT(*) from Payments p where p.student_id=s.student_id)>1

--Write an SQL query to calculate the total payments made by each student. Join the "Students" table with the "Payments" table and use GROUP BY to calculate the sum of payments for each student.
select s.student_id,s.first_name,s.last_name, SUM(p.amount) as total_payments from Students s 
Join Payments p on s.student_id =p.student_id
Group by s.student_id,s.first_name,s.last_name

--Retrieve a list of course names along with the count of students enrolled in each course. Use JOIN operations between the "Courses" table and the "Enrollments" table and GROUP BY to count enrollments.
select c.course_name,COUNT(e.student_id) as enrollment_count from Courses c 
Left Join Enrollments e on c.course_id=e.course_id
Group by c.course_name

--Calculate the average payment amount made by students. Use JOIN operations between the "Students" table and the "Payments" table and GROUP BY to calculate the average.
select AVG(p.amount) as avg_payments from Students s Join Payments p on s.student_id = p.student_id





