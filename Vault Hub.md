---
tags:
  - "#Hub"
characters: []
---


![[HubBackground.png|banner-fade]]



# <center>**Vault Hub**</center>

> [!metadata|party] Parties
>> [!cards|dataview 5] **Party**
>> ```dataview
>> TABLE WITHOUT ID
>> "<span style='display: block; text-align: center; margin-bottom: 5px;'>" + link(file.link, Title) + "</span>" AS Title,
>> embed(link(art)) AS "Art"
> FROM !"z_Templates"
>> WHERE contains(tags, "Party")
>> SORT file.name asc
>> ```

## Websites

> [!metadata|calendar]- [Calendar](https://app.fantasy-calendar.com/calendars/eef4bc8ce5816a8ef752d35b7e4cfd4d)
> <iframe
> height = "650"
> width =  "100%"
> src = "https://app.fantasy-calendar.com/calendars/eef4bc8ce5816a8ef752d35b7e4cfd4d?bbox=-0.004017949104309083%2C51.47612752641776%2C0.00030577182769775396%2C51.478569861898606&layer=mapnik">
> </iframe>

> [!metadata|items]- [Encounter Builder](https://maxiride.github.io/pf2e-encounters/#/)
> <iframe
> background-color: white; }
> height = "650"
> width =  "100%"
> src = "https://maxiride.github.io/pf2e-encounters/#/">
> </iframe>

> [!metadata|literature]- [Demiplane](https://app.demiplane.com/nexus/pathfinder2e)
> <iframe
> background-color: white; }
> height = "650"
> width =  "100%"
> src = "https://app.demiplane.com/nexus/pathfinder2e">
> </iframe>

> [!metadata|literature]- [Archives of Nethys](https://2e.aonprd.com)
> <iframe
> background-color: white; }
> height = "650"
> width =  "100%"
> src = "https://2e.aonprd.com">
> </iframe>

> [!metadata|characters]- [D&D Name Generator](https://www.fantasynamegenerators.com/dungeons-and-dragons.php)
> <iframe
> background-color: white; }
> height = "650"
> width =  "100%"
> src = "https://www.fantasynamegenerators.com/dungeons-and-dragons.php">
> </iframe>

> [!metadata|characters]- [Pf2e Name Generator](https://www.fantasynamegenerators.com/pathfinder.php)
> <iframe
> background-color: white; }
> height = "650"
> width =  "100%"
> src = "https://www.fantasynamegenerators.com/pathfinder.php">
> </iframe>

> [!metadata|tools]- Tools
> - [City Generator](https://watabou.github.io/city-generator)
> - [Neighbourhood Generator](https://watabou.github.io/neighbourhood)
> - [Village Generator](https://watabou.github.io/village-generator)

## Ideas

> [!metadata|items]- Items
> ```dataview
> TABLE without id file.link AS "Name"
> FROM "Ideas/Items"
> SORT file.name ASC

> [!metadata|monster]- Monsters
> ```dataview
> TABLE without id file.link AS "Name"
> FROM "Ideas/Monsters"
> SORT file.name ASC

> [!metadata|jokes]- Jokes
> ```dataview
> TABLE without id file.link AS "Name"
> FROM "Ideas/Jokes"
> SORT file.name ASC

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name"
> FROM "Ideas/Locations"
> SORT file.name ASC

> [!metadata|quests]- Quests / Adventures
> ```dataview
> TABLE without id file.link AS "Name"
> FROM "Ideas/Quests"
> SORT file.name ASC

> [!metadata|misc]- Misc
> ```dataview
> TABLE without id file.link AS "Name"
> FROM "Ideas/Misc"
> SORT file.name ASC

## Random Notes

> [!metadata|misc]- No Location Set
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
> FROM "Campaign/NPCs" OR "Campaign/Organizations" OR "Campaign/Points of Interest" OR "Campaign/Districts" OR "Campaign/Settlements" OR "Campaign/County" OR "Campaign/Geography" OR "Campaign/Planets" OR "Campaign/Parties/Characters" AND !"Campaign/Organizations/Hierarchies"
> WHERE econtains(location, nothing) AND !contains(condition, "Dead") 
> SORT tags DESC, file.name ASC

> [!cards|dataview 7]
> ```dataview
> TABLE WITHOUT ID
> "<span style='display: block; text-align: center; margin-bottom: 2px;'>" + link(file.link, Aliases) + "</span>" AS Aliases,
> embed(link(art)) AS "Art"
> FROM "Campaign"
> FLATTEN [ [(seed) => (seed * 1103515245 + 12345) % 2147483648]] AS random
> FLATTEN [number(dateformat(date("now"), "x"))] AS seed
> SORT random[0](seed + file.size)
> LIMIT 14

