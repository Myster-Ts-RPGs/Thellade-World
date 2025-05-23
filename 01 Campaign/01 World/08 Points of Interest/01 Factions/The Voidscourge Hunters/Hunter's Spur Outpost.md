---
tags:
  - "#Location"
  - "#POI"
  - "#Canon"
art: 90 Assets/Images/POIs/HuntersSpurOutpost.png
banner: on
organization:
  - "[[The Voidscourge Hunters]]"
location:
  - "[[Stonebrace Docks]]"
  - "[[Kanda]]"
owner:
  - "[[Bria Sarn]]"
poitype:
  - Watchtower
  - Headquarters
pronounced: HUHN-terz spur OUT-post
---

```meta-bind-js-view 
{art} as art {banner} as banner
--- 
if (context.bound.art !== "90 Assets/Images/Misc/PlaceholderImage.png" && context.bound.banner === "on")  { 
    const str = ` ![[${context.bound.art}|banner-fade]]` ;
    return engine.markdown.create(str); 
} else { return ""; }
```

> [!metadata|metadata]- Metadata 
>> [!metadata|metadataoption]- System
>> #### System
>>  |
>> ---|---|
> **Tags** | `INPUT[Tags][inlineListSuggester:tags]` |
>
>> [!metadata|metadataoption]- Art
>> #### Art
>>  |
>> ---|---|
> **Art** | `INPUT[imageSuggester(optionQuery("")):art]` |
> **Banner** | `INPUT[toggle(onValue(on), offValue(off)):banner]` |
>
>> [!metadata|metadataoption]- Info
>> #### Info
>>  |
>> ---|---|
>> **Pronounced** |  `INPUT[textArea:pronounced]`
>> **Aliases** | `INPUT[list:aliases]` |
>> **Type** | `INPUT[POIType][inlineListSuggester:poitype]` |
>> **Dominion** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):dominion]` |
>> **Owners** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):owner]` |
>> **Assistant** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):assistant]` |
>> **Organization** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>> **Location** | `INPUT[inlineListSuggester(optionQuery(#District AND !"z_Templates"), optionQuery(#Settlement AND !"z_Templates"), optionQuery(#Subregion AND !"z_Templates"), optionQuery(#Reach AND !"z_Templates"), useLinks(partial)):location]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Type** | `VIEW[{poitype}][text]` |
> **Dominion** | `VIEW[{dominion}][link]` |
> **Owners** | `VIEW[{owner}][link]` |
> **Assistant** | `VIEW[{assistant}][link]` |
> **Organization** | `VIEW[{organization}][link]` |
> **Location** | `VIEW[{location}][link]` |
> ###### Party
>  |
> ---|---|
> **Party 1 Reputation** | `INPUT[text:party1reputation]` |
> **Party 2 Reputation** | `INPUT[text:party2reputation]` |
> **Party 3 Reputation** | `INPUT[text:party3reputation]` |
> **Party 4 Reputation** | `INPUT[text:party4reputation]` |
> **Party 5 Reputation** | `INPUT[text:party5reputation]` |
> **Party 6 Reputation** | `INPUT[text:party6reputation]` |

# `=this.file.name` <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!recite]- Introduction  
> Salt spray lashes the docks as the wind shifts—sharper here, laced with static and brine. Rising from the edge of [[Stonebrace Docks]], a jagged silhouette looms: not a lighthouse, not a watchtower, but something between. **Hunter’s Spur Outpost** juts out over the dark water like a blade, angular and austere, its stone fused with anchor-iron and wardglass.  
>  
> You pass beneath suspended lantern pylons humming with wardlight. Beyond the gate, cloaked figures move with practiced tension, their armor etched with shifting sigils and salt-streaked from recent dives. Lanterns don’t flicker here—they burn steady, fixed against the dark.  
>  
> Somewhere deep within, a submersible moan echoes up through the metal grates, and you realize: this place doesn't just observe the sea. It waits for what rises from it.


> [!metadata|map]- Map
> ```leaflet
> id: TBD
> image: [[PlaceholderImage.png]]
> lock: true
> recenter: true
> noScrollZoom: false
> ### Use this [LINK](https://docs.google.com/spreadsheets/d/1jKQxktYSUFcCJhEkAAPr1wMVBTqUdpEfA5XveUXI17I/edit?usp=sharing) to work out your map's bounds.
> ### bounds: [[0,0], [0, 0]] (Remove the ### and these parentheses with the content within from this line to enable the bounds)
> height: 600px
> width: 640px
> lat: 0
> long: 0
> minZoom: 1
> maxZoom: 6.5
> defaultZoom: 1
> zoomDelta: 0.5
> unit: miles
> scale: 1
> darkMode: false
> ```

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)"
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Location")
> SORT tags DESC, poitype ASC, file.name ASC

> [!metadata|characters]- Characters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(occupation, ", ") AS "Occupations", join(link(organization), ", ") AS "Organizations"
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Character") AND !contains(condition, "Dead")
> SORT tags DESC, file.name ASC

## Overview 

Hunter’s Spur Outpost is a hardened deployment hub located on the far seawall of [[Stonebrace Docks]]. Originally a customs checkpoint for long-haul merchant vessels, the site was repurposed during the rise in void incursions along Kanda’s coastline. It now functions as a strategic operations center for [[The Voidscourge Hunters]], who use it to monitor, respond to, and analyze marine-based void anomalies. Runebound beacon pylons line the perimeter, and submersible launch platforms remain active around the clock. While strictly off-limits to civilians, it is known that recovered void artifacts are sometimes transferred here before being sent inland under heavy escort.

## Current Events

- Deep sea sensor arrays recently picked up a persistent echo signal southeast of the docks; operations have increased and patrols are being doubled during night cycles.
- A Warden-aligned envoy is due to arrive from inland Kanda to inspect containment facilities following the loss of three subteams last month.
- Recent rumors suggest a relic recovered near Lambaro Island may have passed through this site en route to higher classification.

## History

- Established 74 PR as a customs and ship registry checkpoint.
- Converted in 183 PR following the dissolution of the Outer Ring Blockade and increasing planar bleed events.
- Played a key role during the **Leviathan Breach Crisis** (198–200 PR), where the outpost launched three successful interdiction strikes under the command of 'Captain Osher Tem'.
- Linked to multiple deep salvage operations related to [[The Blackwake Corsairs]]' abandoned vaults.

## Notes

- Operatives stationed here are rune-cleansed weekly to prevent long-term void corruption.
- The main hall is said to contain a relic compass attuned to the Astral Drift—a prototype originally commissioned by the Rift Scholars.
- Requires Level 3 clearance or escort from a Warden or Hunter operative for entry past the second gate.


