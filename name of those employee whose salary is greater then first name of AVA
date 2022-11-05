-- name of those employee whose salary is greater then first name of AVA
-- create
CREATE TABLE student (
  ID integer NOT NULL ,
  name TEXT NOT NULL,
  salary integer,
  primary KEY (ID)
);


-- insert
INSERT INTO student VALUES (1, 'Clark',200);
INSERT INTO student VALUES (2, 'Dave',300);
INSERT INTO student VALUES (3, 'Ava',200);
INSERT INTO student VALUES (4, 'ram',400);
INSERT INTO student VALUES (5, 'Ava',100);

-- fetch
select * from student where salary >(select max(salary) from student where name = "Ava" group by name);select * from student where salary>(SELECT max(salary) as salary FROM student where name="Ava" group by name);

