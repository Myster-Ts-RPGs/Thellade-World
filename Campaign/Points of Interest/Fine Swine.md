---
tags:
  - "#Location"
  - "#POI"
art: z_Assets/POIs/FineSwine.png
poitype:
  - Shop [Tavern]
owner:
  - "[[Lorana Dwine]]"
organization:
  - "[[Odinys Merchant's Guild]]"
location:
  - "[[Feldon]]"
banner: on
assistant:
  - "[[Nerhi Deiyan]]"
  - "[[Jefor Helee]]"
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
> As your party meanders through the bustling streets of Feldon, the sight of the freshly constructed Fine Swine tavern catches your eye. Its polished wooden exterior and elegant sign depicting a well-dressed pig with a goblet in hand set it apart from the surrounding buildings. The warm glow of lanterns and the lively murmur of conversation spill out from the open windows, inviting you in. The scent of slow-cooked pork and freshly baked bread wafts through the air, promising a feast for the senses.
>
Stepping through the wide, welcoming doors, you're greeted by the vibrant atmosphere of The Fine Swine. The interior is a harmonious blend of rustic charm and modern comfort, with sturdy wooden tables and plush leather chairs arranged across the spacious room. A grand staircase leads to a balcony that overlooks the main floor, offering more intimate seating. The walls are adorned with paintings of pastoral scenes and whimsical depictions of pigs in various jovial activities. Behind the long mahogany bar, the tavern's enthusiastic staff serve a variety of drinks, while the open kitchen allows guests to watch the skilled chefs at work. The air is filled with laughter, clinking glasses, and the irresistible aroma of culinary delights.

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

The Fine Swine is a newly opened, two-story tavern in Feldon that has quickly become a favorite among locals and travelers. Its blend of rustic and modern elements creates a welcoming atmosphere that caters to a diverse clientele. The tavern boasts a spacious main floor with an open kitchen and a cozy upstairs balcony for more private gatherings. Renowned for its pork dishes and fine selection of beverages, The Fine Swine aims to provide a memorable dining and social experience.

## Clientele

 - Lila Whistlewind - Halfling, Female: A talented chef known for her inventive pork dishes, frequently seen bustling around the open kitchen.
- Bragg - Half-Orc, Male: A regular patron, often found at the bar sharing tales of his adventures and enjoying a hearty meal.
- Elara Moonshadow - Elf, Female: A traveling bard who has made The Fine Swine her temporary home, entertaining guests with her enchanting melodies. (This should be the woman that enchants people)

## Goods & Services

### Food

| Name                | Description                                                                                      | Cost       |
| ------------------- | ------------------------------------------------------------------------------------------------ | ---------- |
| Pork Tenderloin     | Juicy pork tenderloin marinated in herbs and spices, served with a side of roasted vegetables.   | 2 sp       |
| Swine Stew          | A rich and hearty stew made with slow-cooked pork, root vegetables, and a blend of savory herbs. | 1 sp, 8 cp |
| Crispy Pork Belly   | Crispy pork belly with a honey glaze, served with a side of tangy apple slaw.                    | 1 sp, 5 cp |
| Stuffed Mushrooms   | Large mushrooms stuffed with pork sausage, herbs, and breadcrumbs, baked to perfection.          | 1 sp       |
| Bacon-Wrapped Dates | Sweet dates wrapped in crispy bacon, drizzled with a balsamic reduction.                         | 8 cp       |

### Drink

| Name              | Description                                                                                                 | Cost |
| ----------------- | ----------------------------------------------------------------------------------------------------------- | ---- |
| Honeyed Mead      | A sweet and aromatic mead made from local honey, favored by many of the tavern’s patrons.                   | 5 cp |
| Whistlewind White | A crisp and refreshing white wine, ideal for those looking for a lighter drink.                             | 1 sp |
| Apple Cider       | A refreshing cider made from the finest apples in Feldon, with a perfect balance of sweetness and tartness. | 6 cp |

### Services

| Name    | Description                                     | Cost               |
| ------- | ----------------------------------------------- | ------------------ |
| Lodging | Comfortable rooms to rent for an evening's rest | 3 - 5 sp (Per day) |

## Keyed Locations



## Current Events

The Fine Swine is celebrating its grand opening month with a series of special events. This week features a pork cook-off where local chefs compete to create the best pork dish, judged by the tavern’s patrons. The atmosphere is electric with excitement as the aroma of sizzling pork fills the air. Additionally, Elara Moonshadow is performing nightly, drawing crowds with her enchanting music. Special discounts on food and drink are offered throughout the week, making it the perfect time for new visitors to experience all that The Fine Swine has to offer.

## History



## Notes

