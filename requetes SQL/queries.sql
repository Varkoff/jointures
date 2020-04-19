SELECT
  t.name,
  COUNT(*) AS nb_student
FROM
  team t
  JOIN player p ON p.team_id = t.id
GROUP BY
  t.name
ORDER BY
  nb_student DESC;

SELECT
  t.name
FROM
  team t
  JOIN player p ON p.team_id = t.id
GROUP BY
  t.name
  HAVING COUNT(*) >= 14
ORDER BY
  t.name ASC;

SELECT
  CONCAT(firstname, ' ', lastname) AS fullname,
  DATE_FORMAT(p.enrollment_date, '%W %M %Y') AS enrollment_day,
  t.name
FROM
  player p
  JOIN wizard w ON p.wizard_id = w.id
  JOIN team t on p.team_id = t.id
WHERE
  DATE_FORMAT(p.enrollment_date, '%W') LIKE 'Monday'
  AND t.name LIKE 'Gryffindor'
ORDER BY
  DATE(p.enrollment_date);
