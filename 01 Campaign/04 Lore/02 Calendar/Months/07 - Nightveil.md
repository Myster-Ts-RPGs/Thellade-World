---
tags:
  - "#Month"
calendarlink: https://app.fantasy-calendar.com/calendars/eef4bc8ce5816a8ef752d35b7e4cfd4d
season: Winter
aliases:
  - Nightveil
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

Nightveil is the darkest month of the year, when daylight wanes to its briefest flicker and long, star-draped nights reign over the Outcast Isles. In rural regions, it is a time of hushed fires, protective wards, and whispered fears of what moves in the deep hours. In cities, revelers embrace the dark with masked festivals and night markets lit by floating embers and enchanted moonstones.

Mystics claim Nightveil is when the barrier between the realms is thinnest—when visions are strongest, and lost voices most easily heard. Cult activity is often highest during this time, especially among those who venerate shadows, memory, or forgotten gods.

In 212 PR, Nightveil witnessed a failed binding ritual beneath Kanda, a celestial convergence visible in the Veiled Sky, and the recovery of a fragment of Xal'Zul’s hymn from a sunken chapel near the Lambaro coast.

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

