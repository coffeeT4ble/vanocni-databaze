# DOKUMENTACE DATABÁZE VOJENSKÉ ZÁKLADNY
Autoři: Martin Šilar, Neil Malhotra

## **Úvod**
Tato práce se zaměřuje na vytvoření relační databáze určené pro evidenci vojenských základen. Databáze umožňuje správu klíčových informací, jako jsou kapacity, vybavení, geografická poloha a další relevantní údaje. Je navržena tak, aby ji mohli využívat oprávnění pracovníci s různými přístupovými právy, přičemž se klade důraz na bezpečnost a snadnou obsluhu.

Cílem projektu je vytvořit systém, který poskytne spolehlivý nástroj pro uchovávání a správu dat o vojenských základnách. Tento systém umožní efektivní plánování a operativní řízení díky přehlednému ukládání informací a snadnému přístupu k nim. Práce zahrnuje návrh struktury databáze, implementaci datového modelu a definici jednotlivých funkcionalit dle specifikovaných požadavků.

Navržený systém bude obsahovat záznamy o základnách, jako jsou jejich identifikace, geografická poloha, velikost perimetru, kapacity, typy a počty vybavení. Dále bude systém schopen odpovídat na dotazy uživatelů, jako je vyhledávání největších kapacit, nejstarších základen nebo nejvyšších poloh.

Tento projekt je koncipován jako samostatná relační databáze bez implementace přidružené aplikace, což umožňuje její snadnou integraci s externími systémy nebo budoucími rozšířeními.

## **E-R model**
E-R model databáze naleznete na obrázku: 
![er diagram](relational.png)

Schéma databáze se nachází v 3. normální formě (3NF). Všechny objekty byly pojmenovány bez háčků, čárek a v angličtině. Schéma bylo vytovořeno pro RDMBS MySQL, po menších úpravách lze využít i pro jiné databázové systémy.

## **Logický model**
Logický model databáze naleznete na obrázku:
![logical diagram](logical.png)

## **Entitní integrita**
Je zajištěna pomocí uměle přidaných primárních klíčů, které jsou v každé tabulce označeny jako id_<nazev_tabulky> a obsahují automaticky generovaná celá čísla počínaje číslem 1.

## **Doménová integrita**


## **Referenční integrita**


## **Indexy?**


## **Import struktury databáze**


## **Import dat od zadavatele do databáze**


## **Požadavky na spuštění**


## **Postup instalace?**


## **Závěr**
