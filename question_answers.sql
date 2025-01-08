USE MilitaryBases;

-- Která vojenská základna má největší celkovou kapacitu ubytování?

SELECT b.name
FROM bases b
JOIN accommodations a ON b.id = a.base_id
WHERE a.max_people = (
    SELECT MAX(max_people)
    FROM accommodations
);

-- Které vybavení je evidováno v největším počtu na jedné základně?

SELECT b.name, e.desc_energy, SUM(e.max_amnt) AS total_amount
FROM bases b
JOIN capacities c ON b.id_base = c.id_base
JOIN energies e ON c.id_energy = e.id_energy
GROUP BY b.name, e.desc_energy
ORDER BY total_amount DESC
LIMIT 1;

-- Která základna byla založena jako první?

SELECT name
FROM bases
WHERE foundat_date = (
    SELECT MIN(foundat_date)
    FROM bases
);

-- Zobrazte nejvyšší nadmořskou výšku z evidovaných základen.

SELECT MAX(asl_height) AS highest_asl
FROM locations;

-- Vyberte jednu základnu podle názvu a zobrazte veškeré vybavení, které na ní je.

SELECT b.name, a.desc_acc, p.desc_pl, s.desc_stor, h.desc_hf, v.desc_veh, f.desc_fuel, ar.desc_arm
FROM bases b
JOIN capacities c ON b.id_base = c.id_base
JOIN accomodations a ON c.id_acc = a.id_acc
JOIN parking_lots p ON c.id_pl = p.id_pl
JOIN storages s ON c.id_stor = s.id_stor
JOIN health_facilities h ON c.id_hf = h.id_hf
JOIN vehicles v ON c.id_veh = v.id_veh
JOIN fuels f ON c.id_fuel = f.id_fuel
JOIN armories ar ON c.id_arm = ar.id_arm
WHERE b.name = 'Název základny'; -- Zde změňte na požadovaný název základny

-- Které základny mají aktuálně obsazenost ubytování větší než 80 %?

SELECT b.name
FROM bases b
JOIN accomodations a ON b.id_base = a.id_base
WHERE (a.act_people / a.max_people) > 0.8;

-- Na které základně je nejvíce skladovacích prostor (v m²)?

SELECT b.name
FROM bases b
JOIN capacities c ON b.id_base = c.id_base
JOIN storages s ON c.id_stor = s.id_stor
WHERE s.max_cap = (
    SELECT MAX(max_cap)
    FROM storages
);

-- Který typ obranného systému se v databázi objevuje nejčastěji?

SELECT ar.desc_arm, COUNT(*) AS frequency
FROM armories ar
JOIN capacities c ON ar.id_arm = c.id_arm
GROUP BY ar.desc_arm
ORDER BY frequency DESC
LIMIT 1;

-- Zobrazte veškeré informace o základně, která je geograficky nejsevernější.

SELECT b.name, l.latitude, l.longitude, l.asl_height, p.len
FROM bases b
JOIN locations l ON b.id_loc = l.id_loc
JOIN perimeters p ON b.id_per = p.id_per
WHERE l.latitude = (
    SELECT MAX(latitude)
    FROM locations
);
