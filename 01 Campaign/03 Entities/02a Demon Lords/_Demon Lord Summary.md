> [!metadata|characters] Demon Lords
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS "Aliases",  ownedlocation AS "Location"
> FROM "01 Campaign"
> WHERE contains(tags, "DemonLord") 
> SORT file.name ASC
