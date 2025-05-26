---
tags:
  - "#Status/Blank"
  - "#Location"
  - "#Location/Subregion"
art: 90 Assets/Images/Placeholders/PlaceholderArea.png
parentregion:
  - "[[The Elarian Fold]]"
parentcontinent:
  - "[[Anocin]]"
parentplanet:
  - "[[Thellade]]"
parentstarsystem:
  - "[[Solurean System]]"
parentgalaxy:
  - "[[Exyxian Veil]]"
parentplane:
  - "[[Material Plane]]"
---


> [!metadata|metadata]- Metadata 
>> [!metadata|metadataoption]- System
>> #### System
>>  |
>> ---|---|
>> **Tags** | `INPUT[Tags][inlineListSuggester:tags]` |
>> **Pronounced** |  `INPUT[textArea:pronounced]` |
>> **Aliases** | `INPUT[list:aliases]` |
>> **Art** | `INPUT[imageSuggester(optionQuery("")):art]` |
>
>> [!metadata|metadataoption]- Location Information
>> #### Location Information
>>  |
>> ---|---|
>> **Terrain** | `INPUT[Terrain][inlineListSuggester:terrain]` |
>> **Parent Plane** | `INPUT[inlineListSuggester(optionQuery(#Location/Plane AND !"z_Templates"), useLinks(partial)):parentplane]` |
>> **Parent Galaxy** | `INPUT[inlineListSuggester(optionQuery(#Location/Galaxy AND !"z_Templates"), useLinks(partial)):parentgalaxy]` |
>> **Parent StarSystem** | `INPUT[inlineListSuggester(optionQuery(#Location/StarSystem AND !"z_Templates"), useLinks(partial)):parentstarsystem]` |
>> **Parent Planet** | `INPUT[inlineListSuggester(optionQuery(#Location/Planet AND !"z_Templates"), useLinks(partial)):parentplanet]` |
>> **Parent Continent** | `INPUT[inlineListSuggester(optionQuery(#Location/Continent AND !"z_Templates"), useLinks(partial)):parentcontinent]` |
>> **Parent Region** | `INPUT[inlineListSuggester(optionQuery(#Location/Region AND !"z_Templates"), useLinks(partial)):parentregion]` |



> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Terrain** | `VIEW[{terrain}][text]` |
> **Dominion** | `VIEW[{dominion}][link]` |
> **Region** | `VIEW[{parentregion}][link]` |
> **Continent** | `VIEW[{parentcontinent}][link]` |
> **Planet** | `VIEW[{parentplanet}][link]` |
> **Star System** | `VIEW[{parentstarsystem}][link]` |
> **Galaxy** | `VIEW[{parentgalaxy}][link]` |
> **Plane** | `VIEW[{parentplane}][link]` |

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
> [!metadata|reaches]- Reaches
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(terrain, ", ") AS Terrain, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentsubregion, this.file.link) AND contains(tags, "Location/Reach")
> SORT file.name ASC
> ```

> [!metadata|settlements]- Settlements
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(settlementtype, ", ") AS Type, join(defence, ", ") AS Defences, join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentsubregion, this.file.link) AND contains(tags, "Location/Settlement")
> SORT file.name ASC
> ```

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)", join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentsubregion, this.file.link) AND contains(tags, "Location/POI")
> SORT tags DESC, poitype ASC, file.name ASC
> ```

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(parentsubregion, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC
> ```

> [!metadata|entities]- Entities
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(tags, ", ") AS Tags, join(link(parentlocation), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(parentsubregion, this.file.link) AND contains(tags, "Entity")
> SORT file.name ASC
> ```

## Overview 
> [!quote]+ Theme
> *“Where sand meets stone, and roots grasp the sky.”*



## Current Events



## History



## Notes

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
> *“Where sand meets stone, and roots grasp the sky.”*



## Current Events



## History



## Notes

