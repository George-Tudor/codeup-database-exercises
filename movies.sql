SHOW DATABASES;

USE movies;

SELECT title, person_name, budget FROM movie m
JOIN movie_cast mc ON m.movie_id = mc.movie_id
JOIN person p ON mc.person_id = p.person_id
WHERE person_name = 'Harrison Ford' ORDER BY budget DESC;

SELECT title, person_name, budget FROM movie m
JOIN movie_crew mc ON m.movie_id = mc.movie_id
JOIN person p ON mc.person_id = p.person_id
WHERE person_name = 'Harrison Ford' ORDER BY budget DESC;

SELECT title, person_name, character_name FROM movie m
JOIN movie_cast mc ON m.movie_id = mc.movie_id
JOIN person p ON mc.person_id = p.person_id
# JOIN department d on mc.department_id = d.department_id
WHERE title = 'Live Free or Die Hard' LIMIT 10;
