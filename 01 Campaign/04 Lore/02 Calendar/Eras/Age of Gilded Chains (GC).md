---
eratag: GC
tags:
  - "#Era"
calendarlink: https://app.fantasy-calendar.com/calendars/eef4bc8ce5816a8ef752d35b7e4cfd4d
aliases:
  - Age of Gilded Chains
  - Gilded Chains Era
  - GC Era
  - Age of Empire
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

The **Age of Gilded Chains** marks an era of consolidation and empire. Maritime nations and highland dynasties flourished, founding vast trade routes and binding magical pacts that brought uneasy peace. Arcane academies and noble houses rose in prominence, but beneath the golden veneer, slavery, arcane exploitation, and corruption festered. Many factions trace their roots to this time.  

**–300 PR – –62 PR**

## Years

> [!metadata|year]- Years
> ```dataview
> TABLE without id file.link AS "Year", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE econtains(era, this.file.link) AND econtains(tags, "#Year")
> SORT file.name ASC

## Notes

### The Golden Barons (–300 PR – –200 PR)
This sub-era marked the meteoric rise of transregional trade families, arcane merchant consortiums, and elemental shipping dynasties. As planar gates were heavily restricted following the Accord of Veils, wealth became the new source of power. Nobility increasingly intertwined with commerce, and the term “baron” became both a noble and economic title. Cities like [[Boba]], [[Lambaro]], and [[Caervan]] flourished under the influence of hereditary trade oligarchs. Magical economies were formalized, and gold-based leyline infusions became common among elite castes.

### The Mage-Lords' Compact (–200 PR – –100 PR)
During this period, arcane academies and magical guilds formed powerful cross-kingdom pacts, rivaling traditional monarchies in authority. These mage-lords regulated access to leyline nexuses, rare Pre-Rising artifacts, and magical education. Political power was increasingly tied to arcane proficiency or patronage. The Compact enforced the first widely adopted spell-license system and formally outlawed soulbinding and abyssal conjurations—though both continued in secret. Several coastal wars occurred when mage-lords demanded tithes from sovereign rulers.

### The Fracturing Masks (–100 PR – –62 PR)
While the Mage-Lords' Compact appeared unified, internal rivalry and betrayal marked this final sub-era. Hidden factions emerged beneath respected guilds and courts—secretive groups like the [[Obsidian Veil]] and [[Crimson Shroud]] began manipulating magical flows and divine prophecies. This era is remembered for veiled coups, assassinations via teleportation magic, and widespread paranoia. The world was ripe for collapse. By –62 PR, coordinated Abyssal breaches and mass ritual failures set the stage for the apocalyptic devastation known as the Rising.
