# DOKUMENTACE DATABÁZE VOJENSKÉ ZÁKLADNY
Autoři: Martin Šilar, Neil Malhotra

## **Úvod**
Tato práce se zaměřuje na vytvoření relační databáze určené pro evidenci vojenských základen. Cílem databáze je efektivní správa klíčových informací, jako jsou kapacity, vybavení, geografická poloha a personální obsazení. Tento systém umožňuje oprávněným uživatelům rychlý přístup k datům a usnadňuje plánování a rozhodování.

Databáze byla navržena ve 3. normální formě (3NF) a je optimalizována pro použití v Microsoft SQL Server. Díky struktuře odpovídající relačnímu modelu je snadno rozšiřitelná a lze ji přizpůsobit dalším systémům.

## **E-R model**
E-R model databáze naleznete na obrázku: 
![er diagram](relational.png)

Všechny objekty byly pojmenovány bez háčků, čárek a v angličtině. Schéma bylo vytovořeno pro RDMBS MySQL, po menších úpravách lze využít i pro jiné databázové systémy.

## **Logický model**
Logický model databáze naleznete na obrázku:
![logical diagram](logical.png)

## **Entitní integrita**
Je zajištěna pomocí uměle přidaných primárních klíčů, které jsou v každé tabulce označeny jako id_<nazev_tabulky> a obsahují automaticky generovaná celá čísla počínaje číslem 1.

## *Popis Tabulek*

#### **Tabulka: armories**  
- **code_arm** - povinné, kladné celé číslo.  
- **max_amnt** - povinné, kladné celé číslo větší než nula.  
- **act_amnt** - povinné, kladné celé číslo menší nebo rovné hodnotě `max_amnt`.  
- **desc_arm** - nepovinné, maximální délka 50 znaků.  

---

#### **Tabulka: fuels**  
- **code_fuel** - povinné, kladné celé číslo.  
- **max_vol** - povinné, kladné celé číslo větší než nula.  
- **act_vol** - povinné, kladné celé číslo menší nebo rovné hodnotě `max_vol`.  
- **desc_fuel** - nepovinné, maximální délka 50 znaků.  

---

#### **Tabulka: health_facilities**  
- **code_hf** - povinné, kladné celé číslo.  
- **max_amnt** - povinné, kladné celé číslo větší než nula.  
- **act_amnt** - povinné, kladné celé číslo menší nebo rovné hodnotě `max_amnt`.  
- **desc_hf** - nepovinné, maximální délka 50 znaků.  

---

#### **Tabulka: parking_lots**  
- **code_pl** - povinné, kladné celé číslo.  
- **max_amnt** - povinné, kladné celé číslo větší než nula.  
- **act_amnt** - povinné, kladné celé číslo menší nebo rovné hodnotě `max_amnt`.  
- **desc_pl** - nepovinné, maximální délka 50 znaků.  

---

#### **Tabulka: energies**  
- **code_energy** - povinné, kladné celé číslo.  
- **max_amnt** - povinné, kladné desetinné číslo větší než nula.  
- **act_amnt** - povinné, kladné desetinné číslo menší nebo rovné hodnotě `max_amnt`.  
- **desc_energy** - nepovinné, maximální délka 50 znaků.  

---

#### **Tabulka: archivations**  
- **chng_date** - povinné, hodnota odpovídá validnímu datu.  
- **state_pre** - povinné, maximální délka 100 znaků.  
- **state_post** - povinné, maximální délka 100 znaků, musí se lišit od `state_pre`.  
- **desc_arch** - nepovinné, maximální délka 200 znaků.  

---

#### **Tabulka: vehicles**  
- **code_veh** - povinné, kladné celé číslo.  
- **amount** - povinné, kladné celé číslo větší než nula.  
- **desc_veh** - nepovinné, maximální délka 50 znaků.  

---

#### **Tabulka: storages**  
- **code_stor** - povinné, kladné celé číslo.  
- **max_cap** - povinné, kladné desetinné číslo větší než nula.  
- **act_cap** - povinné, kladné desetinné číslo menší nebo rovné hodnotě `max_cap`.  
- **desc_stor** - nepovinné, maximální délka 50 znaků.  

---

