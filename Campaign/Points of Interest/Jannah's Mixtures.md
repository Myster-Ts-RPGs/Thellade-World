---
tags:
  - "#Location"
  - "#POI"
art: z_Assets/POIs/JannahsMixtures.png
banner: on
poitype:
  - Shop [Potion]
owner:
  - "[[Jannah Harrn]]"
organization:
  - "[[Odinys Merchant's Guild]]"
location:
  - "[[Kamderah]]"
  - "[[Forlorn Gate]]"
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
As you enter Jannah's Mixtures, they are greeted by the warm glow of flickering candles, casting soft light upon the shelves and counters filled with various potions, elixirs, and ingredients. The smell of various herbs, spices, and chemical reagents permeates the air, creating a unique and pungent aroma that is both intriguing and overwhelming to the senses.
>
Behind the counter, is a dragonborn. Despite her intimidating appearance, her expression is one seems joyful and greets you with a smile as you enter.
>
The interior of Jannah's Mixtures is meticulously clean and well-organized. The shelves are lined with neatly labeled jars and containers, each filled with various ingredients and compounds, and a large cauldron bubbles away in the corner. The walls are adorned with diagrams and schematics, showcasing the alchemist's mastery of her craft.

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

Jannah's Mixtures is an alchemist shop located in the settlement of Kamderah. It was established by [[Jannah Harrn]], a female dragonborn alchemist, and has been serving the local community for many years.

Jannah learned the ways of alchemy from her mother and honed her skills over many years. She is known for her expertise in creating unique and potent alchemical potions and mixtures. Jannah's Mixtures quickly became a popular destination for adventurers and locals alike, who were seeking powerful alchemical remedies and potions.

Jannah takes great pride in her work and is always experimenting with new ingredients and mixtures to create even more powerful remedies. She is known for her impeccable customer service and always ensures that her customers leave satisfied.

Jannah's Mixtures has become an iconic part of the Kamderah settlement and is known throughout the region for its reputation for quality and potency. Jannah is proud of what she has built and continues to work tirelessly to maintain the reputation of her shop.