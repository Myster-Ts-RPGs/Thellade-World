---
tags:
  - "#Location"
  - "#Location/POI"
  - "#Status/Blank"
art: 90 Assets/Images/Placeholders/PlaceholderPointOfInterest.png
banner: on
poitype:
  - Shop
location:
  - "[[Gullsway]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/MangagoyNotes]]"
shoptype:
  - Bakery
  - Butcher
  - Fishmonger
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
>> **Shop Type** | `INPUT[ShopType][inlineListSuggester:shoptype]` |
>> **Dominion** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):dominion]` |
>> **Owners** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):owner]` |
>> **Assistant** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):assistant]` |
>> **Organization** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>> **Parent Plane** | `INPUT[inlineListSuggester(optionQuery(#Location/Plane AND !"z_Templates"), useLinks(partial)):parentplane]` |
>> **Parent Galaxy** | `INPUT[inlineListSuggester(optionQuery(#Location/Galaxy AND !"z_Templates"), useLinks(partial)):parentgalaxy]` |
>> **Parent StarSystem** | `INPUT[inlineListSuggester(optionQuery(#Location/StarSystem AND !"z_Templates"), useLinks(partial)):parentstarsystem]` |
>> **Parent Planet** | `INPUT[inlineListSuggester(optionQuery(#Location/Planet AND !"z_Templates"), useLinks(partial)):parentplanet]` |
>> **Parent Continent** | `INPUT[inlineListSuggester(optionQuery(#Location/Continent AND !"z_Templates"), useLinks(partial)):parentcontinent]` |
>> **Parent Region** | `INPUT[inlineListSuggester(optionQuery(#Location/Region AND !"z_Templates"), useLinks(partial)):parentregion]` |
>> **Parent Subregion** | `INPUT[inlineListSuggester(optionQuery(#Location/Subregion AND !"z_Templates"), useLinks(partial)):parentsubregion]` |
>> **Parent Reach** | `INPUT[inlineListSuggester(optionQuery(#Location/Reach AND !"z_Templates"), useLinks(partial)):parentreach]` |
>> **Parent Settlement** | `INPUT[inlineListSuggester(optionQuery(#Location/Settlement AND !"z_Templates"), useLinks(partial)):parentsettlement]` |
>> **Parent District** | `INPUT[inlineListSuggester(optionQuery(#Location/District AND !"z_Templates"), useLinks(partial)):parentdistrict]` |
>> **Parent POI** | `INPUT[inlineListSuggester(optionQuery(#Location/POI AND !"z_Templates"), useLinks(partial)):parentpoi]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Shop Type** | `VIEW[{shoptype}][text]` |
> **Dominion** | `VIEW[{dominion}][link]` |
> **Owners** | `VIEW[{owner}][link]` |
> **Assistant** | `VIEW[{assistant}][link]` |
> **Organization** | `VIEW[{organization}][link]` |
> **Location (Parent POI)** | `VIEW[{parentpoi}][link]` |
> **District** | `VIEW[{parentdistrict}][link]` |
> **Settlement** | `VIEW[{parentsettlement}][link]` |
> **Reach** | `VIEW[{parentreach}][link]` |
> **Region** | `VIEW[{parentregion}][link]` |
> **Continent** | `VIEW[{parentcontinent}][link]` |
> **Planet** | `VIEW[{parentplanet}][link]` |
> **Star System** | `VIEW[{parentstarsystem}][link]` |
> **Galaxy** | `VIEW[{parentgalaxy}][link]` |
> **Plane** | `VIEW[{parentplane}][link]` |
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

# Dataviews for POIs

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)", join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentpoi, this.file.link) AND contains(tags, "Location/POI")
> SORT tags DESC, poitype ASC, file.name ASC
> ```

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(parentpoi, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC
> ```

> [!metadata|entities]- Entities
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(tags, ", ") AS Tags, join(link(parentlocation), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(parentpoi, this.file.link) AND contains(tags, "Entity")
> SORT file.name ASC
> ```

## Overview 

A seaside bakehouse nestled in Gullsway’s salt-blown alleys, Brinecrust serves brined breads, smoked fish pies, and butcher’s rolls seasoned with spice brine. Locals claim the scent alone draws sailors three docks over.


## Special Items

| Item | Cost |
| ---- | ---- |
|      |      |
## Services

| Service | Description | Cost |
| ------- | ----------- | ---- |
|         |             |      |

## Current Events



## History



## Notes

