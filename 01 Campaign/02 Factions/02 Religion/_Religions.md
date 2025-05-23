> [!metadata|organization] Religions
> ```dataview
> TABLE without id file.link AS "Name", join(worship, ", ") AS "Dieties"
> FROM "01 Campaign"
> WHERE contains(tags, "Religion") 
> SORT file.name ASC