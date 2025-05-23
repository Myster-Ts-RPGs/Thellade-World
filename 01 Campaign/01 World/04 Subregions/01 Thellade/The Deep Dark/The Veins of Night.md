---
tags:
  - "#Location"
  - "#Subregion"
  - "#TODO"
art: 90 Assets/Images/Misc/PlaceholderImage.png
pronounced: Thee VAYNZ uhv NYTE
aliases:
  - Upper Deep
  - The Upper Deep
  - Whispervault
  - The Whispervault
  - Twilight Burrow
  - The Twilight Burrow
terrain:
  - Caverns
  - Tunnels
  - Fungus Forest
  - Underground Sea
  - Underground Lake
  - Crystal Forest
  - Lava Flats
  - Molten Cavern
  - Slag Field
  - Spore Cavern
  - Underdark Rift
location:
  - "[[The Deep Dark]]"
organization:
  - "[[The Hollow Saints]]"
  - "[[The Veilbound Circle]]"
  - "[[The Rootcoil Smugglers]]"
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
> [!quote]+ Theme
> *"Here, the light above still flickers—but only as a memory."*

This uppermost layer is where surface corruption bleeds downward. Inhabited by drow enclaves, shadow-touched beasts, smugglers, and fallen surface ruins absorbed into the Deep. Leylines flicker here, still faintly echoing with arcane flux.


## Current Events



## History



## Notes
**Tone:** Shadowy, political, unstable.  
**Inspirations:** Drow houses, forsaken ruins, collapsed catacombs.
