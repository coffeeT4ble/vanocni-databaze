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

V naší databázi je doménová integrita nastavena následovně:

#### Primární a cizí klíče
Všechny primární i cizí klíče jsou definovány jako kladná celá čísla. Povinnost vyplnění těchto atributů je zajištěna pomocí referenční integrity, která garantuje konzistenci dat mezi tabulkami.

##### *Číselné atributy*
Pro číselné atributy, jako jsou kapacity, objemy, množství nebo rozměry, je vždy nastavena minimální hodnota větší než nula. U atributů s maximálními a aktuálními hodnotami (např. `max_amnt` a `act_amnt`) je nastavena podmínka, že aktuální hodnota nesmí překročit maximální hodnotu.

#### *Textové atributy*
Textové atributy, jako například popisy (`desc_*`), mají omezenou maximální délku (např. 50 nebo 200 znaků) a jejich vyplnění je nepovinné.

#### *Datumové atributy*
Datumové atributy (např. `birth_date`, `chng_date`, `foundat_date`, `date_acce`) jsou kontrolovány tak, aby obsahovaly platné datum. Pokud se jedná o historická data, je zajištěno, že datum nebude v budoucnosti (např. `birth_date < GETDATE()`).

#### *Hodnoty související s geografií a rozměry*
Atributy jako latitude a longitude mají nastavena omezení odpovídající jejich reálnému rozsahu (např. zeměpisná šířka mezi -90 a 90 stupni, zeměpisná délka mezi -180 a 180 stupni). Rozměry a výšky mají také minimální hodnoty větší než nula.

Tato nastavení doménové integrity zajišťují, že data uložená v databázi odpovídají reálným podmínkám a požadavkům na validitu, což snižuje riziko chyb a nekonzistencí.

## **Referenční integrita**


## **Indexy?**


## **Import struktury databáze**


## **Import dat od zadavatele do databáze**


## **Požadavky na spuštění**


## **Postup instalace?**


## **Závěr**
