DROP TABLE IF EXISTS student_performance;
use student_performance_db;
CREATE TABLE student_performance (
  id INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Age INT NOT NULL,
  Gender VARCHAR(10) NOT NULL,
  couser VARCHAR(100) NOT NULL,
  `pass or falls` VARCHAR(10) NOT NULL,
  attendance INT NOT NULL,
  `Behave in class` VARCHAR(50) NOT NULL
);

INSERT INTO student_performance
  (Name, Age, Gender, couser, `pass or falls`, attendance, `Behave in class`)
VALUES
  ('Aarav Patel', 15, 'Male', 'Robotics', 'pass', 92, 'Good'),
  ('Mia Sharma', 14, 'Female', 'Robotics', 'pass', 86, 'Excellent'),
  ('Vihaan Singh', 16, 'Male', 'Software Development', 'pass', 78, 'Good'),
  ('Zoya Khan', 15, 'Female', 'Software Development', 'falls', 61, 'Needs Improvement'),
  ('Arjun Mehta', 14, 'Male', 'Data Science', 'pass', 89, 'Excellent'),
  ('Sara Rodrigues', 16, 'Female', 'Data Science', 'pass', 82, 'Good'),
  ('Kabir Joshi', 15, 'Male', 'Mathematics', 'falls', 58, 'Needs Improvement'),
  ('Nour Al-Hassan', 14, 'Female', 'Mathematics', 'pass', 91, 'Excellent');
SELECT * from student_performance;