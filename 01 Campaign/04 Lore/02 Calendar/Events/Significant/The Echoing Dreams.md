---
tags:
  - "#Event"
  - "#TODO"
calendarlink: https://app.fantasy-calendar.com/calendars/eef4bc8ce5816a8ef752d35b7e4cfd4d
eventcategory: Secular
eventtype: Significant
enddate: 09 Dawnmarch 212 PR
startdate: 04 Dawnmarch 212 PR
startdateshort: 0212.01.04 PR
enddateshort: 0212.01.09
monthofoccurrence:
  - "[[01 - Dawnmarch]]"
yearofoccurrence:
  - "[[212]]"
yearnumeric: 212
location:
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

In the aftermath of the Embermoon Surge Riots, Mangagoy experiences a rising tide of strange, shared dreams and psychic disturbances. Beginning on 04 Dawnmarch 212 PR, scattered citizens—particularly those sensitive to magic or trauma—report fragmented visions, half-memories, and waking echoes of events that never happened. Known as the Echoing Dreams, these phenomena are linked to the ritual performed by Telmira of the Echoes and her Order during the leyline disruption of 03 Dawnmarch. These dreams are not simple illusions, but resonant feedback: they magnify unresolved emotional imprints in the minds of the city’s populace, tethered to the weakened leyline that runs beneath the Sanctum of the Dawnsplit Crown. Unless stopped, this feedback loop will unravel the ancient binding beneath the Sanctum on the night of 09 Dawnmarch.

## Notes

- Echo-dreams can involve past trauma, future glimpses, or entirely alien perceptions seeded by the Order’s ritual.
- Dreamers may wake with nosebleeds, memory loss, or brief moments of involuntary speech in unknown languages.
- Some experience shared dreams with others present—entire households reporting identical imagery.
- Individuals previously exposed to sealing magic, leyline rifts, or deep psychic trauma are especially vulnerable.
- The Dawnbringers of Lunara and the Order of Silent Echos both take an interest—one to suppress the visions, the other to interpret them.
- By 08 Dawnmarch, several fringe deaths are reported: sleepwalkers falling from rooftops, a city guard found drowned in dry air, and a temple novice writing binding glyphs in her own blood.
- This event sets the stage for the failure at the Sanctum unless the source of the resonance is interrupted.