CREATE DATABASE MilitaryBases;
USE MilitaryBases;

CREATE TABLE armories (
  id_arm INTEGER PRIMARY KEY IDENTITY(1,1),
  code_arm INTEGER NOT NULL,
  max_amount INTEGER NOT NULL,
  act_amount INTEGER NOT NULL,
  desc_arm NVARCHAR(50)
);

CREATE TABLE fuels (
  id_fuel INTEGER PRIMARY KEY IDENTITY(1,1),
  code_fuel INTEGER NOT NULL,
  max_vol INTEGER NOT NULL,
  act_vol INTEGER NOT NULL,
  desc_fuel NVARCHAR(50)
);

CREATE TABLE health_facilities (
  id_HF INTEGER PRIMARY KEY IDENTITY(1,1),
  code_HF INTEGER NOT NULL,
  max_amount INTEGER NOT NULL,
  act_amount INTEGER NOT NULL,
  desc_HF NVARCHAR(50)
);

CREATE TABLE parking_lots (
  id_PL INTEGER PRIMARY KEY IDENTITY(1,1),
  code_PL INTEGER NOT NULL,
  max_amount INTEGER NOT NULL,
  act_amount INTEGER NOT NULL,
  desc_PL NVARCHAR(50)
);

CREATE TABLE energies (
  id_energy INTEGER PRIMARY KEY IDENTITY(1,1),
  code_energy INTEGER NOT NULL,
  max_amount FLOAT NOT NULL,
  act_amount FLOAT NOT NULL,
  desc_energy NVARCHAR(50)
);

CREATE TABLE archivations (
  id_archiv INTEGER PRIMARY KEY IDENTITY(1,1),
  change_date DATE NOT NULL,
  state_pre NVARCHAR(100) NOT NULL,
  state_post NVARCHAR(100) NOT NULL,
  description NVARCHAR(200)
);

CREATE TABLE vehicles (
  id_veh INTEGER PRIMARY KEY IDENTITY(1,1),
  code_veh INTEGER NOT NULL,
  amount_veh INTEGER NOT NULL,
  desc_veh NVARCHAR(50)
);

CREATE TABLE storages (
  id_stor INTEGER PRIMARY KEY IDENTITY(1,1),
  code_stor INTEGER NOT NULL,
  max_cap FLOAT NOT NULL,
  act_cap FLOAT NOT NULL,
  desc_stor NVARCHAR(50)
);

CREATE TABLE accomodations (
  id_acc INTEGER PRIMARY KEY IDENTITY(1,1),
  code_acc INTEGER NOT NULL,
  max_people INTEGER NOT NULL,
  act_people INTEGER NOT NULL,
  desc_acc NVARCHAR(50)
);

CREATE TABLE perimeters (
  id_per INTEGER PRIMARY KEY IDENTITY(1,1),
  width_per FLOAT NOT NULL,
  length_per FLOAT NOT NULL,
  height_per FLOAT NOT NULL
);

CREATE TABLE locations (
  id_loc INTEGER PRIMARY KEY IDENTITY(1,1),
  latitude_loc FLOAT NOT NULL,
  longitude_loc FLOAT NOT NULL,
  height_loc FLOAT NOT NULL
);

CREATE TABLE people (
  id_person INTEGER PRIMARY KEY IDENTITY(1,1),
  f_name NVARCHAR(50) NOT NULL,
  l_surname NVARCHAR(50) NOT NULL,
  code_role INTEGER NOT NULL,
  access_level SMALLINT NOT NULL
);

CREATE TABLE capacities (
  id_cap INTEGER PRIMARY KEY IDENTITY(1,1),
  id_veh INTEGER NOT NULL,
  id_stor INTEGER NOT NULL,
  id_acc INTEGER NOT NULL,
  id_arm INTEGER NOT NULL,
  id_fuel INTEGER NOT NULL,
  id_HF INTEGER NOT NULL,
  id_PL INTEGER NOT NULL,
  id_energy INTEGER NOT NULL,
  id_archiv INTEGER NOT NULL,
  FOREIGN KEY (id_veh) REFERENCES vehicles(id_veh),
  FOREIGN KEY (id_stor) REFERENCES storages(id_stor),
  FOREIGN KEY (id_acc) REFERENCES accomodations(id_acc),
  FOREIGN KEY (id_arm) REFERENCES armories(id_arm),
  FOREIGN KEY (id_fuel) REFERENCES fuels(id_fuel),
  FOREIGN KEY (id_HF) REFERENCES health_facilities(id_HF),
  FOREIGN KEY (id_PL) REFERENCES parking_lots(id_PL),
  FOREIGN KEY (id_energy) REFERENCES energies(id_energy),
  FOREIGN KEY (id_archiv) REFERENCES archivations(id_archiv)
);

CREATE TABLE bases (
  id_base INTEGER PRIMARY KEY IDENTITY(1,1),
  id_loc INTEGER NOT NULL,
  id_per INTEGER NOT NULL,
  id_cap INTEGER NOT NULL,
  id_person INTEGER NOT NULL,
  name NVARCHAR(50) NOT NULL,
  FOREIGN KEY (id_loc) REFERENCES locations(id_loc),
  FOREIGN KEY (id_per) REFERENCES perimeters(id_per),
  FOREIGN KEY (id_cap) REFERENCES capacities(id_cap),
  FOREIGN KEY (id_person) REFERENCES people(id_person)
);

CREATE TABLE accesses (
  id_access INTEGER PRIMARY KEY IDENTITY(1,1),
  date_access DATE NOT NULL,
  code_access INTEGER NOT NULL,
  desc_access NVARCHAR(200),
  id_person INTEGER NOT NULL,
  id_base INTEGER NOT NULL,
  id_cap INTEGER NOT NULL,
  FOREIGN KEY (id_person) REFERENCES people(id_person),
  FOREIGN KEY (id_base) REFERENCES bases(id_base),
  FOREIGN KEY (id_cap) REFERENCES capacities(id_cap)
);
