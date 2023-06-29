select * from worker;
insert into worker(worker_id,first_name,last_name,salary,joining_date,department)values
(001,"monika","arora",100000,'14-02-20 09.00.00','HR'),
(002,"niharika","verma",80000,'14-06-11 09.00.00','admin'),
(003,"vishal","singhal",300000,'14-02-20 09.00.00','HR'),
(004,"amitabh","singh",500000,'14-02-20 09.00.00','admin'),
(005,"vivek","bhati",500000,'14-06-11 09.00.00','admin'),
(006,"vipul","diwan",200000,'14-06-11 09.00.00','account'),
(007,"satish","kumar",75000,'14-01-20 09.00.00','account'),
(008,"geetika","chauhan",90000,'14-04-11 09.00.00','admin');
select * from worker;
-- write an sql query to "first name" form the worker table using the allias name <worker name>.
select first_name as worker_name from worker;
-- write an sql query to fetch unique values of depatment from the worker tables.
select distinct  department from worker;
-- write an sql query to print the first three characters of "first_name" from the worker table.
select SUBSTRING(first_name, 1, 3) as first_name_partial from worker;
-- write an sql query that fetches the unique values of department from the worker table and prints its lenght.
select distinct department, LENGTH(department) AS department_length from worker;
-- write an sql query to print all worker details from the worker table order by "first_name" assecnding and department descending.
select *
from worker
order by first_name asc, department desc;
-- write an sql query to print detail of workers with deprartment name admin.
select * from worker where department='admin';
-- write an sql query to print details  of the workers whose salary lies between lies between 100000 and 500000.
select * from worker where salary >=100000 and  salary <=500000;
-- write an sql query to fetch worker names with salaries>=50000 and <=100000.
select first_name,last_name,salary from worker where salary >=100000 and  salary <=500000;
select concat(first_name,' ',last_name) as worker_name ,salary from worker;
-- write an sql query to  show only even rows from worker table.
select * from worker where worker_id % 2= 0;
-- write in sql query to print details of the workers who joined in feb 2014.
select * from worker where year(joining_date)=2014;