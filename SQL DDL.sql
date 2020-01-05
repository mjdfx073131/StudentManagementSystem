DROP DATABASE IF EXISTS students;
CREATE DATABASE students DEFAULT CHARACTER SET utf8;

CREATE TABLE student(
  id int(11) NOT NULL AUTO_INCREMENT,
  studentID int(11) NOT NULL UNIQUE,
  name varchar(255) NOT NULL,
  age int(11) NOT NULL,
  sex varchar(255) NOT NULL,
  birthday date DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT into student values (1,2,'Kerry Zhou',2,'Male','2020-10-10');