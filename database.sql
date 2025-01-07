CREATE DATABASE MilitaryBases;
USE MilitaryBases;

CREATE TABLE armories{
  id_arm INTEGER PRIMARY KEY AUTO_INCREMENT,
  code_arm INTEGER NOT NULL,
  max_amnt INTEGER NOT NULL,
  CHECK (max_amnt > 0),
  act_amnt INTEGER NOT NULL,
  CHECK (act_amnt <= max_amnt AND act_amnt > 0),
  desc_arm NVARCHAR(50)
};
CREATE TABLE fuels(
  id_fuel INTEGER PRIMARY KEY AUTO_INCREMENT,
  code_fuel INTEGER NOT NULL,
  max_vol INTEGER NOT NULL,
  CHECK (max_vol > 0),
  act_vol INTEGER NOT NULL,
  CHECK (act_vol <= max_vol AND act_vol > 0),
  desc_fuel NVARCHAR(50)
);
CREATE TABLE health_facilities(
  id_hf INTEGER PRIMARY KEY AUTO_INCREMENT,
  code_hf INTEGER NOT NULL,
  max_amnt INTEGER NOT NULL,
  CHECK (max_amnt > 0),
  act_amnt INTEGER NOT NULL,
  CHECK (act_amnt <= max_amnt AND act_amnt > 0),
  desc_hf NVARCHAR(50)
);
CREATE TABLE parking_lots(
  id_pl INTEGER PRIMARY KEY AUTO_INCREMENT,
  code_pl INTEGER NOT NULL,
  max_amnt INTEGER NOT NULL,
  CHECK (max_amnt > 0),
  act_amnt INTEGER NOT NULL,
  CHECK (act_amnt <= max_amnt AND act_amnt > 0),
  desc_pl NVARCHAR(50)
);
CREATE TABLE energies(
  id_energy INTEGER PRIMARY KEY AUTO_INCREMENT,
  code_energy INTEGER NOT NULL,
  max_amnt FLOAT NOT NULL,
  CHECK (max_amnt > 0),
  act_amnt FLOAT NOT NULL,
  CHECK (act_amnt <= max_amnt AND act_amnt > 0),
  desc_energy NVARCHAR(50)
);
CREATE TABLE archivations(
  id_archiv INTEGER PRIMARY KEY AUTO_INCREMENT,
  chng_date DATE NOT NULL,
  state_pre NVARCHAR(100) NOT NULL,
  state_post NVARCHAR(100) NOT NULL,
  CHECK (state_pre != state_post),
  desc_arch NVARCHAR(200)
);
CREATE TABLE vehicles(
  id_veh INTEGER PRIMARY KEY AUTO_INCREMENT,
  code_veh INTEGER NOT NULL,
  amount INTEGER NOT NULL,
  CHECK (amount > 0),
  desc_veh NVARCHAR(50)
);
CREATE TABLE storages(
  id_stor INTEGER PRIMARY KEY AUTO_INCREMENT,
  code_stor INTEGER NOT NULL,
  max_cap FLOAT NOT NULL,
  CHECK (max_cap > 0),
  act_cap FLOAT NOT NULL,
  CHECK (act_cap <= max_cap AND act_cap > 0),
  desc_stor NVARCHAR(50)
);
CREATE TABLE accomodations(
  id_acc INTEGER PRIMARY KEY AUTO_INCREMENT,
  code_acc INTEGER NOT NULL,
  max_people INTEGER NOT NULL,
  CHECK (max_people > 0),
  act_people INTEGER NOT NULL,
  CHECK (act_people <= max_people AND act_people > 0),
  desc_acc NVARCHAR(50)
);
CREATE TABLE perimeters(
  id_per INTEGER PRIMARY KEY AUTO_INCREMENT,
  wid FLOAT NOT NULL,
  CHECK (wid > 0),
  len FLOAT NOT NULL,
  CHECK (len > 0),
  hei FLOAT NOT NULL,
  CHECK (hei > 0)
);
CREATE TABLE locations(
  id_loc INTEGER PRIMARY KEY AUTO_INCREMENT,
  latitude FLOAT NOT NULL,
  longitude FLOAT NOT NULL,
  asl_height FLOAT NOT NULL,
  CHECK(asl_height >= -400 AND asl_height <= 7000),
  CHECK(latitude >= -90 AND latitude <= 90),
  CHECK(longtitude >= -180 AND longtitude <= 180)
);
CREATE TABLE people(
  id_person INTEGER PRIMARY KEY AUTO_INCREMENT,
  f_name NVARCHAR(50) NOT NULL,
  l_name NVARCHAR(50) NOT NULL,
  code_role INTEGER NOT NULL,
  access_level SMALLINT NOT NULL,
  birth_date DATE NOT NULL,
  CHECK (birth_date < GETDATE()),
  CHECK (access_level > 0),
  CHECK (code_role >= 100 AND code_role <= 1000)
);
CREATE TABLE capacities(
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
CREATE TABLE bases(
  id_base INTEGER PRIMARY KEY AUTO_INCREMENT,
  id_loc INTEGER NOT NULL,
  id_per INTEGER NOT NULL,
  id_cap INTEGER NOT NULL,
  id_person INTEGER NOT NULL,
  name NVARCHAR(50) NOT NULL,
  foundat_date DATE NOT NULL,
  FOREIGN KEY (id_loc) REFERENCES Locations(id_loc),
  FOREIGN KEY (id_per) REFERENCES Perimeters(id_per),
  FOREIGN KEY (id_cap) REFERENCES Capacities(id_cap),
  FOREIGN KEY (id_person) REFERENCES People(id_person),
  CHECK(foundat_date < GETDATE())
);
CREATE TABLE accesses(
  id_acc INTEGER PRIMARY KEY AUTO_INCREMENT,
  date_acc DATE NOT NULL,
  code_acc INTEGER NOT NULL,
  desc_acc NVARCHAR(200),
  id_person INTEGER NOT NULL,
  id_base INTEGER NOT NULL,
  id_cap INTEGER NOT NULL,
  FOREIGN KEY (id_person) REFERENCES People(id_person),
  FOREIGN KEY (id_base) REFERENCES Bases(id_base),
  FOREIGN KEY (id_cap) REFERENCES Capacities(id_cap),
  CHECK (date_acc <= GETDATE()),
  CHECK(code_acc >= 100 AND code_acc <= 1000)
);
