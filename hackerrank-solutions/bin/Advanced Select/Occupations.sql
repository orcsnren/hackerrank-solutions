SELECT MIN(Doctor),MIN(Professor),MIN(Singer),MIN(Actor)
FROM(
SELECT CASE WHEN OCCUPATION='Doctor' THEN NAME END AS Doctor,
       CASE WHEN OCCUPATION='Actor' THEN NAME END AS Actor,
       CASE WHEN OCCUPATION='Singer' THEN NAME END AS Singer,
       CASE WHEN OCCUPATION='Professor' THEN NAME END AS Professor,
       RANK() OVER(PARTITION BY OCCUPATION ORDER BY NAME ASC) AS row_number
       FROM OCCUPATIONS) 
GROUP BY row_number
ORDER BY row_number;