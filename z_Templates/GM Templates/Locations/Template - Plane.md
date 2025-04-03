---
art: z_Assets/Misc/PlaceholderImage.png
tags:
  - "#Location"
  - "#Existence"
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
> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Terrain** | `VIEW[{terrain}][text]` |

# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

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

> [!metadata|planet]- Planets
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain
> FROM "Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Planet")
> SORT nation ASC, file.name ASC

> [!metadata|characters]- Characters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(occupation, ", ") AS "Occupations", join(link(organization), ", ") AS "Organizations"
> FROM "Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Character") AND !contains(condition, "Dead")
> SORT tags DESC, file.name ASC

---

## Overview
> 🧠 *What is the general purpose, nature, or identity of this Plane? Describe major features and core ideas.*

## Other Names
> 📜 *List any alternative names or historical names used for this plane.*

## Creature Themes
> 🐲 *What types of creatures are most often found here? Include unique planar beings or common monsters.*

## Hallmarks
> ✨ *List key traits or phenomena unique to this plane (e.g., gravity shifts, floating rivers, time anomalies).*

## Sample Portal Keys
> 🔑 *Examples of objects, events, or circumstances required to access this plane via teleportation or planar travel.*

## Common Knowledge
> 🧑‍🏫 *What do average scholars or travelers know about this place? What's true versus myth?*

## Environmental Effects
> 🌪️ *Detail any mechanical or magical effects the plane exerts on beings or objects (e.g., constant fire, healing magic fails).*

## Layers
> 🧱 *Does this plane have levels, strata, or subdomains (e.g., Nine Hells, Elemental Chaos)?*

## Denizens
> 👥 *Who lives here permanently? Who governs, trades, or fights for survival here?*

## Intrigue Opportunities
> 🕵️ *Potential story hooks, political conflicts, religious tensions, or secrets that make this plane rich for adventures.*

## Supernatural Effects
> 💫 *Does the plane enhance or inhibit specific magic types, divine power, or time?*

## Current Events
> 🔥 *What’s happening now that might attract or repel travelers?*

## History
> 📚 *Summarize the plane’s past, wars, creation, changes, and influential figures.*

## Notes
> ✍️ *Anything else that doesn’t fit above.*
