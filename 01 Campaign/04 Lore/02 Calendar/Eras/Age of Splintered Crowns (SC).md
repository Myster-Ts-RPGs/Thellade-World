---
eratag: SC
tags:
  - "#Era"
calendarlink: https://app.fantasy-calendar.com/calendars/eef4bc8ce5816a8ef752d35b7e4cfd4d
aliases:
  - Age of Splintered Crowns
  - Splintered Crowns Era
  - SC Era
  - Age of Warring Kingdoms
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

The **Age of Splintered Crowns** saw the rise of fractured kingdoms, each struggling to claim remnants of ancient power. Kingdoms of man, elf, and dwarf clashed over leyline-rich ruins and celestial artifacts, forging rivalries that shaped regional borders. While civilization flourished in pockets, this era was marred by near-constant war, shifting alliances, and the founding of orders that would shape the future.  

**–900 PR – –300 PR**

## Years

> [!metadata|year]- Years
> ```dataview
> TABLE without id file.link AS "Year", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE econtains(era, this.file.link) AND econtains(tags, "#Year")
> SORT file.name ASC

## Notes

### The Shattered Thrones (–900 PR – –700 PR)
Following the collapse of the Starborn Empires, regional power vacuums birthed countless petty kingdoms, sorcerer-states, and divine cult dominions. Each vied to claim fragments of mythic authority or relics of astral origin. Wars of succession, ritual devastation, and planar interference were common. This was a time of desperate ambition—where bloodlines forged dynasties overnight, and civilizations fell with the death of a single oracle.

### The Splintered Crowns (–700 PR – –450 PR)
A period defined by fragmented sovereignty and dramatic cultural collision. **For lore reasons, during this period Thellade became a refuge for many other worlds in the Material Plane**, accepting entire cultures displaced by arcane catastrophes, planar wars, and divine collapses. Much like the Tsurani from Raymond E. Feist's Riftwar Saga, these groups arrived through unstable gates, astral tears, or summoned exodus rituals. Their arrival reshaped local politics, sparked innovation, and ignited territorial conflicts. The term "splintered crowns" refers both to broken local thrones and the sudden rise of outsider dynasties.

### The Accord of Veils (–450 PR – –300 PR)
The increasing tension between native and offworld societies culminated in the drafting of the Accord of Veils—a magical and political treaty aimed at stabilizing leyline activity, controlling interplanar contact, and codifying shared governance across key regions. While the Accord was only partially successful, it laid the metaphysical and diplomatic groundwork for the later sanctification efforts and divine pacts of the Rising Era. This sub-era ended with increasing instability, as major factions began violating the Accord in secret.
