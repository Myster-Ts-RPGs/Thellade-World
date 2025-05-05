---
eratag: PR
tags:
  - "#Era"
calendarlink: https://app.fantasy-calendar.com/calendars/eef4bc8ce5816a8ef752d35b7e4cfd4d
aliases:
  - Post-Rising
  - PR Era
  - Reclamation Era
  - Age of Broken Seals
  - Modern Era
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

The **Post-Rising Era** marks the fragile peace following the defeat of the Abyssal invasion. Though Orcus’ lieutenants were sealed and the world recovered, the damage lingers. Magic remains unstable, leylines scarred, and many seals show signs of weakening. The Outcast Isles remain politically fractured, with ancient threats stirring beneath the surface. As of 212 PR, a new storm brews on the horizon.  

**0 PR – Present (212 PR)**

## Years

> [!metadata|year]- Years
> ```dataview
> TABLE without id file.link AS "Year", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE econtains(era, this.file.link) AND econtains(tags, "#Year")
> SORT file.name ASC

## Notes

### The Reconstruction (0–50 PR)
A dark age of survival, scattered enclaves, and rudimentary attempts to reclaim order. Magic was unreliable, food and clean water were scarce, and entire cultures vanished. The early decades were dominated by salvage operations and the stabilization of new sanctified zones.

### The Warded Peace (51–180 PR)
An age of recovery. The surviving city-states and protectorates began to forge alliances, rebuild infrastructure, and codify the new magical rules that governed post-Rising reality. The first of the Warden Orders were formed, and the infernal pacts that protected key regions began to fray at their metaphysical seams. While surface peace held, a cold war brewed in the shadows between surviving powers.

### The Era of Quiet Ash (181–211 PR)
A period marked by silence, decay, and prophecy. As the magical wards begin to weaken and infernal bargains falter, strange omens rise. Many scholars note the increase in dream-plague victims and corrupted crystals. Cults once shattered during the Reconstruction reemerge, whispering of a return of the Deep Spiral. Officially, it remains a time of peace—but the wise know war stirs in ash and silence.

### Present Reckoning (212 PR – Present)
The current era. Now, the first cracks in the divine wards are visible. Ancient enemies stir. Political tensions mount across noble houses, merchant powers, and religious sects. The Sunfire Heralds warn of signs in the heavens, and the Arcane Wardens scramble to recalibrate leylines as the power once granted by divine pacts begins to dim.
