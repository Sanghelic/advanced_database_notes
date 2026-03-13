-- lesson 10

SELECT MAX(years_employed)
FROM employees;

SELECT role, AVG(years_employed) as Average_years_employed
FROM employees
GROUP BY role;

SELECT building, SUM(years_employed)
FROM employees
GROUP BY building;



--lesson 11


SELECT COUNT(*)
FROM employees
WHERE role = 'Artist';

SELECT role, COUNT(*)
FROM employees
GROUP BY role;

SELECT SUM(years_employed)
FROM employees
WHERE role = 'Engineer';


--freeSQL

SELECT COUNT(DISTINCT shape) number_of_shapes,
       STDDEV(DISTINCT weight) distinct_weight_stddev
FROM bricks;

SELECT shape, SUM(weight) shape_weight
FROM bricks
GROUP BY shape;

SELECT shape, SUM(weight)
FROM bricks
GROUP BY shape
HAVING SUM(weight) < 4;