---
tags:
  - "#Location"
  - "#POI"
art: z_Assets/Misc/PlaceholderImage.png
location:
  - "[[Kolberdon]]"
  - "[[Gerrict Park]]"
owner:
  - "[[OLD Tavin Glemmer]]"
poitype:
  - Shop [Antiques and Relics]
pronounced: EN-ig-mah EM-poor-ee-um
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
> Tucked away on a quaint side street of Kolberdon, a whimsical shop beckons with an air of mystery and charm. The sign above the door, painted with intricate swirls and fantastical creatures, reads “Enigma Emporium.” The windows are filled with an eclectic array of items, each more curious than the last, catching the eye of anyone who passes by. The faint scent of old parchment and lavender wafts out as the door swings open, inviting you to explore the wonders within.
>
Stepping inside, you are greeted by a riot of colors and shapes. Shelves and tables overflow with an astonishing variety of objects: glittering gemstones, ancient scrolls, peculiar figurines, and delicate jewelry. The walls are lined with oddities from distant lands, each with a story waiting to be told. The soft light from enchanted lanterns casts a warm glow, creating an atmosphere of enchantment and discovery. Every nook and cranny of Enigma Emporium promises a new adventure for the curious soul.

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

Enigma Emporium is a beloved knickknack store in Kolberdon, renowned for its vast collection of odds and ends. The shop offers a wide range of items, from the mundane to the magical, making it a favorite spot for both locals and travelers seeking unique gifts, rare collectibles, or simply a touch of whimsy. The store’s enchanting ambiance and ever-changing inventory ensure that no two visits are ever the same, enticing customers to return time and time again.

## Customers

1. Elara Moonshadow - Elf, Female: A curious scholar with a keen interest in ancient artifacts. She often visits the shop in search of rare tomes and mystical items to aid her research, her eyes alight with fascination.
2. Thaddeus Tinkerton - Gnome, Male: A retired inventor with a knack for finding hidden potential in everyday objects. He spends hours browsing the shelves, collecting trinkets and gadgets to tinker with in his workshop.
3. Marigold Brightflower - Halfling, Female: A cheerful florist who loves to decorate her home and shop with unique and colorful items. She delights in finding new treasures to add to her eclectic collection of knickknacks.
4. Tobias Flint - Human, Male: A young adventurer looking for a lucky charm before his next quest. He carefully examines each item, hoping to find something that will bring him good fortune on his travels.
5. Granny Willow - Human, Female: An elderly woman with a mysterious past and a deep knowledge of the arcane. She frequents the shop to find ingredients for her potions and spells, always offering cryptic advice to those who seek it.

## Current Events

Lately, the shop has been abuzz with excitement over a new shipment of curiosities from a far-off land. Among the new items is a peculiar, locked chest that no one has been able to open. Rumors of its contents have sparked the imaginations of Kolberdon’s residents, leading to a surge in visitors hoping to solve the mystery. Meanwhile, strange occurrences have been reported in the shop: items moving on their own, whispered voices in the aisles, and an eerie, flickering light that seems to come from nowhere.

## History

Enigma Emporium has been a fixture in Kolberdon for over a century, its origins shrouded in legend and lore. The shop was founded by a renowned explorer and collector, whose adventures took him to the farthest reaches of the known world. Over the years, the store has changed hands several times, each new owner adding their own unique finds to the ever-growing collection. Despite its age, the shop has always maintained an air of mystery and magic, drawing in those with a sense of wonder and a love for the unusual. The current proprietor, a charming and enigmatic individual, continues the tradition of seeking out the rare and the extraordinary, ensuring that Enigma Emporium remains a beloved and enchanting destination in Kolberdon.

## Notes

The Mimic 'Chester' has been discovered and now lived peacefully in the shop.