---
tags:
  - "#Month"
calendarlink: https://app.fantasy-calendar.com/calendars/eef4bc8ce5816a8ef752d35b7e4cfd4d
season: Summer
aliases:
  - Emberwake
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

Emberwake scorches the heart of summer with relentless heat, lightning storms, and a fervor that touches every corner of the Outcast Isles. It is a time of intense action—military campaigns are launched, sea raids escalate, and political gambits reach their boiling point. The month takes its name from the fire-colored haze that lingers over the waves at dusk and the wildfire-like spread of ideas, conflict, and ambition.

Many settlements enter periods of martial readiness during Emberwake, while harvesters pray for late-summer rain. Temples to elemental powers—especially those of fire and storm—see an uptick in both worship and appeasement rituals. Arcane institutions issue warnings about unstable aether surges, while underground circles exploit the chaos for high-stakes operations and clandestine rites.

In 212 PR, Emberwake looms as a critical turning point: factional skirmishes in urban centers have begun to turn violent, and signs of unraveling planar seals have coincided with strange eclipses and erratic tides.

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

