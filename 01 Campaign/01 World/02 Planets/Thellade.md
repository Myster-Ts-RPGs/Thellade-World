---
tags:
  - "#Status/Blank"
  - "#Location"
  - "#Location/Planet"
art: 90 Assets/Images/Placeholders/PlaceholderPlanet.png
location:
  - "[[01 Campaign/01 World/01 Planes/Material Plane]]"
parentplane:
  - "[[Material Plane]]"
parentstarsystem:
  - "[[Solurean System]]"
parentgalaxy:
  - "[[Exyxian Veil]]"
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

> [!infobox|wsmall]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Terrain** | `VIEW[{terrain}][text]` |
> **Star System**| `VIEW[{parentstarsystem}][link]` 
> **Galaxy**| `VIEW[{parentgalaxy}][link]` 
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

> [!metadata|continents]- Continents
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE contains(parentplanet, this.file.link) AND contains(tags, "Location/Continent")
> SORT file.name ASC
> ```

> [!metadata|regions]- Regions
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE contains(parentplanet, this.file.link) AND contains(tags, "Location/Region")
> SORT file.name ASC
> ```

> [!metadata|subregions]- Subregions
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE contains(parentplanet, this.file.link) AND contains(tags, "Location/Subregion")
> SORT file.name ASC
> ```

> [!metadata|reaches]- Reaches
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE contains(parentplanet, this.file.link) AND contains(tags, "Location/Reach")
> SORT file.name ASC
> ```

> [!metadata|settlements]- Settlements
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE contains(parentplanet, this.file.link) AND contains(tags, "Location/Settlement")
> SORT file.name ASC
> ```

> [!metadata|locations]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE contains(parentplanet, this.file.link) AND contains(tags, "Location/POI")
> SORT file.name ASC
> ```

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE contains(parentplanet, this.file.link) AND contains(tags, "Organization")
> SORT file.name ASC
> ```

> [!metadata|entities]- Entities
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases
> FROM "01 Campaign"
> WHERE contains(parentplanet, this.file.link) AND contains(tags, "Entity")
> SORT file.name ASC
> ```


