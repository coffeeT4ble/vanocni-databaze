USE MilitaryBases;

INSERT INTO armories (code_arm, max_amnt, act_amnt, desc_arm) VALUES
(1, 100, 10, "Base 1 Armory"),
(2, 100, 11, "Base 2 Armory"),
(3, 100, 12, "Base 3 Armory"),
(4, 100, 13, "Base 4 Armory"),
(5, 100, 14, "Base 5 Armory"),
(6, 100, 15, "Base 6 Armory"),
(7, 100, 16, "Base 7 Armory"),
(8, 100, 17, "Base 8 Armory"),
(9, 100, 18, "Base 9 Armory"),
(10, 100, 19, "Base 10 Armory");

INSERT INTO fuel (code_fuel, max_vol, act_vol, desc_fuel) VALUES
(1, 100, 10, "Base 1 Fuel"),
(2, 100, 11, "Base 2 Fuel"),
(3, 100, 12, "Base 3 Fuel"),
(4, 100, 13, "Base 4 Fuel"),
(5, 100, 14, "Base 5 Fuel"),
(6, 100, 15, "Base 6 Fuel"),
(7, 100, 16, "Base 7 Fuel"),
(8, 100, 17, "Base 8 Fuel"),
(9, 100, 18, "Base 9 Fuel"),
(10, 100, 19, "Base 10 Fuel");

INSERT INTO health_facilities (code_hf, max_amnt, act_amnt, desc_hf) VALUES
(1, 100, 10, "Base 1 Health Facilities"),
(2, 100, 11, "Base 2 Health Facilities"),
(3, 100, 12, "Base 3 Health Facilities"),
(4, 100, 13, "Base 4 Health Facilities"),
(5, 100, 14, "Base 5 Health Facilities"),
(6, 100, 15, "Base 6 Health Facilities"),
(7, 100, 16, "Base 7 Health Facilities"),
(8, 100, 17, "Base 8 Health Facilities"),
(9, 100, 18, "Base 9 Health Facilities"),
(10, 100, 19, "Base 10 Health Facilities");

INSERT INTO parking_lots (code_pl, max_amnt, act_amnt, desc_pl) VALUES
(1, 100, 10, "Base 1 Parking Lots"),
(2, 100, 11, "Base 2 Parking Lots"),
(3, 100, 12, "Base 3 Parking Lots"),
(4, 100, 13, "Base 4 Parking Lots"),
(5, 100, 14, "Base 5 Parking Lots"),
(6, 100, 15, "Base 6 Parking Lots"),
(7, 100, 16, "Base 7 Parking Lots"),
(8, 100, 17, "Base 8 Parking Lots"),
(9, 100, 18, "Base 9 Parking Lots"),
(10, 100, 19, "Base 10 Parking Lots");

INSERT INTO energies (code_energy, max_amnt, act_amnt, desc_energy) VALUES
(1, 100, 10, "Base 1 Energies"),
(2, 100, 11, "Base 2 Energies"),
(3, 100, 12, "Base 3 Energies"),
(4, 100, 13, "Base 4 Energies"),
(5, 100, 14, "Base 5 Energies"),
(6, 100, 15, "Base 6 Energies"),
(7, 100, 16, "Base 7 Energies"),
(8, 100, 17, "Base 8 Energies"),
(9, 100, 18, "Base 9 Energies"),
(10, 100, 19, "Base 10 Energies");

INSERT INTO archivation (chng_date, state_pre, state_post, desc_arch) VALUES
("2021-01-01", "Pre", "Post", "Base 1 Archivation"),
("2021-02-01", "Pre", "Post", "Base 2 Archivation"),
("2021-03-01", "Pre", "Post", "Base 3 Archivation"),
("2021-04-01", "Pre", "Post", "Base 4 Archivation"),
("2021-05-01", "Pre", "Post", "Base 5 Archivation"),
("2021-06-01", "Pre", "Post", "Base 6 Archivation"),
("2021-07-01", "Pre", "Post", "Base 7 Archivation"),
("2021-08-01", "Pre", "Post", "Base 8 Archivation"),
("2021-09-01", "Pre", "Post", "Base 9 Archivation"),
("2021-10-01", "Pre", "Post", "Base 10 Archivation");

INSERT INTO vehicles (code_veh, amount, desc_veh) VALUES
(1, 91, "Base 1 Vehicles"),
(2, 92, "Base 2 Vehicles"),
(3, 93, "Base 3 Vehicles"),
(4, 104, "Base 4 Vehicles"),
(5, 102, "Base 5 Vehicles"),
(6, 107, "Base 6 Vehicles"),
(7, 103, "Base 7 Vehicles"),
(8, 109, "Base 8 Vehicles"),
(9, 102, "Base 9 Vehicles"),
(10, 101, "Base 10 Vehicles");

