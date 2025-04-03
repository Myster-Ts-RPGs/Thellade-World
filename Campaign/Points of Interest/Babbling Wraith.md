---
tags:
  - "#Location"
  - "#POI"
art: z_Assets/POIs/BabblingWraith.png
poitype:
  - Shop [Tavern]
banner: on
pronounced: BA-bul-ling WRAI-th
owner:
  - "[[Murook Coyle]]"
organization:
  - "[[Odinys Merchant's Guild]]"
location:
  - "[[Kamderah]]"
  - "[[Far Reach]]"
assistant:
  - "[[Kathryne Drummond]]"
  - "[[Harudos Wixley]]"
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
When the players first arrive at the Babbling Wraith, they are greeted by the sound of laughter and clinking glasses. The entrance is surrounded by large, wooden barrels filled with local ales and meads, and the warm glow of candlelight spills out from the windows. As they step inside, they are greeted by Murook herself, who greets them with a hearty "Welcome to the Babbling Wraith!" The players see the common room is filled with rough-hewn tables and benches, and a roaring fireplace at the far end of the room. The air is thick with the smell of roasted meats, spiced vegetables, and baked bread, and the sounds of lively conversation and the clinking of glasses.

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

The Babbling Wraith is a cozy and lively tavern located in the heart of Kamderah. The tavern has a warm and inviting atmosphere, with the sweet aroma of roasting meats and freshly baked bread wafting through the air. The walls are adorned with various trinkets and keepsakes, giving the place a homespun feel. The tavern is run by Murook Coyle, a jovial and rotund Half-Orc woman who always has a smile on her face and a kind word for her patrons.

The Babbling Wraith is a popular gathering spot for travelers, locals, and adventurers, and Murook is always on hand to offer a shoulder to cry on or lend an ear to listen. Whether the players are in need of a meal, a drink, or just a friendly chat, the Babbling Wraith and Murook are sure to provide them with a warm and welcoming respite from the perils of the road.