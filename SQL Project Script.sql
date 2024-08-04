CREATE TABLE Departments ( 
    department_id NUMBER PRIMARY KEY, 
    department_name VARCHAR2(100) NOT NULL 
);

CREATE TABLE Students ( 
    student_id NUMBER PRIMARY KEY, 
    first_name VARCHAR2(50) NOT NULL, 
    last_name VARCHAR2(50) NOT NULL, 
    date_of_birth DATE, 
    gender CHAR(1), 
    enrollment_date DATE, 
    email VARCHAR2(100), 
    phone VARCHAR2(15) 
);

CREATE TABLE Courses ( 
    course_code VARCHAR2(50) PRIMARY KEY, 
    credits NUMBER NOT NULL, 
    semester_offered VARCHAR2(50) 
);

CREATE TABLE Courses_details ( 
    course_id NUMBER PRIMARY KEY, 
    course_name VARCHAR2(100) NOT NULL, 
    course_code VARCHAR2(50) NOT NULL, 
    course_description CLOB, 
    department_id NUMBER, 
    FOREIGN KEY (department_id) REFERENCES Departments(department_id), 
    FOREIGN KEY (course_code) REFERENCES Courses(course_code) 
);

CREATE TABLE Instructors ( 
    instructor_id NUMBER PRIMARY KEY, 
    first_name VARCHAR2(50) NOT NULL, 
    last_name VARCHAR2(50) NOT NULL, 
    email VARCHAR2(100), 
    phone VARCHAR2(15), 
    hire_date DATE, 
    department_id NUMBER, 
    FOREIGN KEY (department_id) REFERENCES Departments(department_id) 
);

CREATE TABLE Enrollments ( 
    enrollment_id NUMBER PRIMARY KEY, 
    student_id NUMBER, 
    course_id NUMBER, 
    enrollment_date DATE, 
    FOREIGN KEY (student_id) REFERENCES Students(student_id), 
    FOREIGN KEY (course_id) REFERENCES Courses_details(course_id) 
);

CREATE TABLE Grades ( 
    grade_id NUMBER PRIMARY KEY, 
    enrollment_id NUMBER, 
    grade VARCHAR2(2), 
    FOREIGN KEY (enrollment_id) REFERENCES Enrollments(enrollment_id) 
);

