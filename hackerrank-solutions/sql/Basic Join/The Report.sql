SELECT
   CASE WHEN G.GRADE > 7 THEN S.NAME ELSE 'NULL' END AS NAMEORNULL, G.GRADE, S.MARKS
FROM STUDENTS S
JOIN GRADES G ON S.MARKS BETWEEN G.MIN_MARK AND G.MAX_MARK
ORDER BY G.GRADE DESC, NAMEORNULL ASC, S.MARKS ASC;