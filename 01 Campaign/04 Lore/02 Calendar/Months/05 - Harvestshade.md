---
tags:
  - "#Month"
calendarlink: https://app.fantasy-calendar.com/calendars/eef4bc8ce5816a8ef752d35b7e4cfd4d
season: Autumn
aliases:
  - Harvestshade
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
>> **Season** | `INPUT[Season][:season]` |
>> **Calendar Link** |  `INPUT[textArea:calendarlink]` |

> [!infobox]
> #### Month Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}]` |
> **Season** | `VIEW[{season}]` |
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

Harvestshade casts long shadows across the Outcast Isles, marking the slow exhale of summer’s intensity and the preparation for Frostfall’s chill. The air grows crisper, the days shorter, and the cities and hamlets alike turn their focus to bounty and stockpiling. Named for the golden light that filters through the drying leaves and ripening fields, it is a month of solemn gratitude and watchful reflection.

Markets swell with seasonal goods, and festivals of the harvest—both joyous and sacred—become common. It is also a time when rural roads grow treacherous, not from storms, but from brigands and beasts stirred by the changing winds. Magical experiments and rituals involving decay, memory, and transformation often find their home in this month.

In 212 PR, Harvestshade is marked by troubling agricultural blights spreading across the interior of the Kanda Isles, aggressive tax levies fueling unrest, and rumors of a druidic faction sabotaging grain shipments in protest of leyline exploitation.

## Events
> [!metadata|event]- Recurring Events
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(startdate, ", ") AS "Start Date", eventcategory AS "Category", join(location, ", ") AS Location
> FROM "Campaign"
> WHERE econtains(monthofoccurrence, this.file.link) AND econtains(tags, "#Event") AND !econtains(eventtype, "Significant")
> SORT startdate ASC

> [!metadata|event]- Significant Events
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(startdate, ", ") AS "Start Date", eventcategory AS "Category", join(location, ", ") AS Location
> FROM "Campaign"
> WHERE econtains(monthofoccurrence, this.file.link) AND econtains(tags, "#Event") AND econtains(eventtype, "Significant")
> SORT startdate ASC

## Notes