## Overview 
### Cities by Region
| City         | Type    | Population | Region                    | Subregion                 |
|--------------|---------|------------|---------------------------|---------------------------|
| Bayland      | Capital |            | The Elarian Fold          | Greenrush Vale            |
| Gondolin     | City    |            | The Elarian Fold          | Greenrush Vale            |
| Rohir        | Town    |            | The Elarian Fold          | Greenrush Vale            |
| Dartmouth    | Town    |            | The Elarian Fold          | Scrollfen                 |
| Meriadock    | Town    |            | The Elarian Fold          | Scrollfen                 |
| Nimrodel     | City    |            | The Elarian Fold          | Scrollfen                 |
| Warren       | City    |            | The Elarian Fold          | Scrollfen                 |
| Greenbay     | City    |            | The Elarian Fold          | The Foldroot Coast        |
| Revalia      | Capital |            | The Elarian Fold          | The Foldroot Coast        |
| Sutin        | Town    |            | The Elarian Fold          | The Foldroot Coast        |
| Larock       | City    |            | The Elarian Fold          | The Northglen Plateau     |
| Williston    | Town    |            | The Elarian Fold          | The Northglen Plateau     |
| Findor       | Town    |            | The Elarian Fold          | The Taconic Reaches       |
| Jericho      | Town    |            | The Elarian Fold          | The Taconic Reaches       |
| Selfoss      | City    |            | The Frostmarch Expanse    | Bristletop Isles          |
| Vík          | Town    |            | The Frostmarch Expanse    | Bristletop Isles          |
| Grindavík    | Town    |            | The Frostmarch Expanse    | Hágöngulón Tundra         |
| Horsehead    | Town    |            | The Frostmarch Expanse    | Hágöngulón Tundra         |
| Northborough | City    |            | The Frostmarch Expanse    | Hágöngulón Tundra         |
| Ankor        | Town    |            | The Frostmarch Expanse    | The Deepfrost Divide      |
| Thingvellir  | Town    |            | The Frostmarch Expanse    | The Deepfrost Divide      |
| Wolf-Hollow  | Capital |            | The Frostmarch Expanse    | The Deepfrost Divide      |
| Fintolín     | Town    |            | The Frostmarch Expanse    | The Eirunth Vale          |
| Fjallabak    | Town    |            | The Frostmarch Expanse    | The Galevein Crest        |
| Vatnajökull  | Town    |            | The Frostmarch Expanse    | The Glacient Crown        |
| Fanghorn     | Town    |            | The Frostmarch Expanse    | The Grefang Wilds         |
| Silvertree   | Town    |            | The Frostmarch Expanse    | The Grefang Wilds         |
| Jimbokand    | City    |            | The Greyhollow Frontier   | The Barrowfield Stretch   |
| Styrmholm    | Capital |            | The Greyhollow Frontier   | The Barrowfield Stretch   |
| Beechwood    | City    |            | The Greyhollow Frontier   | The Beechveil Wilds       |
| Lakewill     | Town    |            | The Greyhollow Frontier   | The Hollowmere Shroud     |
| Holland      | City    |            | The Greyhollow Frontier   | The Lanternwood Stretch   |
| Linwood      | Town    |            | The Greyhollow Frontier   | The Lanternwood Stretch   |
| Oakledge     | Capital |            | The Greyhollow Frontier   | The Lanternwood Stretch   |
| Faynor       | Town    |            | The Obsidian Crestlands   | The Copperfen Coast       |
| Mapelín      | Town    |            | The Obsidian Crestlands   | The Copperfen Coast       |
| Dolgoroth    | City    |            | The Obsidian Crestlands   | The Rimshade Edge         |
| Ringrad      | City    |            | The Obsidian Crestlands   | The Rimshade Edge         |
| Jambito      | Town    |            | The Outcast Isles         | Jambito Isles             |
| Boba         | City    |            | The Outcast Isles         | Kanda Isles               |
| Kanda        | Capital |            | The Outcast Isles         | Kanda Isles               |
| Lambaro      | City    |            | The Outcast Isles         | Lambaro Isles             |
| Mangagoy     | City    |            | The Outcast Isles         | Mangagoy Isles            |
| Mwingu       | Town    |            | The Outcast Isles         | Mwingu Isles              |
| Lontauk      | Town    |            | The Shatterglen Divide    | The Valegloom Expanse     |
| Seqtria      | Town    |            | The Shatterglen Divide    | The Valegloom Expanse     |
| Vale         | City    |            | The Shatterglen Divide    | The Valegloom Expanse     |
| Babis        | Town    |            | The Shatterglen Divide    | The Wyrdplain Reaches     |
| Marqash      | Town    |            | The Shatterglen Divide    | The Wyrdplain Reaches     |
| Natho        | Town    |            | The Shatterglen Divide    | The Wyrdplain Reaches     |
| Soudmina     | City    |            | The Shatterglen Divide    | The Wyrdplain Reaches     |
| Uthan        | City    |            | The Shatterglen Divide    | The Wyrdplain Reaches     |
| Kurth        | City    |            | The Spectacle Islands     | The Brokenwake Isles      |
| Braintree    | Town    |            | The Spectacle Islands     | The Starcairn Islands     |
| Folmouth     | Capital |            | The Spectacle Islands     | The Tideglass Reaches     |
| Hawar        | Town    |            | The Sunscar Wastes        |                           |
| Hena         | City    |            | The Sunscar Wastes        |                           |
| Crocolock    | City    |            | The Verdant Girdle        | Alligator Island          |
| Acer         | Town    |            | The Verdant Girdle        | The Amberbark Wilds       |
| Sapindaceae  | City    |            | The Verdant Girdle        | The Amberbark Wilds       |
| Saccharum    | Capital |            | The Verdant Girdle        | The Emberpetal Canopy     |
| Salic        | Town    |            | The Verdant Girdle        | The Emberpetal Canopy     |
| Caldy        | Town    |            | The Verdant Girdle        | The Heatherweld           |
| Llantry      | City    |            | The Verdant Girdle        | The Heatherweld           |
| Tirion       | City    |            | The Verdant Girdle        | The Verdantrest Basin     |
| Bergav       | Capital |            | The Verdant Girdle        | The Winedark Glade        |
| Ellit        | City    |            | The Verdant Girdle        | The Winedark Glade        |
| Abenaki      | Town    |            | The Zaharan Expanse       | The Kuromu Spine          |   
| Fin Shinto   | Town    |            | The Zaharan Expanse       | The Kuromu Spine          |
| Mali         | Town    |            | The Zaharan Expanse       | The Kuromu Spine          |
| Morgantown   | Town    |            | The Zaharan Expanse       | The Kuromu Spine          |
| San Pico     | Town    |            | The Zaharan Expanse       | The Kuromu Spine          |
| Triton       | City    |            | The Zaharan Expanse       | The Kuromu Spine          |
| Walkamunu    | City    |            | The Zaharan Expanse       | The Kuromu Spine          |
| Yichang      | Town    |            | The Zaharan Expanse       | The Kuromu Spine          |
| Anis         | City    |            | The Zaharan Expanse       | The Montakama Flats       |
| Karna        | Town    |            | The Zaharan Expanse       | The Montakama Flats       |
| Montak       | Capital |            | The Zaharan Expanse       | The Montakama Flats       |
| Zahongta     | City    |            | The Zaharan Expanse       | The Montakama Flats       |











