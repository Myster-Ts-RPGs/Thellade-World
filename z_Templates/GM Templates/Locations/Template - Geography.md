---
tags:
  - "#Location"
  - "#Geography"
art: z_Assets/Misc/PlaceholderImage.png
---

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
>
>> [!metadata|metadataoption]- Info
>> #### Info
>>  |
>> ---|---|
> **Pronounced** |  `INPUT[textArea:pronounced]`
> **Aliases** | `INPUT[list:aliases]` |
> **Terrain** | `INPUT[Terrain][inlineListSuggester:terrain]` |
> **Dominion** | `INPUT[inlineListSuggester(optionQuery(#Character OR #Organization AND !"z_Templates"), useLinks(partial)):dominion]` |
> **Location** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Terrain** | `VIEW[{terrain}][text]` |
> **Dominion** | `VIEW[{dominion}][link]` |
> **Location** | `VIEW[{location}][link]` |

# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!metadata|map]- Map
> ```leaflet
> id: TBD
> image: [[PlaceholderImage.png]]
> lock: true
> recenter: true
> noScrollZoom: false
> ### Use this [LINK](https://docs.google.com/spreadsheets/d/1jKQxktYSUFcCJhEkAAPr1wMVBTqUdpEfA5XveUXI17I/edit?usp=sharing) to work out your map's bounds.
> ### bounds: [[0,0], [0, 0]]
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

> [!metadata|county]- Counties
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "County")
> SORT nation ASC, file.name ASC

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)", join(link(dominion), ", ") AS "Dominion"
> FROM "Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "POI")
> SORT tags DESC, poitype ASC, file.name ASC

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "Campaign"
> WHERE contains(location, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC

---

## Overview

### Key Features
> 🌄 Natural landmarks, planar portals, or unique topography that defines this region.

### Regional Identity
> 🧬 Cultures, dominant ancestries, languages, and shared ideologies across counties.

### Environmental Traits
> 🌦️ Magical storms, floating rocks, ley lines, or natural hazards like earthquakes.

---

## Conflicts & Tensions
> ⚔️ Describe any regional unrest, border conflicts, magical corruption, or rival powers.

---

## Travel & Accessibility
> 🗺️ Notes about roads, terrain, navigability, dangers, and inter-region connections.

---

## Current Events
> 🔥 Recent regional changes affecting counties and settlements.

---

## History
> 📚 Major moments in the continent/region’s timeline (formation, conquest, collapse).

---

## Notes
> 💬 Any freeform text or ideas not covered above.
