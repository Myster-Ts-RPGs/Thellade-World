# Master To Do List
## Locatioins
> [!metadata|plane]- Planes
> ```dataview
> TABLE without id file.link AS "Name",
>   dateformat(file.ctime, "yyyy-MM-dd HH:mm") AS "Created",
>   dateformat(file.mtime, "yyyy-MM-dd HH:mm") AS "Last Modified"
> FROM "01 Campaign"
> WHERE (contains(tags, "Plane") AND contains(tags, "TODO"))
> SORT file.name ASC

> [!metadata|planet]- Planet
> ```dataview
> TABLE without id file.link AS "Name",
>   dateformat(file.ctime, "yyyy-MM-dd HH:mm") AS "Created",
>   dateformat(file.mtime, "yyyy-MM-dd HH:mm") AS "Last Modified"
> FROM "01 Campaign"
> WHERE (contains(tags, "Planet") AND contains(tags, "TODO"))
> SORT file.name ASC

> [!metadata|geography]- Regions
> ```dataview
> TABLE without id file.link AS "Name",
>   dateformat(file.ctime, "yyyy-MM-dd HH:mm") AS "Created",
>   dateformat(file.mtime, "yyyy-MM-dd HH:mm") AS "Last Modified"
> FROM "01 Campaign"
> WHERE (contains(tags, "Region") AND contains(tags, "TODO"))
> SORT file.name ASC

> [!metadata|county]- Subregions
> ```dataview
> TABLE without id file.link AS "Name",
>   dateformat(file.ctime, "yyyy-MM-dd HH:mm") AS "Created",
>   dateformat(file.mtime, "yyyy-MM-dd HH:mm") AS "Last Modified"
> FROM "01 Campaign"
> WHERE (contains(tags, "Subregion") AND contains(tags, "TODO"))
> SORT file.name ASC

> [!metadata|settlements]- Settlements
> ```dataview
> TABLE without id file.link AS "Name",
>   dateformat(file.ctime, "yyyy-MM-dd HH:mm") AS "Created",
>   dateformat(file.mtime, "yyyy-MM-dd HH:mm") AS "Last Modified"
> FROM "01 Campaign"
> WHERE (contains(tags, "Settlement") AND contains(tags, "TODO"))
> SORT file.name ASC

> [!metadata|county]- District
> ```dataview
> TABLE without id file.link AS "Name",
>   dateformat(file.ctime, "yyyy-MM-dd HH:mm") AS "Created",
>   dateformat(file.mtime, "yyyy-MM-dd HH:mm") AS "Last Modified"
> FROM "01 Campaign"
> WHERE (contains(tags, "District") AND contains(tags, "TODO"))
> SORT file.name ASC

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name",
>   dateformat(file.ctime, "yyyy-MM-dd HH:mm") AS "Created",
>   dateformat(file.mtime, "yyyy-MM-dd HH:mm") AS "Last Modified"
> FROM "01 Campaign"
> WHERE (contains(tags, "POI") AND contains(tags, "TODO"))
> SORT file.name ASC

## Entities
> [!metadata|deity]- Deities
> ```dataview
> TABLE without id file.link AS "Name",
>   dateformat(file.ctime, "yyyy-MM-dd HH:mm") AS "Created",
>   dateformat(file.mtime, "yyyy-MM-dd HH:mm") AS "Last Modified"
> FROM "01 Campaign"
> WHERE (contains(tags, "Deity") AND contains(tags, "TODO"))
> SORT file.name ASC

> [!metadata|demigod]- Demigods
> ```dataview
> TABLE without id file.link AS "Name",
>   dateformat(file.ctime, "yyyy-MM-dd HH:mm") AS "Created",
>   dateformat(file.mtime, "yyyy-MM-dd HH:mm") AS "Last Modified"
> FROM "01 Campaign"
> WHERE (contains(tags, "Demigod") AND contains(tags, "TODO"))
> SORT file.name ASC

> [!metadata|demon lord]- Demon Lords
> ```dataview
> TABLE without id file.link AS "Name",
>   dateformat(file.ctime, "yyyy-MM-dd HH:mm") AS "Created",
>   dateformat(file.mtime, "yyyy-MM-dd HH:mm") AS "Last Modified"
> FROM "01 Campaign"
> WHERE (contains(tags, "DemonLord") AND contains(tags, "TODO"))
> SORT file.name ASC

> [!metadata|legendary being]- Legendary Beings
> ```dataview
> TABLE without id file.link AS "Name",
>   dateformat(file.ctime, "yyyy-MM-dd HH:mm") AS "Created",
>   dateformat(file.mtime, "yyyy-MM-dd HH:mm") AS "Last Modified"
> FROM "01 Campaign"
> WHERE (contains(tags, "LegendaryBeing") AND contains(tags, "TODO"))
> SORT file.name ASC

> [!metadata|character]- NPCs
> ```dataview
> TABLE without id file.link AS "Name",
>   dateformat(file.ctime, "yyyy-MM-dd HH:mm") AS "Created",
>   dateformat(file.mtime, "yyyy-MM-dd HH:mm") AS "Last Modified"
> FROM "01 Campaign"
> WHERE (contains(tags, "NPC") AND contains(tags, "TODO"))
> SORT file.name ASC

> [!metadata|character]- Factions
> ```dataview
> TABLE without id file.link AS "Name",
>   dateformat(file.ctime, "yyyy-MM-dd HH:mm") AS "Created",
>   dateformat(file.mtime, "yyyy-MM-dd HH:mm") AS "Last Modified"
> FROM "01 Campaign"
> WHERE (contains(tags, "Organization") AND contains(tags, "TODO") AND !contains(file.name,"Faction")) 
> SORT file.name ASC

## Cleanup
> [!metadata|character]- Factions
> ```dataview
> TABLE without id file.link AS "Name", 
> 	hq AS "HQ", 
> 	head AS "Leader",
> 	organizationtype AS "Type", 
> 	founded AS "Founded", 
> 	pronounced AS "Pronounced"
> FROM "01 Campaign"
> WHERE (contains(tags, "Organization") AND contains(tags, "Canon") AND !contains(file.name,"Faction")) AND !location
> SORT file.name ASC
