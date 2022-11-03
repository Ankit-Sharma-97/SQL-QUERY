
-- create
CREATE TABLE student (
  ID integer NOT NULL ,
  name TEXT NOT NULL,
  primary KEY (ID)
);
CREATE TABLE exam (
  s_id int,
  sub TEXT NOT NULL,
  foreign KEY (s_id)  references student(ID)
);

-- insert
INSERT INTO student VALUES (1, 'Clark');
INSERT INTO student VALUES (2, 'Dave');
INSERT INTO student VALUES (3, 'Ava');

INSERT INTO exam VALUES (1, 'math');
INSERT INTO exam VALUES (2, 'bio');
INSERT INTO exam VALUES (3, 'eng');
INSERT INTO exam VALUES (3, 'eng');


-- fetch
SELECT * FROM student;
SELECT student.name,student.ID,exam.sub, count(exam.sub) as num_of_sub FROM student join exam on student.ID=exam.s_id 
group by exam.sub,exam.s_id order by ID desc;
