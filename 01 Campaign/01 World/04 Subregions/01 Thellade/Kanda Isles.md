---
tags:
  - "#Location"
  - "#Subregion"
  - "#TODO"
art: 90 Assets/Images/Misc/PlaceholderImage.png
location:
  - "[[The Outcast Isles]]"
terrain:
  - Volcanic Slope
  - Rainforest
  - Highlands
  - Coral Reef
  - Sandy Beach
  - Floating Isles
  - Floodplain
  - Obsidian Plateau
  - Wetlands
  - Lava Flats
organization:
  - "[[The Arcane Wardens]]"
  - "[[The Ashen Vanguard]]"
  - "[[The Blazing Pledge]]"
  - "[[The Crystal Seekers Guild]]"
  - "[[The Dawnbringers of Lunara]]"
  - "[[The Emberborn League]]"
  - "[[The Eternal Concord]]"
  - "[[The Guilded Hammer Union]]"
  - "[[The Lumina Guardians]]"
  - "[[The Order of the Ember Blades]]"
  - "[[The Phoenix Assembly]]"
  - "[[The Rift Scholars Collective]]"
  - "[[The Sunfire Heralds]]"
  - "[[The Voidscourge Hunters]]"
  - "[[The Wardens of the Deep Dark]]"
  - "[[The Bleeding Tide]]"
  - "[[The Arcane Wardens]]"
  - "[[The Red Runners]]"
  - "[[The Crimson Gauge]]"
  - "[[The Black Sepulcher]]"
  - "[[The Blackwake Corsairs]]"
  - "[[The Crimson Shroud]]"
  - "[[The Cursed Blades]]"
  - "[[The Emberborn Exiles]]"
  - "[[The Hollow Mask]]"
  - "[[The Hollow Saints]]"
  - "[[The Infernal Covenant]]"
  - "[[The Midnight Covenant]]"
  - "[[The Mistwalkers]]"
  - "[[The Red Ash Mauraders]]"
  - "[[The Sable Accord]]"
  - "[[The Sea Vultures]]"
  - "[[The Silver Chain]]"
  - "[[The Veilbound Circle]]"
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
> **Pronounced** |  `INPUT[textArea:pronounced]`
> **Aliases** | `INPUT[list:aliases]` |
> **Terrain** | `INPUT[Terrain][inlineListSuggester:terrain]` |
> **Dominion** | `INPUT[inlineListSuggester(optionQuery(#Character OR #Organization AND !"z_Templates"), useLinks(partial)):dominion]` |
> **Parent Region** | `INPUT[inlineListSuggester(optionQuery(#Region AND !"z_Templates"), useLinks(partial)):location]` |
> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Terrain** | `VIEW[{terrain}][text]` |
> **Dominion** | `VIEW[{dominion}][link]` |
> **Region** | `VIEW[{location}][link]` |

# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!metadata|map]- Map
> ```leaflet
> ### Video Tutorial: https://www.youtube.com/watch?v=8MI5JyiH-Wo
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

> [!metadata|reaches]- Reaches
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Reach")
> SORT file.name ASC
> ```

> [!metadata|settlements]- Settlements
>```dataview
>TABLE without id   file.link AS "Name",   settlementtype AS "Type",   population AS "Population",   join(link(dominion), ", ") AS "Dominion"
>FROM "01 Campaign"
>WHERE econtains(location, this.file.link) AND contains(tags, "Settlement")
>SORT file.name ASC
>```

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)", join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "POI")
> SORT tags DESC, poitype ASC, file.name ASC

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(location, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC

## Overview 
>[!quote]
>*“The breath of empire lingers on ash and tide.”*

The Kanda Isles serve as the political and cultural heart of the Outcast Isles. The land is marked by volcanic ridges, fertile jungle lowlands, coral-ringed beaches, and ancient scars from the Rising. Its two great cities—**Kanda** and **Boba**—anchor a web of surrounding trade villages, shrine sites, and military outposts.

## Current Events



## History



## Notes