CREATE TABLE Course_Instructors ( 
    course_id NUMBER, 
    instructor_id NUMBER, 
    PRIMARY KEY (course_id, instructor_id), 
    FOREIGN KEY (course_id) REFERENCES Courses_details(course_id), 
    FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id) 
);

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(1, 'Jane', 'Doe', TO_DATE('1995-03-15', 'YYYY-MM-DD'), 'F', TO_DATE('2023-09-01', 'YYYY-MM-DD'), 'jane.doe@example.com', 9876543210);

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(2, 'John', 'Brown', TO_DATE('1996-05-10', 'YYYY-MM-DD'), 'M', TO_DATE('2023-08-02', 'YYYY-MM-DD'), 'john.brown@example.com', '3456789012');

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(3, 'Hamid', 'Ali', TO_DATE('1997-11-12', 'YYYY-MM-DD'), 'M', TO_DATE('2023-05-28', 'YYYY-MM-DD'), 'hamid.ali@example.com', '5678901234');

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(5, 'Emily', 'Robinson', TO_DATE('1996-06-15', 'YYYY-MM-DD'), 'F', TO_DATE('2023-09-02', 'YYYY-MM-DD'), 'emily.robinson@example.com', '5678901234');

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(6, 'Frank', 'Patel', TO_DATE('1999-03-20', 'YYYY-MM-DD'), 'M', TO_DATE('2023-09-03', 'YYYY-MM-DD'), 'frank.patel@example.com', '6789012345');

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(7, 'Henry', 'Anderson', TO_DATE('1997-09-22', 'YYYY-MM-DD'), 'F', TO_DATE('2023-09-04', 'YYYY-MM-DD'), 'henry.anderson@example.com', '8901234567');

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(8, 'Isabella', 'Garcia', TO_DATE('1996-03-08', 'YYYY-MM-DD'), 'M', TO_DATE('2023-09-05', 'YYYY-MM-DD'), 'isabella.garcia@example.com', '9012345678');

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(9, 'Jack', 'Thompson', TO_DATE('1998-07-14', 'YYYY-MM-DD'), 'F', TO_DATE('2023-09-06', 'YYYY-MM-DD'), 'jack.thompson@example.com', '1230123012');

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(10, 'Katherine', 'Harris', TO_DATE('1995-01-25', 'YYYY-MM-DD'), 'M', TO_DATE('2023-09-07', 'YYYY-MM-DD'), 'katherine.harris@example.com', '2341234123');

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(11, 'Liam', 'Martin', TO_DATE('1997-12-03', 'YYYY-MM-DD'), 'F', TO_DATE('2023-09-08', 'YYYY-MM-DD'), 'liam.martin@example.com', '3452345234');

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(12, 'Mia', 'Rodriguez', TO_DATE('1996-05-20', 'YYYY-MM-DD'), 'M', TO_DATE('2023-09-09', 'YYYY-MM-DD'), 'mia.rodriguez@example.com', '4563456345');

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(13, 'Noah', 'Young', TO_DATE('1999-04-18', 'YYYY-MM-DD'), 'F', TO_DATE('2023-09-10', 'YYYY-MM-DD'), 'noah.young@example.com', '5674567456');

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(14, 'Olivia', 'Lee', TO_DATE('1994-08-07', 'YYYY-MM-DD'), 'M', TO_DATE('2023-09-11', 'YYYY-MM-DD'), 'olivia.lee@example.com', '6785678567');

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(15, 'Ethan', 'Nguyen', TO_DATE('1996-11-28', 'YYYY-MM-DD'), 'F', TO_DATE('2023-09-12', 'YYYY-MM-DD'), 'ethan.nguyen@example.com', '7896789678');

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(16, 'Ava', 'White', TO_DATE('1997-10-04', 'YYYY-MM-DD'), 'M', TO_DATE('2023-09-13', 'YYYY-MM-DD'), 'ava.white@example.com', '8907890789');

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(17, 'Logan', 'King', TO_DATE('1995-03-12', 'YYYY-MM-DD'), 'F', TO_DATE('2023-09-14', 'YYYY-MM-DD'), 'logan.king@example.com', '9018901890');

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(18, 'Amelia', 'Scott', TO_DATE('1998-02-09', 'YYYY-MM-DD'), 'M', TO_DATE('2023-09-15', 'YYYY-MM-DD'), 'amelia.scott@example.com', '1239012345');

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, enrollment_date, email, phone) 
VALUES  
(19, 'Oliver', 'Hill', TO_DATE('1996-09-30', 'YYYY-MM-DD'), 'F', TO_DATE('2023-09-16', 'YYYY-MM-DD'), 'oliver.hill@example.com', '2340123456');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('BIO101', 1, 'Fall');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('CHEM102', 1, 'Fall');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('PHY103', 2, 'Spring');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('MATH104', 4, 'Spring');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('ECON106', 2, 'Spring');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('LIT107', 3, 'Fall');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('HIST108', 2, 'Spring');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('SOC109', 1, 'Fall');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('PSYCH110', 3, 'Spring');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('ENG111', 1, 'Fall');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('ART112', 3, 'Fall');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('MUSIC113', 3, 'Spring');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('POLSCI114', 4, 'Fall');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('PHIL115', 2, 'Spring');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('ANTH116', 2, 'Fall');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('ECON117', 1, 'Fall');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('BUS118', 2, 'Spring');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('MKT119', 3, 'Spring');

INSERT INTO Courses (course_code, credits, semester_offered) 
VALUES  
('COMM120', 4, 'Fall');

INSERT INTO Departments (department_id, department_name) 
VALUES  
(1, 'Technology');

INSERT INTO Departments (department_id, department_name) 
VALUES  
(2, 'Humanities');

INSERT INTO Departments (department_id, department_name) 
VALUES  
(3, 'Science');

