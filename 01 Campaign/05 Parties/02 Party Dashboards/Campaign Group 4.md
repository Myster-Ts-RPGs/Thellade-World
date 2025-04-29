---
tags:
  - "#Party"
  - "#TODO"
  - "#Group4"
art: z_Assets/Misc/PlaceholderImage.png
whichparty:
  - "[[Campaign Group 4]]"
---

```meta-bind-js-view 
{art} as art {banner} as banner
--- 
if (context.bound.art !== "z_Assets/Misc/PlaceholderImage.png" && context.bound.banner === "on")  { 
    const str = ` ![[${context.bound.art}|banner-fade]]` ;
    return engine.markdown.create(str); 
} else { return ""; }
```

> [!metadata|metadata]- Metadata 
>> [!metadata|metadataoption]- System
>> #### System
>>  |
>> ---|---|
>> **Tags** | `INPUT[Tags][inlineListSuggester:tags]` |
>
>> [!metadata|metadataoption]- Art
>> #### Art
>>  |
>> ---|---|
> **Art** | `INPUT[imageSuggester(optionQuery("")):art]` |
> **Banner** | `INPUT[toggle(onValue(on), offValue(off)):banner]` |
>
>> [!metadata|metadataoption]- Info
>> #### Info
>>  |
>> ---|---|
> **Aliases** | `INPUT[list:aliases]` |
>> **Journey Board** | `INPUT[Null][suggester(optionQuery("Campaign/Parties/Journey Boards"), useLinks(partial)):journeyboard]` | 

# <center>**`=this.file.name`**</center>
> [!metadata|characters] Characters
>> [!cards|dataview 4] **Parties**
>> ```dataview
>> TABLE WITHOUT ID 
>> 	embed(link(art)) AS "Art",
>> 	"<span style='display: block; text-align: center; margin-bottom: 5px;'>" + link(file.link, Title) + "</span>" AS Title
>> FROM "01 Campaign"
>> WHERE contains(string(whichparty), this.file.name)
>>   AND contains(tags, "Character")
>>   AND !contains(condition, "Dead")
>> SORT tags DESC, file.name ASC
>> ```



> [!metadata|sessionlogs]- Session Logs `VIEW[{journeyboard}][link]`
>> [!cards|dataview 3]
>>```dataview
TABLE WITHOUT ID
>>     "<span style='display: block; border-bottom: 2px solid var(--accent); text-align: center; margin-bottom: 5px;'>" + link(file.link, Title) + "</span>" AS Title,
>>     "<span style='display: block; border-bottom: 2px solid var(--accent); text-align: center; margin-bottom: 5px;'>" + sessiondate + "</span>" AS SessionDate
>> FROM "Campaign"
>> WHERE econtains(whichparty, this.file.link) AND contains(tags, "SessionNote")
>>SORT sessiondate DESC LIMIT 9
>>```

> [!metadata|adventure]- Adventures
>> [!cards|dataview 3]
>>```dataview
TABLE WITHOUT ID
>>     "<span style='display: block; border-bottom: 2px solid var(--accent); text-align: center; margin-bottom: 5px;'>" + link(file.link, Title) + "</span>" AS Title
>> FROM "Campaign"
>> WHERE econtains(whichparty, this.file.link) AND contains(tags, "Adventure") AND !contains(status, "✅") AND !contains(status, "❌")
>>SORT file.name asc
>>```

## NPC Relations
> [!column|2 no-title]
>> [!metadata|family] Family
>> ```dataview
>> TABLE without id file.link AS "Name", party4tie AS "Party Link"
>> FROM "01 Campaign"
>> WHERE contains(tags, "#NPC") AND contains(party4relation, "Family")
>> SORT file.name ASC
> 
>> [!metadata|friend] Mentor
>> ```dataview
>> TABLE without id file.link AS "Name", party4tie AS "Party Link"
>> FROM "01 Campaign"
>> WHERE contains(tags, "#NPC") AND contains(party4relation, "Mentor")
>> SORT file.name ASC
>
>> [!metadata|ally] Ally
>> ```dataview
>> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
>> FROM "01 Campaign"
>> WHERE contains(tags, "#NPC") AND contains(party4relation, "Ally")
>> SORT file.name ASC
> 
>> [!metadata|friend] Friends
>> ```dataview
>> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
>> FROM "01 Campaign"
>> WHERE contains(tags, "#NPC") AND contains(party4relation, "Friend")
>> SORT file.name ASC
>
>> [!metadata|like] Like
>> ```dataview
>> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
>> FROM "01 Campaign"
>> WHERE contains(tags, "#NPC") AND contains(party4relation, "Like")
>> SORT file.name ASC
> 
>> [!metadata|dislike] Dislike
>> ```dataview
>> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
>> FROM "01 Campaign"
>> WHERE contains(tags, "#NPC") AND contains(party4relation, "Dislike")
>> SORT file.name ASC
> 
>> [!metadata|enemy] Enemy
>> ```dataview
>> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
>> FROM "01 Campaign"
>> WHERE contains(tags, "#NPC") AND contains(party4relation, "Enemy")
>> SORT file.name ASC
> 
>> [!metadata|enemy] Nemesis
>> ```dataview
>> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
>> FROM "01 Campaign"
>> WHERE contains(tags, "#NPC") AND contains(party4relation, "Nemesis")
>> SORT file.name ASC

##  Reputation
> [!column|2 no-title]
>> [!metadata|location] City
>> ```dataview
>> TABLE without id file.link AS "Location", party4reputation AS "Reputation"
>> FROM "01 Campaign"
>> WHERE contains(tags, "#Settlement") AND party4reputation
>> SORT file.name ASC
>
>> [!metadata|faction] Faction
>> ```dataview
>> TABLE without id file.link AS "Faction", party4reputation AS "Reputation"
>> FROM "Campaign"
>> WHERE contains(tags, "#Faction") AND party4reputation
>> SORT file.name ASC
>
>> [!metadata|faction] Location
>> ```dataview
>> TABLE without id file.link AS "POI", party4reputation AS "Reputation"
>> FROM "Campaign"
>> WHERE contains(tags, "#POI") AND party4reputation
>> SORT file.name ASC
>
>> [!metadata|faction] Government
>> ```dataview
>> TABLE without id file.link AS "Government", party4reputation AS "Reputation"
>> FROM "Campaign"
>> WHERE contains(tags, "#Government") AND party4reputation
>> SORT file.name ASC