---
tags:
  - "#Month"
calendarlink: https://app.fantasy-calendar.com/calendars/eef4bc8ce5816a8ef752d35b7e4cfd4d
season: Winter
aliases:
  - Stardrift
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

Stardrift is the last month of the calendar year, marked by crystal skies, frozen tides, and nights illuminated by streaking meteor showers known as the Embertrails. It is a time of reflection, solemnity, and ancient celebration—when communities honor their ancestors and the passing of the old year into the new.

Temples to Lunara often hold all-night vigils during Stardrift, lighting lanterns for the lost and reading prophetic verse from celestial charts. In coastal settlements like Boba and Lambaro, festivals are held where boats bearing starlit candles drift into the sea, symbolizing the release of burdens and the welcoming of new hope.

In 212 PR, Stardrift was the month the Arcane Wardens uncovered a forgotten ley-channel beneath Mwingu, and when the twin moons crossed paths in a rare convergence—an omen some took as a sign of Xal'Zul stirring beneath the world’s crust.

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

