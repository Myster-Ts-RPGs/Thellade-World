> [!metadata|characters] Arch Devils
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS "Aliases",  ownedlocation AS "Location"
> FROM "01 Campaign"
> WHERE contains(tags, "ArchDevil") 
> SORT file.name ASC
