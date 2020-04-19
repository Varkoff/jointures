--1

SELECT
  w.firstname,
  w.lastname,
  p.role,
  t.name
FROM
  player p
  LEFT JOIN wizard w ON w.id = p.wizard_id
  LEFT JOIN team t ON t.id = p.team_id
ORDER BY
  t.name ASC,
  p.role,
  w.lastname,
  w.firstname;

--2
SELECT
  w.firstname,
  w.lastname
FROM
  wizard w
  LEFT JOIN player p ON p.wizard_id = w.id
WHERE
  p.role LIKE 'seeker'
ORDER BY
  w.firstname ASC,
  w.lastname ASC;

--3

SELECT
  w.firstname,
  w.lastname,
  p.role,
  t.name
FROM
  wizard w
  LEFT JOIN player p ON p.wizard_id = w.id
  LEFT JOIN team t ON p.team_id = t.id
WHERE
  t.name IS NULL
ORDER BY
  w.firstname ASC,
  w.lastname ASC;
