> [!metadata|characters] Demigods
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS "Aliases", join(primarydomains, ", ") AS "Primary", join(secondarydomains, ", ") AS "Secondary", concerns AS "Concerns"
> FROM "01 Campaign"
> WHERE contains(tags, "Demigod") 
> SORT file.name ASC