### Cities Alphabetically
| City         | Population | Region                  | Subregion                 |
|--------------|------------|--------------------------|---------------------------|
| Anis         |            | The Zaharan Expanse      | The Montakama Flats       |
| Ankor        |            | The Frostmarch Expanse   | The Deepfrost Divide      |
| Babis        |            | The Shatterglen Divide   | The Wyrdplain Reaches     |
| Bayland      |            | The Elarian Fold         | Greenrush Vale            |
| Beechwood    |            | The Greyhollow Frontier  | The Beechveil Wilds       |
| Boba         |            | The Outcast Isles        | Kanda Isles               |
| Braintree    |            | The Spectacle Islands    | The Starcairn Islands     |
| Caldy        |            | The Verdant Girdle       | The Heatherweld           |
| Darhos       |            | The Zaharan Expanse      | The Montakama Flats       |
| Dartmouth    |            | The Elarian Fold         | Scrollfen                 |
| Derkinor     |            | The Zaharan Expanse      | The Montakama Flats       |
| Dolgoroth    |            | The Obsidian Crestlands  | The Rimshade Edge         |
| Eruptuous    |            | The Zaharan Expanse      | The Kuromu Spine          |
| Faynor       |            | The Obsidian Crestlands  | The Copperfen Coast       |
| Fanghorn     |            | The Frostmarch Expanse   | The Grefang Wilds         |
| Fintolín     |            | The Frostmarch Expanse   | The Eirunth Vale          |
| Findor       |            | The Elarian Fold         | The Taconic Reaches       |
| Fjallabak    |            | The Frostmarch Expanse   | The Galevein Crest        |
| Folmouth     |            | The Spectacle Islands    | The Tideglass Reaches     |
| Gondolin     |            | The Elarian Fold         | Greenrush Vale            |
| Greenbay     |            | The Elarian Fold         | The Foldroot Coast        |
| Grindavík    |            | The Frostmarch Expanse   | Hágöngulón Tundra         |
| Hena         |            | The Sunscar Wastes       |                           |
| Holland      |            | The Greyhollow Frontier  | The Lanternwood Stretch   |
| Horsehead    |            | The Frostmarch Expanse   | Hágöngulón Tundra         |
| Iktora       |            | The Zaharan Expanse      | The Montakama Flats       |
| Jambito      |            | The Outcast Isles        | Mwingu Isles              |
| Jericho      |            | The Elarian Fold         | The Taconic Reaches       |
| Karna        |            | The Zaharan Expanse      | The Montakama Flats       |
| Kanda        |            | The Outcast Isles        | Kanda Isles               |
| Kurth        |            | The Spectacle Islands    | The Brokenwake Isles      |
| Lakewill     |            | The Greyhollow Frontier  | The Hollowmere Shroud     |
| Lambaro      |            | The Outcast Isles        | Lambaro Isles             |
| Larock       |            | The Elarian Fold         | The Northglen Plateau     |
| Linwood      |            | The Greyhollow Frontier  | The Lanternwood Stretch   |
| Lontauk      |            | The Shatterglen Divide   | The Valegloom Expanse     |
| Mangagoy     |            | The Outcast Isles        | Kanda Isles               |
| Mapelín      |            | The Obsidian Crestlands  | The Copperfen Coast       |
| Marqash      |            | The Shatterglen Divide   | The Wyrdplain Reaches     |
| Midarro      |            | The Zaharan Expanse      | The Montakama Flats       |
| Meriadock    |            | The Elarian Fold         | Scrollfen                 |
| Montak       |            | The Zaharan Expanse      | The Montakama Flats       |
| Morgantown   |            | The Zaharan Expanse      | The Kuromu Spine          |
| Mwingu       |            | The Outcast Isles        | Mwingu Isles              |
| Natho        |            | The Shatterglen Divide   | The Wyrdplain Reaches     |
| Nimrodel     |            | The Elarian Fold         | Scrollfen                 |
| Northborough |            | The Frostmarch Expanse   | Hágöngulón Tundra         |
| Oakledge     |            | The Greyhollow Frontier  | The Lanternwood Stretch   |
| Revalia      |            | The Elarian Fold         | The Foldroot Coast        |
| Ringrad      |            | The Obsidian Crestlands  | The Rimshade Edge         |
| Rohir        |            | The Elarian Fold         | Greenrush Vale            |
| Saccharum    |            | The Verdant Girdle       | The Emberpetal Canopy     |
| Salic        |            | The Verdant Girdle       | The Emberpetal Canopy     |
| San Pico     |            | The Zaharan Expanse      | The Kuromu Spine          |
| Sapindaceae  |            | The Verdant Girdle       | The Amberbark Wilds       |
| Seqotria     |            | The Shatterglen Divide   | The Valegloom Expanse     |
| Silvertree   |            | The Frostmarch Expanse   | The Grefang Wilds         |
| Soudmina     |            | The Shatterglen Divide   | The Wyrdplain Reaches     |
| Styrmholm    |            | The Greyhollow Frontier  | The Barrowfield Stretch   |
| Sutin        |            | The Elarian Fold         | The Foldroot Coast        |
| Thingvellir  |            | The Frostmarch Expanse   | The Deepfrost Divide      |
| Tirion       |            | The Verdant Girdle       | The Verdantrest Basin     |
| Triton       |            | The Zaharan Expanse      | The Kuromu Spine          |
| Uthan        |            | The Shatterglen Divide   | The Wyrdplain Reaches     |
| Vale         |            | The Shatterglen Divide   | The Valegloom Expanse     |
| Vatnajökull  |            | The Frostmarch Expanse   | The Glacient Crown        |
| Vik          |            | The Frostmarch Expanse   | Bristletop Isles          |
| Walkamunu    |            | The Zaharan Expanse      | The Kuromu Spine          |
| Warren       |            | The Elarian Fold         | Scrollfen                 |
| Williston    |            | The Elarian Fold         | The Northglen Plateau     |
| Wolf-Hollow  |            | The Frostmarch Expanse   | The Deepfrost Divide      |
| Yichang      |            | The Zaharan Expanse      | The Kuromu Spine          |
| Zahongta     |            | The Zaharan Expanse      | The Montakama Flats       |

## Current Events



## History



## Notes

