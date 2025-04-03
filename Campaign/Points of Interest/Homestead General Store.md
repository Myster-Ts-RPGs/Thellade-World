---
tags:
  - "#Location"
  - "#POI"
art: z_Assets/Misc/PlaceholderImage.png
location:
  - "[[Kolberdon]]"
  - "[[Gerrict Park]]"
organization:
  - "[[Odinys Merchant's Guild]]"
poitype:
  - Shop [General]
owner:
  - "[[Lyle Underbough]]"
assistant:
  - "[[Zeraath Embul]]"
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
> At the very center of Kolberdon, where the town’s bustling activity converges, stands The Homestead General Store. Its wide wooden porch, adorned with hanging baskets of vibrant flowers and a swinging sign creaking gently in the breeze, invites you in. The sign features a homely image of a barn and wheat sheaves, welcoming all with the promise of good, honest goods. The chatter of townsfolk and the occasional lowing of cattle from the nearby farms fills the air as you approach.
>
Upon entering, you’re greeted by the rustic charm of wooden beams and a warm, earthy scent that speaks of fresh produce and well-worn leather. The interior is a cozy labyrinth of shelves packed with an eclectic mix of goods. From barrels of apples and sacks of flour to hand-woven baskets and sturdy farming tools, every inch of space is utilized. The sound of a bell rings out as another customer enters, adding to the lively, yet homey, atmosphere of the store.

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

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)"
> FROM "Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Location")
> SORT tags DESC, poitype ASC, file.name ASC

> [!metadata|characters]- Characters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(occupation, ", ") AS "Occupations", join(link(organization), ", ") AS "Organizations"
> FROM "Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Character") AND !contains(condition, "Dead")
> SORT tags DESC, file.name ASC

## Overview 

The Homestead General Store is the heart and soul of Kolberdon, serving as the primary hub for all the town’s necessities. Known for its wide variety of goods, the store caters to farmers, artisans, and families alike. Whether you need fresh produce, farming supplies, or household essentials, The Homestead General Store provides it all. Its welcoming environment and well-stocked shelves make it a beloved institution within the community, reflecting the hardworking spirit and homely charm of Kolberdon.

## Random Customers

1. Farmer Harlan Wheatley - Human, Male: A seasoned farmer with a weathered face and a heart of gold. He frequents the market to sell his freshly harvested crops and to catch up on the latest town gossip.
2. Matilda Goodbarrel - Halfling, Female: The cheerful proprietor of the town's bakery. She visits the shop to stock up on ingredients and often shares samples of her delicious pies and pastries with other customers.
3. Eli Greenleaf - Elf, Male: A traveling herbalist and healer. He browses the market for rare herbs and medicinal supplies, his keen eyes always searching for something unique to enhance his remedies.
4. Greta Stonehand - Dwarf, Female: A skilled blacksmith known for her exceptional craftsmanship. She comes to The Harvest Market to trade her finely made tools and to purchase raw materials for her forge.
5. Young Tommy Bright - Human, Male: A curious and energetic boy who loves exploring the market's many wonders. He is often seen with his nose pressed against the glass jars of sweets, dreaming of the day he can buy them all.

## Current Events

Recently, a series of mysterious thefts have plagued The Homestead General Store, with valuable goods disappearing without a trace. The townsfolk are abuzz with speculation, and the local guards have been called in to investigate. Meanwhile, a traveling merchant has set up a stall outside the shop, offering exotic goods and strange trinkets from distant lands, drawing both excitement and suspicion from the wary residents of Kolberdon.

## History

The Homestead General Store has stood as a cornerstone of Kolberdon for generations, established by one of the town’s founding families. Originally a small trading post, it has grown alongside the town, expanding its inventory and its role within the community. Over the years, it has weathered economic shifts, natural disasters, and the ebb and flow of town life, always remaining a steadfast provider for Kolberdon’s residents. The store is not just a place to buy goods; it is a gathering spot where stories are shared, advice is given, and the community’s bond is strengthened. The current proprietor, a descendant of the original founder, maintains the store's legacy of quality and service, ensuring it remains the heart of Kolberdon.

## Notes

