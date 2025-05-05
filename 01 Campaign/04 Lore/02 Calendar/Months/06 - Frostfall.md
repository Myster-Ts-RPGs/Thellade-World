---
tags:
  - "#Month"
calendarlink: https://app.fantasy-calendar.com/calendars/eef4bc8ce5816a8ef752d35b7e4cfd4d
season: Winter
aliases:
  - Frostfall
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

Frostfall heralds the true arrival of winter across the Outcast Isles, blanketing even the warmest shores in a crisp, biting air. The seas churn colder, and mountain passes begin to glaze over with early ice. Coastal cities brace for storms, while inland towns conserve supplies and magic alike. It is a month marked by retreat—into homes, into strongholds, into secrets long kept.

Spiritual observances intensify during Frostfall, with many temples holding quiet vigils and long nights of reflection. Magical experimentation wanes, but necromantic and infernal cults often grow more active in the cover of winter. Communication becomes unreliable, and travelers speak of seeing strange lights flicker along the leyline coasts.

In 212 PR, Frostfall saw escalating disappearances in the hinterlands of Tidecairn, severe magical interference disrupting communication spells near Mangagoy, and a series of unseasonal eclipses visible from the Ironvale Compact.

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

