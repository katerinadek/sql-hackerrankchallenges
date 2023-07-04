SELECT
  CASE WHEN grades.grade>=8 THEN students.name
        ELSE NULL 
  END AS name,
  grades.grade,
  students.marks
FROM
  students
JOIN
  grades ON students.marks BETWEEN grades.Min_Mark AND grades.Max_Mark
ORDER BY
  CASE
    WHEN grades.grade >= 8 THEN grades.grade
    ELSE NULL
  END DESC,
  CASE
    WHEN grades.grade >= 8 THEN students.name
    ELSE NULL
  END ASC,
  CASE
    WHEN grades.grade < 8 THEN grades.grade
    ELSE NULL
  END DESC,
  CASE
    WHEN grades.grade < 8 THEN students.marks
    ELSE NULL
  END ASC;