
# Student Information System Database


This is the HEXAWARE Assignment - 1 till Task-4 (SQL)

This project contains SQL schema definitions and queries for a Student Information System (SIS). The SIS database manages information about students, courses, enrollments, payments, and teachers.

## Tables

### Students
- Attributes: `student_id`, `first_name`, `last_name`, `date_of_birth`, `email`, `phone_number`

### Courses
- Attributes: `course_id`, `course_name`, `credits`, `teacher_id`

### Teacher
- Attributes: `teacher_id`, `first_name`, `last_name`, `email`

### Enrollments
- Attributes: `enrollment_id`, `student_id`, `course_id`, `enrollment_date`

### Payments
- Attributes: `payment_id`, `student_id`, `amount`, `payment_date`

## Operations

1. **Enroll Student in Course**: Insert a record into the `Enrollments` table to enroll a student in a course.
   
2. **Update Teacher Email**: Modify the email address of a specific teacher in the `Teacher` table.

3. **Delete Enrollment Record**: Remove a specific enrollment record from the `Enrollments` table based on the student and course.

4. **Assign Teacher to Course**: Update the `Courses` table to assign a specific teacher to a course.

5. **Delete Student and Enrollments**: Delete a specific student from the `Students` table and remove all their enrollment records from the `Enrollments` table.

6. **Update Payment Amount**: Update the payment amount for a specific payment record in the `Payments` table.

7. **Total Payments by Student**: Calculate the total payments made by a specific student.

8. **Courses with Highest Enrollments**: Retrieve a list of courses with the highest number of enrollments.

9. **Average Students per Course**: Calculate the average number of students enrolled in each course.

10. **Highest Payment Student**: Identify the student(s) who made the highest payment.

11. **Teachers without Courses**: Find teachers who have not been assigned to any courses.

12. **Average Student Age**: Calculate the average age of all students.

13. **Courses with No Enrollments**: Identify courses with no enrollments.

14. **Total Payments by Student and Course**: Calculate the total payments made by each student for each course they are enrolled in.

15. **Students with Multiple Payments**: Identify students who have made more than one payment.

16. **Total Payments by Student**: Calculate the total payments made by each student.

17. **Course Enrollment Counts**: Retrieve a list of course names along with the count of students enrolled in each course.

18. **Average Payment Amount**: Calculate the average payment amount made by students.

## Getting Started

1. Clone this repository to your local machine.
2. Import the SQL schema file into your preferred database management system (DBMS).
3. Execute the provided SQL queries as needed to perform operations on the SIS database.

