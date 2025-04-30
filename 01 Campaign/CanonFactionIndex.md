> [!metadata|character]- Factions
> ```dataview
> TABLE without id file.link AS "Name",
>   dateformat(file.ctime, "yyyy-MM-dd HH:mm") AS "Created",
>   dateformat(file.mtime, "yyyy-MM-dd HH:mm") AS "Last Modified"
> FROM "01 Campaign"
> WHERE (contains(tags, "Organization") AND contains(tags, "Canon") AND !contains(file.name,"Faction"))
> SORT file.name ASC