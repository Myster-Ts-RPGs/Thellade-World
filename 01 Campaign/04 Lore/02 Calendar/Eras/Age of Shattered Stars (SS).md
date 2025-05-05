---
eratag: SS
tags:
  - "#Era"
calendarlink: https://app.fantasy-calendar.com/calendars/eef4bc8ce5816a8ef752d35b7e4cfd4d
aliases:
  - Age of Shattered Stars
  - Shattered Stars Era
  - SS Era
  - Mythic Age
  - Age of Collapse
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
>> **Calendar Link** |  `INPUT[textArea:calendarlink]` |

> [!infobox]
> #### Era Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}]` |
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
WHERE !econtains(tags,"#Year") AND !econtains(tags,"#Location") AND !econtains(tags,"#Character")
SORT file.name ASC

## Overview

The **Age of Shattered Stars** marks the mythic past of Thellade, long before modern kingdoms rose. Legends speak of godfall, celestial wars, and continent-shaping magic. Vast empires ruled by astral titans and void-born seers collapsed in apocalyptic ruin. Surviving fragments became the cradle of later civilizations. Little true history remains—only ruins, ancient stelae, and contradictory accounts written millennia later.

??? – -900 PR

## Years

> [!metadata|year]- Years
> ```dataview
> TABLE without id file.link AS "Year", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE econtains(era, this.file.link) AND econtains(tags, "#Year")
> SORT file.name ASC

## Notes

### The Age of Ascendancy (??? – ~-2000 PR)
The zenith of celestial civilization. Astral empires ruled by titan-kin, radiant seers, and starborn archmages stretched across realms and planes. Reality was shaped as much by will as by physics. Monumental structures spanned dimensions, and divine beings walked openly among mortals. Most modern cultures regard this time as legend.

### The Sundering Twilight (~-2000 – -1300 PR)
A slow, catastrophic unraveling. Infighting among the ascendant castes led to the collapse of planar gates and the severing of sacred compacts. The godfall wars—an apocalyptic conflict among divine and quasi-divine beings—left entire continents scarred. Many minor planes imploded or merged with others. Magic itself began to fracture.

### The Starfall Collapse (~-1300 – -900 PR)
The death knell of the mythic age. As the last titan cities crumbled and void-born corruption spread, surviving peoples turned inward. Prophets predicted doom in a dozen tongues. Shattered relics fell to the surface like burning stars. Across Thellade, the light of old powers dimmed, and silence crept in where miracles once stood. Only fragmented ruins and conflicting stelae remain from this final era.
