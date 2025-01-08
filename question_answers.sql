USE MilitaryBases;

--Základna s největší lidskou kapacitou
SELECT b.name
FROM bases b
JOIN accommodations a ON b.id = a.base_id
WHERE a.max_people = (
    SELECT MAX(max_people)
    FROM accommodations
);

-- Nejvyšší asl
SELECT MAX(asl_height) AS highest_asl
FROM locations;

-- Nejstarší základna
SELECT name
FROM bases
WHERE foundat_date = (
    SELECT MIN(foundat_date)
    FROM bases
);

-- Nejdelší perimetr
SELECT b.name
FROM bases b
JOIN perimeters p ON b.id_per = p.id_per
WHERE p.len = (
    SELECT MAX(len)
    FROM perimeters
);