INSERT INTO Departments (department_id, department_name) 
VALUES  
(4, 'Engineering');

INSERT INTO Departments (department_id, department_name) 
VALUES  
(5, 'Social Sciences');

INSERT INTO Departments (department_id, department_name) 
VALUES  
(6, 'Arts');

INSERT INTO Departments (department_id, department_name) 
VALUES  
(7, 'Politics');

INSERT INTO Departments (department_id, department_name) 
VALUES  
(8, 'Sociology');

INSERT INTO Departments (department_id, department_name) 
VALUES  
(9, 'Business');

INSERT INTO Departments (department_id, department_name) 
VALUES  
(10, 'Communication');

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(101, 'Biology', 'BIO101', 'Introduction to Biology', 3);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(102, 'Chemistry', 'CHEM102', 'Basic Chemistry', 4);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(103, 'Physics', 'PHY103', 'Introduction to Physics', 3);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(104, 'Mathematics', 'MATH104', 'Calculus', 3);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(106, 'Economics', 'ECON106', 'Microeconomics', 1);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(107, 'Literature', 'LIT107', 'World Literature', 1);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(108, 'History', 'HIST108', 'World History', 2);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(109, 'Sociology', 'SOC109', 'Introduction to Sociology', 2);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(110, 'Psychology', 'PSYCH110', 'Introduction to Psychology', 5);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(111, 'English', 'ENG111', 'Composition', 5);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(112, 'Art', 'ART112', 'Introduction to Art', 6);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(113, 'Music', 'MUSIC113', 'Music Appreciation', 6);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(114, 'Political Science', 'POLSCI114', 'Introduction to Politics', 7);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(115, 'Philosophy', 'PHIL115', 'Introduction to Philosophy', 7);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(116, 'Anthropology', 'ANTH116', 'Cultural Anthropology', 8);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(117, 'Economics', 'ECON117', 'Macroeconomics', 8);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(118, 'Business', 'BUS118', 'Introduction to Business', 9);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(119, 'Marketing', 'MKT119', 'Principles of Marketing', 9);