#### **Tabulka: accomodations**  
- **code_acc** - povinné, kladné celé číslo.  
- **max_people** - povinné, kladné celé číslo větší než nula.  
- **act_people** - povinné, kladné celé číslo menší nebo rovné hodnotě `max_people`.  
- **desc_acc** - nepovinné, maximální délka 50 znaků.  

---

#### **Tabulka: perimeters**  
- **wid** - povinné, kladné desetinné číslo větší než nula.  
- **len** - povinné, kladné desetinné číslo větší než nula.  
- **hei** - povinné, kladné desetinné číslo větší než nula.  

---

#### **Tabulka: locations**  
- **latitude** - povinné, hodnota mezi -90 a 90.  
- **longitude** - povinné, hodnota mezi -180 a 180.  
- **asl_height** - povinné, hodnota mezi -400 a 7000.  

---

#### **Tabulka: people**  
- **f_name** - povinné, maximální délka 50 znaků.  
- **l_name** - povinné, maximální délka 50 znaků.  
- **code_role** - povinné, hodnota mezi 100 a 1000.  
- **access_level** - povinné, kladné celé číslo větší než nula.  
- **birth_date** - povinné, hodnota menší než aktuální datum.  

---

#### **Tabulka: capacities**  
- **id_veh** - povinné, odkaz na `vehicles(id_veh)`.  
- **id_stor** - povinné, odkaz na `storages(id_stor)`.  
- **id_acc** - povinné, odkaz na `accomodations(id_acc)`.  
- **id_arm** - povinné, odkaz na `armories(id_arm)`.  
- **id_fuel** - povinné, odkaz na `fuels(id_fuel)`.  
- **id_hf** - povinné, odkaz na `health_facilities(id_hf)`.  
- **id_pl** - povinné, odkaz na `parking_lots(id_pl)`.  
- **id_energy** - povinné, odkaz na `energies(id_energy)`.  
- **id_archiv** - povinné, odkaz na `archivations(id_archiv)`.  

---

#### **Tabulka: bases**  
- **id_loc** - povinné, odkaz na `locations(id_loc)`.  
- **id_per** - povinné, odkaz na `perimeters(id_per)`.  
- **id_cap** - povinné, odkaz na `capacities(id_cap)`.  
- **id_person** - povinné, odkaz na `people(id_person)`.  
- **name** - povinné, maximální délka 50 znaků.  
- **foundat_date** - povinné, hodnota menší než aktuální datum.  

---

#### **Tabulka: accesses**  
- **date_acce** - povinné, hodnota menší nebo rovna aktuálnímu datu.  
- **code_acce** - povinné, hodnota mezi 100 a 1000.  
- **desc_acce** - nepovinné, maximální délka 200 znaků.  
- **id_person** - povinné, odkaz na `people(id_person)`.  
- **id_base** - povinné, odkaz na `bases(id_base)`.  
- **id_cap** - povinné, odkaz na `capacities(id_cap)`.  

## **Doménová integrita**

U každého atributu jsou nastaveny typy dat a validace pomocí omezení (CHECK), aby byla zajištěna správnost a konzistence dat.

## **Referenční integrita**

Vazby mezi tabulkami jsou zajištěny cizími klíči. Například:
Tabulka capacities propojuje informace o skladovacích prostorech, zdravotnických zařízeních a dalších kapacitách prostřednictvím cizích klíčů na příslušné tabulky.
Tabulka bases propojuje informace o základnách, jejich kapacitách a geografické poloze.

## **Indexy**

Primární klíče jsou automaticky indexovány. Další indexy lze přidat na základě požadavků, například pro optimalizaci vyhledávání.

## **Import struktury a dat databáze**

Import struktury:
Struktura databáze je definována v SQL skriptu `create.sql` a `database.sql`.

Import dat:
Vzorová data lze nahrát pomocí skriptu `input.sql`.

## **Požadavky na spuštění**

Software: Microsoft SQL Server 2014 nebo novější.
Hardware: Min. 2 GHz CPU, 4 GB RAM, 500 MB volného místa na disku.

## **Postup instalace**

1.	Vytvořte novou databázi pomocí SQL Management Studio
2.	Naimportujte strukturu a data pomocí poskytnutých skriptů.

## **Závěr**

Databáze je plně funkční a připravena k integraci. Navrhovaná struktura zajišťuje konzistenci a flexibilitu při správě dat.
Pokud bychom pokračovali ve vývoji, tak bychom vytvořili aplikaci pro koncové uživatele.
