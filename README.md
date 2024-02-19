# sql-challenge

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.


# Entity Relationship Diagram of the tables

departments
-
dept_no PK varchar(200) 
dept_name varchar(200)

dept_emp
-
emp_no varchar(200)  PK FK >- employees.emp_no
dept_no varchar(200)  PK FK >- departments.dept_no


dept_manager
----
dept_no varchar(200)  PK FK >- departments.dept_no
emp_no varchar(200)   PK FK >- employees.emp_no


employees
----
emp_no PK varchar(200)
emp_title_id varchar(200) FK >- titles.title_id
birth_date date
first_name varchar(200)
last_name varchar(200)
sex varchar(20)
hire_date date

salaries
----
emp_no varchar(200) PK FK >- employees.emp_no
salary PK int

titles
----
title_id varchar(200) PK
title varchar(200)


