drop table customers;
drop table orders;
drop table shippings;

CREATE TABLE Users (
users_id INT PRIMARY KEY,
  name varchar(255),
  email varchar(255),
  password varchar(255),
  role varchar(255),
  created_at datetime
);

CREATE TABLE Quizzes (
  quiz_id INT PRIMARY KEY,
  title varchar(255),
  description TEXT,
  total_points INT,
  created_by INT,
  created_at DATETIME
);

CREATE TABLE Questions (
  question_id INT AUTO INCREMENT PRIMARY KEY,
  quiz_id INT,
  question_text TEXT,
  points INT
);

CREATE TABLE Answers (
  answer_id INT AUTO INCREMENT PRIMARY KEY,
  question_id INT,
  answer_text TEXT,
  is_correct BOOLEAN
);

CREATE TABLE User_Attempts (
  user_attempt_id INT AUTO INCREMENT PRIMARY KEY,
  user_id INT,
  quiz_id INT,
  score INT,
  started_at DATETIME,
  finished_at DATETIME,
  feedback TEXT
);



INSERT INTO Users (users_id, name, email, password, role, created_at)
VALUES
(1, 'Nash', 'Nash@gmail.com', '4525235423', 'student', '2023-01-01 10:00:00'),
(2, 'Angelo', 'Angelo@gmail.com', '12312356', 'teacher', '2023-02-01 12:00:00'),
(3, 'Jeiko', 'Jeiko@gmail.com', '867865789', 'student', '2023-03-01 14:00:00'),
(4, 'Galleto', 'Gallero@gmail.com.com', '8765435', 'student', '2023-04-01 16:00:00'),
(5, 'Raniel', 'raniel@gmail.com', '8756554', 'teacher', '2023-05-01 18:00:00');

INSERT INTO Quizzes (quiz_id, title, description, total_points, created_by, created_at)
VALUES
(1, 'Introduction to Programming', 'A quiz on basic programming concepts', 50, 2, '2023-01-15 10:00:00'),
(2, 'Data Structures', 'A quiz on data structures and algorithms', 75, 2, '2023-02-15 12:00:00'),
(3, 'Object-Oriented Programming', 'A quiz on object-oriented programming concepts', 100, 2, '2023-03-15 14:00:00'),
(4, 'Web Development Basics', 'A quiz on HTML, CSS, and JavaScript', 80, 2, '2023-04-15 16:00:00'),
(5, 'Database Fundamentals', 'A quiz on database concepts and SQL', 60, 2, '2023-05-15 18:00:00');

INSERT INTO Questions (question_id ,quiz_id, question_text, points)
VALUES
(1, 1, 'What is the purpose of a variable in programming?', 10),
(2, 1, 'What is the difference between a compiler and an interpreter?', 15),
(3, 2, 'Explain the concept of a linked list.', 20),
(4, 2, 'What is the difference between a stack and a queue?', 20),
(5, 3, 'What is inheritance in object-oriented programming?', 25),
(6, 3, 'What is the purpose of a CSS style sheet?', 10),
(7, 4, 'Explain the concept of event handling in JavaScript.', 15),
(8, 4, 'What is the difference between a primary key and a foreign key?', 20),
(9, 5, 'Write a SQL query to retrieve all records from a table.', 25);

INSERT INTO Answers (answer_id, question_id, answer_text, is_correct)
VALUES
(1, 1, 'A variable is used to store data.', true),
(2, 1, 'A variable is used to perform calculations.', false),
(3, 2, 'A compiler translates the entire program into machine code before execution, while an interpreter translates each line of code as it is executed.', true),
(4, 2, 'A compiler is used for debugging programs, while an interpreter is used for running programs.', false),
(5, 3, 'A linked list is a linear data structure where elements are stored in a non-contiguous memory location.', true),
(6, 3, 'A linked list is a data structure that always stores elements in a contiguous memory location.', false),
(7, 4, 'A stack follows a LIFO (Last-In-First-Out) order, while a queue follows a FIFO (First-In-First-Out) order.', true),
(8, 4, 'Both stacks and queues follow a FIFO (First-In-First-Out) order.', false),
(9, 5, 'Inheritance is a mechanism where one class acquires the properties and methods of another class.', true);

INSERT INTO User_Attempts (user_attempt_id, user_id, quiz_id, score, started_at, finished_at, feedback)
VALUES
(1, 1, 1, 45, '2023-01-20 10:00:00', '2023-01-20 11:00:00', 'Great job! You answered 4 out of 5 questions correctly.'),
(2, 2, 1, 30, '2023-01-25 12:00:00', '2023-01-25 13:00:00', 'You can improve your understanding of variables and data types.'),
(3, 3, 2, 60, '2023-02-10 14:00:00', '2023-02-10 15:00:00', 'Good attempt! Review the concepts of stacks and queues.'),
(4, 4, 3, 75, '2023-03-15 16:00:00', '2023-03-15 17:00:00', 'Excellent work! You have a strong understanding of object-oriented programming.'),
(5, 5, 4, 55, '2023-04-20 18:00:00', '2023-04-20 19:00:00', 'You could improve your knowledge of CSS styling.'),
(6, 3, 5, 40, '2023-05-15 20:00:00', '2023-05-15 21:00:00', 'Review database normalization concepts.');