INSERT INTO Courses_details (course_id, course_name, course_code, course_description, department_id) 
VALUES  
(120, 'Communication', 'COMM120', 'Introduction to Communication', 10);

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(1, 1, 101, TO_DATE('2023-09-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(2, 1, 102, TO_DATE('2023-09-02', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(3, 2, 103, TO_DATE('2023-08-02', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(4, 2, 101, TO_DATE('2023-08-04', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(5, 3, 101, TO_DATE('2023-05-28', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(6, 3, 104, TO_DATE('2023-05-27', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(7, 3, 103, TO_DATE('2023-05-25', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(9, 5, 106, TO_DATE('2023-09-02', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(10, 6, 107, TO_DATE('2023-09-03', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(11, 7, 108, TO_DATE('2023-09-04', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(12, 8, 109, TO_DATE('2023-09-05', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(13, 9, 110, TO_DATE('2023-09-06', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(14, 10, 111, TO_DATE('2023-09-07', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(15, 11, 112, TO_DATE('2023-09-08', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(16, 12, 113, TO_DATE('2023-09-09', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(17, 13, 114, TO_DATE('2023-09-10', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(18, 14, 115, TO_DATE('2023-09-11', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(19, 15, 116, TO_DATE('2023-09-12', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(20, 16, 117, TO_DATE('2023-09-13', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(21, 17, 118, TO_DATE('2023-09-14', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(22, 18, 119, TO_DATE('2023-09-15', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) 
VALUES  
(23, 19, 120, TO_DATE('2023-09-16', 'YYYY-MM-DD'));

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (2, 1, 'A');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (5, 2, 'B');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (3, 3, 'A-');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (4, 4, 'B+');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (6, 5, 'A');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (7, 6, 'C');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (1, 7, 'B+');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (9, 9, 'A-');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (10, 10, 'B');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (11, 11, 'C');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (12, 12, 'B+');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (13, 13, 'A-');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (14, 14, 'B+');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (15, 15, 'C+');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (16, 16, 'A');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (17, 17, 'A+');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (18, 18, 'A');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (19, 19, 'B-');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (20, 20, 'B+');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (21, 21, 'A-');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (22, 22, 'A+');

INSERT INTO Grades (grade_id, enrollment_id, grade) 
VALUES (23, 23, 'C-');

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22101, 'Alice', 'Smith', 'alice.smith@example.com', '9876543210', TO_DATE('2020-01-15', 'YYYY-MM-DD'), 3);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22102, 'Bob', 'Johnson', 'bob.johnson@example.com', '7654321098', TO_DATE('2019-08-20', 'YYYY-MM-DD'), 4);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22103, 'Carol', 'Williams', 'carol.williams@example.com', '5432109876', TO_DATE('2020-03-05', 'YYYY-MM-DD'), 3);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22104, 'David', 'Brown', 'david.brown@example.com', '6543210987', TO_DATE('2020-05-20', 'YYYY-MM-DD'), 3);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22106, 'Zara', 'Montgomery', 'zara.montgomery@example.com', '4321098765', TO_DATE('2020-05-20', 'YYYY-MM-DD'), 1);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22107, 'Finnegan', 'Everest', 'finnegan.everest@example.com', '3210987654', TO_DATE('2020-05-21', 'YYYY-MM-DD'), 1);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22108, 'Octavius', 'Hawthorn', 'Octavius.Hawthorn@example.com', '2109876543', TO_DATE('2020-05-22', 'YYYY-MM-DD'), 2);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22109, 'Juniper', 'Sinclair', 'juniper.sinclair@example.com', '1098765432', TO_DATE('2020-05-23', 'YYYY-MM-DD'), 2);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22110, 'Orion', 'Hawthorne', 'orion.hawthorne@example.com', '3012301230', TO_DATE('2020-05-24', 'YYYY-MM-DD'), 5);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22111, 'Seraphina', 'Delgado', 'seraphina.delgado@example.com', '4123412341', TO_DATE('2020-05-25', 'YYYY-MM-DD'), 5);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22112, 'Cassius', 'Kensington', 'cassius.kensington@example.com', '4523452345', TO_DATE('2020-05-26', 'YYYY-MM-DD'), 6);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22113, 'Elara', 'Winslow', 'elara.winslow@example.com', '5634563456', TO_DATE('2020-05-27', 'YYYY-MM-DD'), 6);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22114, 'Phoenix', 'Santiago', 'phoenix.santiago@example.com', '6745674567', TO_DATE('2020-05-28', 'YYYY-MM-DD'), 7);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22115, 'Astrid', 'Montague', 'astrid.montague@example.com', '7856785678', TO_DATE('2020-05-29', 'YYYY-MM-DD'), 7);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22116, 'Calliope', 'Sinclair', 'Calliope.Sinclair@example.com', '8967896789', TO_DATE('2020-05-30', 'YYYY-MM-DD'), 8);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22117, 'Thaddeus', 'Montague', 'Thaddeus.Montague@example.com', '9078907890', TO_DATE('2020-05-31', 'YYYY-MM-DD'), 8);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22118, 'Isolde', 'Everest', 'Isolde.Everest@example.com', '189018901', TO_DATE('2020-06-01', 'YYYY-MM-DD'), 9);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22119, 'Percival', 'Kensington', 'Percival.Kensington@example.com', '2390123456', TO_DATE('2020-06-02', 'YYYY-MM-DD'), 9);

INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone, hire_date, department_id) 
VALUES (22120, 'Calista', 'Delacroix', 'Calista.Delacroix@example.com', '3401234567', TO_DATE('2020-06-03', 'YYYY-MM-DD'), 10);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (101, 22101);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (102, 22102);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (103, 22103);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (104, 22104);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (106, 22106);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (107, 22107);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (108, 22108);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (109, 22109);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (110, 22110);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (111, 22111);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (112, 22112);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (113, 22113);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (114, 22114);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (115, 22115);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (116, 22116);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (117, 22117);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (118, 22118);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (119, 22119);

INSERT INTO Course_Instructors (course_id, instructor_id) 
VALUES (120, 22120);

