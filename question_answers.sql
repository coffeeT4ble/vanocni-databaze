USE MilitaryBases;

--zakladna s nejvetsi lidskou kapacitou
SELECT b.name
FROM bases b
JOIN accommodations a ON b.id = a.base_id
WHERE a.max_people = (
    SELECT MAX(max_people)
    FROM accommodations
);

-- nejvysi asl
SELECT MAX(asl_height) AS highest_asl
FROM locations;

-- nejstarsi zakladna
SELECT name
FROM bases
WHERE foundat_date = (
    SELECT MIN(foundat_date)
    FROM bases
);

-- nejdelsi perimetr
SELECT b.name
FROM bases b
JOIN perimeters p ON b.id_per = p.id_per
WHERE p.len = (
    SELECT MAX(len)
    FROM perimeters
);

