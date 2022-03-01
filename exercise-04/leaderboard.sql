-- list first 10 students with highest marks of any subject with the following fields: student id, student name, marks, subject name
SELECT student.st_id as student_id, student.st_name as student_name, grade.marks as marks, subject.sub_name as subject_name
FROM student, grade, subject
WHERE student.st_id = grade.st_id and grade.sub_code = subject.sub_code
ORDER BY grade.marks DESC
LIMIT 10;

-- Create Database
DROP DATABASE IF EXISTS urbn8_mysql;
SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS urbn8_mysql;
USE urbn8_mysql;

CREATE TABLE IF NOT EXISTS department (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(255),
    dept_location VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS student (
    st_id INT PRIMARY KEY AUTO_INCREMENT,
    st_name VARCHAR(255) NOT NULL,
    st_address VARCHAR(255),
    st_email VARCHAR(255) UNIQUE NOT NULL,
    st_cellNo VARCHAR(15),
    dept_id INT,
    FOREIGN KEY (dept_id)
        REFERENCES department (dept_id)
);
CREATE TABLE IF NOT EXISTS subject (
    sub_code INT PRIMARY KEY AUTO_INCREMENT,
    sub_name VARCHAR(255),
    crd_hrs FLOAT
);
CREATE TABLE IF NOT EXISTS grade (
    st_id INT AUTO_INCREMENT,
    sub_code INT,
    exam_name VARCHAR(255),
    marks FLOAT,
    gpa FLOAT,
    FOREIGN KEY (st_id)
        REFERENCES student (st_id),
    FOREIGN KEY (sub_code)
        REFERENCES subject (sub_code)
);

-- Insert data
INSERT INTO department(	dept_id, dept_name, dept_location)
VALUES (1, "Department 1", "Block A");
INSERT INTO department(	dept_id, dept_name, dept_location)
VALUES (2, "Department 2", "Block B");

INSERT INTO subject ( sub_code,sub_name,crd_hrs) 
VALUES(1, "Subject 1", 3);
INSERT INTO subject ( sub_code,sub_name,crd_hrs) 
VALUES(2, "Subject 2", 3);
INSERT INTO subject ( sub_code,sub_name,crd_hrs) 
VALUES(3, "Subject 3", 3);
INSERT INTO subject ( sub_code,sub_name,crd_hrs) 
VALUES(4, "Subject 4", 3);
INSERT INTO subject ( sub_code,sub_name,crd_hrs) 
VALUES(5, "Subject 5", 3);

INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(1, "Student 1", "Ho Chi Minh city", "student1@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(2, "Student 2", "Ho Chi Minh city", "student2@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(3, "Student 3", "Ho Chi Minh city", "student3@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(4, "Student 4", "Ho Chi Minh city", "student4@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(5, "Student 5", "Ho Chi Minh city", "student5@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(6, "Student 6", "Ho Chi Minh city", "student6@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(7, "Student 7", "Ho Chi Minh city", "student7@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(8, "Student 8", "Ho Chi Minh city", "student8@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(9, "Student 9", "Ho Chi Minh city", "student9@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(10, "Student 10", "Ho Chi Minh city", "student10@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(11, "Student 11", "Ho Chi Minh city", "student11@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(12, "Student 12", "Ho Chi Minh city", "student12@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(13, "Student 13", "Ho Chi Minh city", "student13@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(14, "Student 14", "Ho Chi Minh city", "student14@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(15, "Student 15", "Ho Chi Minh city", "student15@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(16, "Student 16", "Ho Chi Minh city", "student16@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(17, "Student 17", "Ho Chi Minh city", "student17@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(18, "Student 18", "Ho Chi Minh city", "student18@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(19, "Student 19", "Ho Chi Minh city", "student19@gmail.com", "0962299449", 1);
INSERT INTO student (st_id ,st_name,st_address,st_email,st_cellNo,dept_id ) 
VALUES(20, "Student 10", "Ho Chi Minh city", "student20@gmail.com", "0962299449", 1);

INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(1,1,"Exam 1", 9, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(2,2,"Exam 2", 9, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(3,3,"Exam 1", 9, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(4,4,"Exam 1", 9, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(5,5,"Exam 1", 9, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(6,1,"Exam 1", 8, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(7,2,"Exam 1", 7, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(8,3,"Exam 1", 6, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(9,4,"Exam 1", 1, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(10,5,"Exam 1", 7, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(11,1,"Exam 1", 3, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(12,2,"Exam 2", 6, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(13,3,"Exam 1", 2, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(14,4,"Exam 1", 7, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(15,5,"Exam 1", 10, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(16,1,"Exam 1", 6, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(17,2,"Exam 1", 4, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(18,3,"Exam 1", 5, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(19,4,"Exam 1", 2, 9);
INSERT INTO grade (st_id,sub_code,exam_name,marks,gpa)
VALUES(20,5,"Exam 1", 9, 9);