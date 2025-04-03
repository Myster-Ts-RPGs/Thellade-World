---
tags:
  - "#Location"
  - "#POI"
art: z_Assets/POIs/SourPint.png
poitype:
  - Shop [Tavern]
banner: on
owner:
  - "[[Grumma Onpas]]"
organization:
  - "[[Odinys Merchant's Guild]]"
location:
  - "[[Kamderah]]"
  - "[[Cotton Ward]]"
---

```meta-bind-js-view 
{art} as art {banner} as banner
--- 
if (context.bound.art !== "z_Assets/Misc/PlaceholderImage.png" && context.bound.banner === "on")  { 
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
>> **Location** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |

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
> ###### [[Travel Calculator]] 
>  |
> ---|---|
> **TBD** | `VIEW[round(52 / (({Travel Calculator#MilesPerHour}*{Travel Calculator#HoursPerDay})*{Travel Calculator#SpeedMultiplier}),1)]` Day(s)
> **TBD** | `VIEW[round(0.5 / ({Travel Calculator#MilesPerHour} * {Travel Calculator#SpeedMultiplier}) * 60, 1)]` Minute(s)

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

> [!metadata|characters]- Characters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(occupation, ", ") AS "Occupations", join(link(organization), ", ") AS "Organizations"
> FROM "Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Character") AND !contains(condition, "Dead")
> SORT tags DESC, file.name ASC

## Overview 



## Clientele



## Goods & Services

### Food

| Name | Description | Cost |
| ---- | ----------- | ---- |
|      |             |      |

### Drink

| Name | Description | Cost |
| ---- | ----------- | ---- |
|      |             |      |

### Services

| Name | Description | Cost |
| ---- | ----------- | ---- |
|      |             |      |

## Keyed Locations



## Current Events



## History



## Notes

The Sour Pint is a small, cramped establishment that has seen better days. The atmosphere inside is dark and dreary, with musty old tapestries hanging from the walls and a strong smell of ale and old food wafting through the air.

The proprietor of the tavern is a grumpy female gnome named Grumma. She runs the tavern with a firm hand and has little patience for anyone who disrupts her business. Grumma has a sharp tongue and is quick to lash out at anyone who bothers her, making her a difficult person to get along with. Despite this, the tavern is a popular spot for travelers and locals who are looking for a cheap place to drink and eat.

The tavern's menu is simple and straightforward, with a selection of ales, stouts, and meads, as well as basic pub food like stew, bread, and cheese. The drinks are strong, but not very flavorful, and the food is greasy and unappetizing.

The atmosphere inside the tavern is dull and uninviting, with a handful of patrons nursing their drinks and talking in low voices. The lighting is dim and flickering, casting shadows on the walls and making it difficult to see anything in detail. The floorboards creak underfoot, and the furniture is old and rickety.

Despite its many shortcomings, "The Sour Pint" serves its purpose as a place for people to relax and unwind after a long day of work or travel. For those who are brave enough to weather Grumma's moods, it can be a cozy and affordable place to spend an evening.