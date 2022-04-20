create database if not exists publications;
use publications; 

Select pubs.pub_name, COUNT(titles.title_id) AS Titles
From publications.publishers pubs
LEFT JOIN publications.titles titles
ON pubs.pub_id = titles.pub_id
GROUP BY pubs.pub_name;

Select pubs.pub_name, COUNT(titles.title_id) AS Titles
From publications.publishers pubs
INNER JOIN publications.titles titles
ON pubs.pub_id = titles.pub_id
GROUP BY pubs.pub_name;

Select *
From publications.employee emp
LEFT JOIN publications.jobs job
ON emp.job_id = job.job_id
UNION 
Select *
From publications.employee emp
RIGHT JOIN publications.jobs job
ON emp.job_id = job.job_id;

SELECT a.employee_id, a.first_name, a.last_name, a.salary, b.department_name, c.city  
FROM employees a, departments b, locations c  
WHERE a.salary =  
(SELECT MAX(salary) 
FROM employees 
WHERE hire_date BETWEEN '01/01/2002' AND '12/31/2003') 
AND a.department_id=b.department_id 
AND b.location_id=c.location_id;