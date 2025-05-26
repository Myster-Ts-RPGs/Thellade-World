---
tags:
  - "#Event"
  - "#TODO"
calendarlink: https://app.fantasy-calendar.com/calendars/eef4bc8ce5816a8ef752d35b7e4cfd4d
eventcategory: Arcane
eventtype: Significant
enddate: 09 Dawnmarch 212 PR
startdate: 09 Dawnmarch 212 PR
startdateshort: 0212.01.01 PR
enddateshort: 0212.01.01 PR
monthofoccurrence:
  - "[[01 - Dawnmarch]]"
yearofoccurrence:
  - "[[212]]"
yearnumeric: 212
location:
  - "[[Sanctum of the Dawnsplit Crown]]"
  - "[[Glowquarter]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]]"
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

On the evening of 09 Dawnmarch 212 PR, the dormant binding circle beneath the [[01 Campaign/01 World/08 Points of Interest/04 Temple or Shrine/Lunara/Sanctum of the Dawnsplit Crown|Sanctum of the Dawnsplit Crown]] in Mangagoy is projected to fail. The collapse is not the result of direct sabotage but the unintended resonance cascade from a ritual conducted by the [[Order of Silent Echos]] on the night of 03 Dawnmarch — the same night a leyline stabilization ritual was performed on [[Kaelor Thornhide]]. The echo-based interference fed back into the flaring leylines during the Embermoon Surge Riots, seeding psychic anomalies now manifesting as echo-dreams in sensitive individuals. These dream-resonances are steadily unraveling the arcane weave anchoring the seal. If not addressed before the 9th, the containment will rupture.

## Notes

- The binding circle in question is tied to one of the seals restraining [[01 Campaign/03 Entities/02c Orcus' Lieutenants/Xal'Zul|Xal'Zul]], the Choir of Worms.
- Echo-dreams tied to this event will escalate in intensity between 04–09 Dawnmarch.
- [[Order of Silent Echos]] members may be unaware their ritual caused the destabilization — or may interpret it as prophecy fulfilled.
- The failure will allow **psychic parasites**, **echo-spirits**, or worse to enter the material plane unless counter-rituals are completed.
- The collapse will likely occur at night, following the final leyline flare cycle triggered during Embermoon’s wake.
- This event connects directly to the fallout from [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Kaelor Thornhide|Kaelor Thornhide]]s partial sealing and Mangagoy's leyline disturbances.