-- lesson 6

SELECT title, domestic_sales, international_sales 
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;


SELECT title, domestic_sales, international_sales
FROM Movies
JOIN Boxoffice
ON Movies.id = Boxoffice.movie_id
WHERE international_sales > domestic_sales;


SELECT title, rating
FROM Movies
JOIN Boxoffice
ON Movies.id = Boxoffice.movie_id
ORDER BY rating DESC;


--lesson 7


SELECT DISTINCT building
FROM employees;

SELECT * from buildings;


SELECT DISTINCT building_name, role
FROM buildings
LEFT JOIN employees
ON building_name = building;


-- datalemur excercise 

SELECT p.page_id
FROM pages p
LEFT JOIN page_likes pl
  ON p.page_id = pl.page_id
WHERE pl.page_id IS NULL
ORDER BY p.page_id;