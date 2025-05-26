---
tags:
  - "#Event"
  - "#Canon"
calendarlink: https://app.fantasy-calendar.com/calendars/ef4bc8ce5816a8ef752d35b7e4cfd4d
eventcategory: Economic
eventtype: Significant
startdate: 03 Sunfall 210 PR
enddate: 12 Sunfall 210 PR
startdateshort: 0210.10.03 PR
enddateshort: 0210.10.12 PR
monthofoccurrence: "[[10 - Sunfall]]"
location:
  - "[[OneNote/Crossroads2025/Project 1 Archive/BobaNotes]]"
yearofoccurrence:
  - "[[210]]"
yearnumeric: 210
---

> [!metadata|metadata]- Metadata 
>> [!metadata|metadataoption]- System
>> #### System
>>  |
>> ---|---|
> **Tags** | `INPUT[Tags][inlineListSuggester:tags]` |
>
>> [!metadata|metadataoption]- Info
>> #### Info
>>  |
>> ---|---|
>> **Aliases** | `INPUT[list:aliases]` |
>> **Category** | `INPUT[EventCategory][:eventcategory]` |
>> **Type** | `INPUT[EventType][:eventtype]` |
>> **Start Date** |  `INPUT[text:startdate]` |
>> **Start Date** |  `INPUT[text:startdateshort]` |
>> **End Date** |  `INPUT[text:enddate]` |
>> **End Date Short * |  `INPUT[text:enddateshort]` |
>> **Month of Occurrence** | `INPUT[inlineListSuggester(optionQuery(#Month AND !"z_Templates"), useLinks(partial)):monthofoccurrence]` |
>> **Year of Occurrence** | `INPUT[inlineListSuggester(optionQuery(#Year AND !"z_Templates"), useLinks(partial)):yearofoccurrence]` |
>> **Year Numeric**|`INPUT[number:yearnumeric]`|
>> **Location** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |
>> **Calendar Link** |  `INPUT[textArea:calendarlink]` |

> [!infobox]
> #### Event Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}]` |
> **Category** | `VIEW[{eventcategory}]` |
> **Type** | `VIEW[{eventtype}]` |
> **Start Date** | `VIEW[{startdate}]` |
> **End Date** | `VIEW[{enddate}]` |
> **Location** | `VIEW[{location}][link]` |
> **Website** | `VIEW[\[Calendar Link\]({calendarlink})][text(renderMarkdown)]` |

# `=this.file.name`

> [!column|3 no-title]
>> [!metadata|characters] People
>> ```dataview
LIST
FROM outgoing([[]])
WHERE econtains(tags,"#Character")
SORT file.name ASC
>
>> [!metadata|location] Locations
>>  ```dataview
LIST
FROM outgoing([[]])
WHERE econtains(tags,"#Location")
SORT file.name ASC
>
>> [!metadata|misc] Misc
>>  ```dataview
LIST
FROM outgoing([[]])
WHERE !econtains(tags,"#Location") OR econtains(tags,"#Character")
SORT file.name ASC

## Overview  

A violent clash between the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Golden Tides Trading Guild|Golden Tides Trading Guild]] and the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Emberheart Traders|Emberheart Traders]] erupted across [[OneNote/Crossroads2025/Project 1 Archive/BobaNotes]]’s dockside warehouses and merchant quarters. False-flag attacks orchestrated by the [[01 Campaign/02 Factions/03 Organization/03b Secret Factions/The Red Runners|Red Runners]] smuggling syndicate stoked tensions between the guilds, prompting street fights, arson, and economic blockades. Intervention by an adventuring party exposed the scheme, unveiling forged shipping manifests and a cache of stolen ledgers that directly implicated [[Captain Verrik the Vulture]]. Order was restored after a public arbitration mediated at the [[The Verdant Accord Forum]].

## Notes





