CREATE DATABASE MilitaryBases;
USE MilitaryBases;

CREATE TABLE Armories{
  id_arm INTEGER PRIMARY KEY AUTO_INCREMENT,
  code_arm INTEGER NOT NULL,
  max_amount INTEGER NOT NULL,
  CHECK (max_amount > 0),
  act_amount INTEGER NOT NULL,
  CHECK (act_amount <= max_amount AND act_amount > 0),
  desc_arm NVARCHAR(50)
};
CREATE TABLE Fuel(
  id_fuel INTEGER PRIMARY KEY AUTO_INCREMENT,
  code_fuel INTEGER NOT NULL,
  max_vol INTEGER NOT NULL,
  CHECK (max_vol > 0),
  act_vol INTEGER NOT NULL,
  CHECK (act_vol <= max_vol AND act_vol > 0),
  desc_fuel NVARCHAR(50)
);
CREATE TABLE Health_facilities(
  id_HF INTEGER PRIMARY KEY AUTO_INCREMENT,
  code_HF INTEGER NOT NULL,
  max_amount INTEGER NOT NULL,
  CHECK (max_amount > 0),
  act_amount INTEGER NOT NULL,
  CHECK (act_amount <= max_amount AND act_amount > 0),
  desc_HF NVARCHAR(50)
);
CREATE TABLE ParkingLots(
  id_PL INTEGER PRIMARY KEY AUTO_INCREMENT,
  code_PL INTEGER NOT NULL,
  max_amount INTEGER NOT NULL,
  CHECK (max_amount > 0),
  act_amount INTEGER NOT NULL,
  CHECK (act_amount <= max_amount AND act_amount > 0),
  desc_pl NVARCHAR(50)
);
CREATE TABLE Energy(
  id_energy INTEGER PRIMARY KEY AUTO_INCREMENT,
  code_energy INTEGER NOT NULL,
  max_amount FLOAT NOT NULL,
  CHECK (max_amount > 0),
  act_amount FLOAT NOT NULL,
  CHECK (act_amount <= max_amount AND act_amount > 0),
  desc_energy NVARCHAR(50)
);
CREATE TABLE Archivation(
  id_archiv INTEGER PRIMARY KEY AUTO_INCREMENT,
  change_date DATE NOT NULL,
  state_pre NVARCHAR(100) NOT NULL,
  state_post NVARCHAR(100) NOT NULL,
  CHECK (state_pre != state_post),
  description NVARCHAR(200)
);
CREATE TABLE Vehicles(
  id_veh INTEGER PRIMARY KEY AUTO_INCREMENT,
  code_veh INTEGER NOT NULL,
  amount_veh INTEGER NOT NULL,
  CHECK (amount_veh > 0),
  desc_veh NVARCHAR(50)
);
CREATE TABLE Storage(
  id_stor INTEGER PRIMARY KEY AUTO_INCREMENT,
  code_stor INTEGER NOT NULL,
  max_cap FLOAT NOT NULL,
  CHECK (max_cap > 0),
  act_cap FLOAT NOT NULL,
  CHECK (act_cap <= max_cap AND act_cap > 0),
  desc_stor NVARCHAR(50)
);
CREATE TABLE Accomodations(
  id_acc INTEGER PRIMARY KEY AUTO_INCREMENT,
  code_acc INTEGER NOT NULL,
  max_people INTEGER NOT NULL,
  CHECK (max_people > 0),
  act_people INTEGER NOT NULL,
  CHECK (act_people <= max_people AND act_people > 0),
  desc_acc NVARCHAR(50)
);
CREATE TABLE Perimeters(
  id_per INTEGER PRIMARY KEY AUTO_INCREMENT,
  width_per FLOAT NOT NULL,
  CHECK (width_per > 0),
  length_per FLOAT NOT NULL,
  CHECK (length_per > 0),
  height_per FLOAT NOT NULL,
  CHECK (height_per > 0)
);
CREATE TABLE Locations(
  id_loc INTEGER PRIMARY KEY AUTO_INCREMENT,
  latitude_loc FLOAT NOT NULL,
  longitude_loc FLOAT NOT NULL,
  height_loc FLOAT NOT NULL
);
CREATE TABLE People(
  id_person INTEGER PRIMARY KEY AUTO_INCREMENT,
  f_name NVARCHAR(50) NOT NULL,
  l_surname NVARCHAR(50) NOT NULL,
  code_role INTEGER NOT NULL,
  access_level SMALLINT NOT NULL,
  CHECK (access_level > 0)
);
CREATE TABLE Capacities(
  id_cap INTEGER PRIMARY KEY AUTO_INCREMENT,
  id_veh INTEGER NOT NULL,
  id_stor INTEGER NOT NULL,
  id_acc INTEGER NOT NULL,
  id_arm INTEGER NOT NULL,
  id_fuel INTEGER NOT NULL,
  id_HF INTEGER NOT NULL,
  id_PL INTEGER NOT NULL,
  id_energy INTEGER NOT NULL,
  id_archiv INTEGER NOT NULL,
  FOREIGN KEY (id_veh) REFERENCES Vehicles(id_veh),
  FOREIGN KEY (id_stor) REFERENCES Storage(id_stor),
  FOREIGN KEY (id_acc) REFERENCES Accomodations(id_acc),
  FOREIGN KEY (id_arm) REFERENCES Armories(id_arm),
  FOREIGN KEY (id_fuel) REFERENCES Fuel(id_fuel),
  FOREIGN KEY (id_HF) REFERENCES Health_facilities(id_HF),
  FOREIGN KEY (id_PL) REFERENCES ParkingLots(id_PL),
  FOREIGN KEY (id_energy) REFERENCES Energy(id_energy),
  FOREIGN KEY (id_archiv) REFERENCES Archivation(id_archiv)
);
CREATE TABLE Bases(
  id_base INTEGER PRIMARY KEY AUTO_INCREMENT,
  id_loc INTEGER NOT NULL,
  id_per INTEGER NOT NULL,
  id_ cap INTEGER NOT NULL,
  id_person INTEGER NOT NULL,
  name NVARCHAR(50) NOT NULL,
  FOREIGN KEY (id_loc) REFERENCES Locations(id_loc),
  FOREIGN KEY (id_per) REFERENCES Perimeters(id_per),
  FOREIGN KEY (id_cap) REFERENCES Capacities(id_cap),
  FOREIGN KEY (id_person) REFERENCES People(id_person)
);
CREATE TABLE Accesses(
  id_access INTEGER PRIMARY KEY AUTO_INCREMENT,
  date_access DATE NOT NULL,
  code_access INTEGER NOT NULL,
  desc_access NVARCHAR(200),
  id_person INTEGER NOT NULL,
  id_base INTEGER NOT NULL,
  id_cap INTEGER NOT NULL,
  FOREIGN KEY (id_person) REFERENCES People(id_person),
  FOREIGN KEY (id_base) REFERENCES Bases(id_base),
  FOREIGN KEY (id_cap) REFERENCES Capacities(id_cap)
);
