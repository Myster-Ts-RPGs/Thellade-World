---
tags:
  - "#Location"
  - "#POI"
art: z_Assets/POIs/BearAndBottle.png
poitype:
  - Shop [Tavern]
banner: on
owner:
  - "[[Klankes Paskan]]"
organization:
  - "[[Odinys Merchant's Guild]]"
location:
  - "[[Valdian]]"
  - "[[Gilded Quarters]]"
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

The Bear and Bottle is a grand and opulent tavern located in the heart of [[Valdian]] city. It is known for its rich and noble clientele who come to enjoy the finest drinks and cuisine in the city. The interior of the tavern is luxurious, with a spacious bar area, plush seating arrangements, and well-appointed dining rooms. The walls are adorned with expensive tapestries, paintings and art pieces, adding to the atmosphere of wealth and elegance.

As soon as you walk in, you're struck by the overpowering scent of expensive perfume and rich incense. The atmosphere is lively, with the sound of clinking glasses, laughter and hushed conversations filling the air. The clientele are impeccably dressed, with fine silk robes, elegant jewelry, and exotic furs adding to the atmosphere of sophistication.

The bar is tended by the Black Dragonborn proprietor, [[Klankes Paskan]]. Klankes is known for his impeccable taste and the vast selection of drinks he keeps on hand. He prides himself on offering only the finest wines, spirits, and ales, some of which are imported from distant lands. The bartenders are skilled mixologists, able to whip up a wide variety of cocktails and mixed drinks to order.

In the dining area, the tables are set with white linens, crystal glasses, and polished silverware. The menu features a variety of gourmet dishes, with ingredients sourced from the local markets and the finest farms in the surrounding lands. The cuisine is a fusion of different cultures, with a heavy emphasis on rich, flavorful dishes.

The Bear and Bottle is a place for the elite of Valdian to gather, socialize, and enjoy life's pleasures. It is an establishment that is both grand and sophisticated, with a relaxed and friendly atmosphere that makes everyone feel at home. Whether you're in the mood for a drink, a meal, or just a good conversation, the Bear and Bottle is the place to be in Valdian city.