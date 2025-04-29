---
tags:
  - "#Location"
  - "#Settlement"
  - "#TODO"
art: 90 Assets/Images/Misc/PlaceholderImage.png
location:
  - "[[Middle Isles]]"
  - "[[The Outcast Isles]]"
settlementtype: Small City
population: 5,146
import:
  - Magical Trinkets
  - Tea Leaves
  - Scrolls
export:
  - Pottery
  - Pearls
  - Coral Jewelry
organization:
  - "[[The Arcane Wardens]]"
  - "[[The Blazing Pledge]]"
  - "[[The Crystal Seekers Guild]]"
  - "[[The Dawnbringers of Lunara]]"
  - "[[The Emberborn League]]"
  - "[[The Eternal Concord]]"
  - "[[The Lumina Guardians]]"
  - "[[The Order of the Ember Blades]]"
  - "[[The Bleeding Tide]]"
  - "[[The Red Runners]]"
  - "[[The Blackwake Corsairs]]"
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
>> **Tags** | `INPUT[Tags][inlineListSuggester:tags]` |
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
>> **Type** | `INPUT[SettlementType][:settlementtype]` |
>> **Terrain** | `INPUT[Terrain][inlineListSuggester:terrain]` |
>> **Defences** | `INPUT[Defence][:defence]`
>> **Location** | `INPUT[inlineListSuggester(optionQuery(#Region AND !"z_Templates"), optionQuery(#Subregion AND !"z_Templates"), optionQuery(#Reach AND !"z_Templates"), useLinks(partial)):location]` |
>
>> [!metadata|metadataoption]- Demographics
>> #### Demographics
>>  |
>> ---|---|
>> **Dominion** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):dominion]` |
>> **Rulers** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):ruler]` |
>> **Leaders** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):leader]` |
> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>> **Government Type** | `INPUT[GovernmentType][inlineListSuggester:governmenttype]` |
>> **Population** |  `INPUT[textArea:population]`
>
>> [!metadata|metadataoption]- Commerce
>> #### Commerce
>>  |
>> ---|---|
>> **Imports** | `INPUT[Goods][inlineListSuggester:import]` |
>> **Exports** | `INPUT[Goods][inlineListSuggester:export]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Type** | `VIEW[{settlementtype}][text]` |
> **Terrain** | `VIEW[{terrain}][text]` |
> **Defences** | `VIEW[{defence}]` |
> **Location** | `VIEW[{location}][link]` |
> ###### Demographics
>  |
> ---|---|
> **Rulers** | `VIEW[{ruler}][link]` |
> **Leaders** | `VIEW[{leader}][link]` |
> **Dominion** | `VIEW[{dominion}][link]` |
> **Government Type** | `VIEW[{governmenttype}][text]` |
> **Population** | `VIEW[{population}][text]` |
> ###### Commerce
>  |
> ---|---|
> **Imports** | `VIEW[{import}][text]` |
> **Exports** | `VIEW[{export}][text]` |
> ###### Party
>  |
> ---|---|
> **Party 1 Reputation** | `INPUT[text:party1reputation]` |
> **Party 2 Reputation** | `INPUT[text:party2reputation]` |
> **Party 3 Reputation** | `INPUT[text:party3reputation]` |
> **Party 4 Reputation** | `INPUT[text:party4reputation]` |
> **Party 5 Reputation** | `INPUT[text:party5reputation]` |
> **Party 6 Reputation** | `INPUT[text:party6reputation]` |

# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>
> [!recite]- Introduction
> A script for the GM to read when the party arrive to this location for the first time.

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

> [!metadata|district]- Districts
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(districttype, ", ") AS Type
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "District")
> SORT districttype ASC, file.name ASC

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(location[0]), ", ") AS "Location", join(link(organization), ", ") AS "Organization(s)"
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "POI")
> SORT tags DESC, poitype ASC, file.name ASC

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Organization")
> SORT tags DESC, file.name ASC

> [!metadata|characters]- Characters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(occupation, ", ") AS "Occupations", join(link(organization), ", ") AS "Organizations"
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Character") AND !contains(condition, "Dead")
> SORT tags DESC, file.name ASC

## Overview
> [!quote]+ Theme
> *“Where sand meets stone, and roots grasp the sky.”*



## Current Events



## History



## Notes
### 📍 Driftwharf Docks
**Significant Points of Interest**:
- _The Barnacled Siren_ (sailor tavern and captain’s meeting point)
- Docks used by **Captain Harlon Grieve** and _Emberwake_
- Smuggler alleys and suspicious loading cranes
- Hidden shipment ledger hinting at glyph trafficking
- Disused slip with fading Asmodean glyphwork
---
### 📍 Gullstone Row
**Significant Points of Interest**:
- Community courtyards and seawall murals
- Urban druid garden plots with oceanic sigils
- Widow’s Watch Balcony (haunted ledge with lore of the Rising)
- Children's street shrine (sings to the moon on high tide)
---
### 📍 Hollowshore
**Significant Points of Interest**:
- Hollowshore Graveyard (surface level)
- Catacombs beneath sealed mausoleum
- Buried Temple of Aurion and broken seal chamber
- Entry point to the **Stairwell of Chains**
- Site of the **Specter of the Forgotten Creed**
---
### 📍 Tideglass Heights
**Significant Points of Interest**:
- Estates of old Rising-era bloodlines
- Emberlight Chapel (Aurion’s last surface temple)
- Sealed vault rumored to hold Asmodean contracts
- Secret worship chamber hidden beneath ornamental pool
- Garden terrace with hidden radiant glyphs
---
### 📍 Mossgate Market
**Significant Points of Interest**:
- _Bell of Low Tide_ (a cursed maritime relic that rings at dusk)
- Relic hawker stalls selling imitation glyph shard
- Black-market potion and binding ink dealer
- Street stage used by Gobsmack the goblin storyteller
- Alley where cursed items swap hands unseen
---
### 📍 Saltspire Bastion
**Significant Points of Interest**:
- Watchtower-fortress built over an old lighthouse
- Vault chamber once used by the Lightbound Vigil
- The _Hall of Watchers_ (military records + seal fragments)
- Old war bell cracked during the Rising
- Rumored secret access to a hidden Asmodean archive
---
### 📍 Cradlecliff
**Significant Points of Interest**:
- _Moonwell of Lunara_ (maintained by Sister Nymeriel)
- Oracle’s terrace (viewpoint that aligns with sigil constellations)
- Dreamcaller’s Hollow (children speak prophecy in their sleep)
- Cracked shrine to Lunara’s third veil
- Secret tunnel behind prayer statue (unknown destination)