INSERT INTO storages (code_stor, max_cap, act_cap, desc_stor) VALUES
(1, 100, 10, "Base 1 Storages"),
(2, 100, 11, "Base 2 Storages"),
(3, 100, 12, "Base 3 Storages"),
(4, 100, 13, "Base 4 Storages"),
(5, 100, 14, "Base 5 Storages"),
(6, 100, 15, "Base 6 Storages"),
(7, 100, 16, "Base 7 Storages"),
(8, 100, 17, "Base 8 Storages"),
(9, 100, 18, "Base 9 Storages"),
(10, 100, 19, "Base 10 Storages");

INSERT INTO accomodations (code_acc, max_people, act_people, desc_acc) VALUES
(1, 100, 10, "Base 1 Accomodations"),
(2, 101, 11, "Base 2 Accomodations"),
(3, 102, 12, "Base 3 Accomodations"),
(4, 103, 13, "Base 4 Accomodations"),
(5, 104, 14, "Base 5 Accomodations"),
(6, 105, 15, "Base 6 Accomodations"),
(7, 106, 16, "Base 7 Accomodations"),
(8, 107, 17, "Base 8 Accomodations"),
(9, 108, 18, "Base 9 Accomodations"),
(10, 109, 19, "Base 10 Accomodations");

INSERT INTO perimeters (wid, len, hei) VALUES
(10, 101, 10),
(29, 102, 11),
(38, 103, 12),
(47, 104, 13),
(56, 105, 14),
(65, 106, 15),
(74, 107, 16),
(83, 108, 17),
(92, 109, 18),
(101, 110, 19);

INSERT INTO locations (longitude, latitude, asl_height) VALUES
(100, 80, 800),
(101, 81, 801),
(102, 82, 802),
(103, 83, 803),
(104, 84, 804),
(105, 85, 805),
(106, 86, 806),
(107, 87, 807),
(108, 88, 808),
(109, 89, 809);

INSERT INTO people (f_name, l_name, code_role, access_level, birth_date) VALUES
("John", "Doe", 1, 1, "2000-01-01"),
("Jane", "Goe", 2, 2, "2000-02-01"),
("Bob", "Joe", 3, 3, "2000-03-01"),
("Alice", "Foe", 4, 4, "2000-04-01"),
("Charlie", "Poe", 5, 5, "2000-05-01"),
("Eve", "Moe", 6, 6, "2000-06-01"),
("Frank", "Woe", 7, 7, "2000-07-01"),
("Grace", "Noe", 8, 8, "2000-08-01"),
("Hank", "Koe", 9, 9, "2000-09-01"),
("Ivy", "Zoe", 10, 10, "2000-10-01");

INSERT INTO capacities (id_veh, id_stor, id_acc, id_arm, id_fuel, id_hf, id_pl, id_energy, id_archiv) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 2, 2, 2, 2, 2, 2, 2),
(3, 3, 3, 3, 3, 3, 3, 3, 3),
(4, 4, 4, 4, 4, 4, 4, 4, 4),
(5, 5, 5, 5, 5, 5, 5, 5, 5),
(6, 6, 6, 6, 6, 6, 6, 6, 6),
(7, 7, 7, 7, 7, 7, 7, 7, 7),
(8, 8, 8, 8, 8, 8, 8, 8, 8),
(9, 9, 9, 9, 9, 9, 9, 9, 9),
(10, 10, 10, 10, 10, 10, 10, 10, 10);

INSERT INTO bases (id_loc, id_per, id_cap, id_person, name) VALUES
(1, 1, 1, 1, "Base 1"),
(2, 2, 2, 2, "Base 2"),
(3, 3, 3, 3, "Base 3"),
(4, 4, 4, 4, "Base 4"),
(5, 5, 5, 5, "Base 5"),
(6, 6, 6, 6, "Base 6"),
(7, 7, 7, 7, "Base 7"),
(8, 8, 8, 8, "Base 8"),
(9, 9, 9, 9, "Base 9"),
(10, 10, 10, 10, "Base 10");

INSERT INTO accesses (date_acce, code_acce, desc_acce, id_person, id_base, id_cap) VALUES
("2000-01-01", 1, "Access 1", 1, 1, 1),
("2000-02-01", 2, "Access 2", 2, 2, 2),
("2000-03-01", 3, "Access 3", 3, 3, 3),
("2000-04-01", 4, "Access 4", 4, 4, 4),
("2000-05-01", 5, "Access 5", 5, 5, 5),
("2000-06-01", 6, "Access 6", 6, 6, 6),
("2000-07-01", 7, "Access 7", 7, 7, 7),
("2000-08-01", 8, "Access 8", 8, 8, 8),
("2000-09-01", 9, "Access 9", 9, 9, 9),
("2000-10-01", 10, "Access 10", 10, 10, 10);
