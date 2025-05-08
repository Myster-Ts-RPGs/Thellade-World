---
tags:
  - "#Location"
  - "#Settlement"
  - "#TODO"
art: 90 Assets/Images/Misc/PlaceholderImage.png
location:
  - "[[Mangagoy Isles]]"
  - "[[The Outcast Isles]]"
settlementtype: Large City
population: 11,222
import:
  - Magical Trinkets
  - Scrolls
  - Rare Books
export:
  - Potions and Elixirs
  - Arcane Knowledge
  - Instruments
organization:
  - "[[The Emberheart Traders]]"
  - "[[The Crystal Seekers Guild]]"
  - "[[The Arcane Wardens]]"
  - "[[The Ashen Vanguard]]"
  - "[[The Blazing Pledge]]"
  - "[[The Dawnbringers of Lunara]]"
  - "[[The Emberborn League]]"
  - "[[The Eternal Concord]]"
  - "[[The Lumina Guardians]]"
  - "[[The Order of the Ember Blades]]"
  - "[[The Phoenix Assembly]]"
  - "[[The Voidscourge Hunters]]"
  - "[[The Bleeding Tide]]"
  - "[[The Red Runners]]"
  - "[[The Crimson Gauge]]"
  - "[[The Black Sepulcher]]"
  - "[[The Blackwake Corsairs]]"
  - "[[The Crimson Shroud]]"
  - "[[The Cursed Blades]]"
  - "[[The Ember Rats]]"
  - "[[The Emberborn Exiles]]"
  - "[[The Gilded Daggers]]"
  - "[[The Hollow Saints]]"
  - "[[The Infernal Covenant]]"
  - "[[The Iron Syndicate]]"
  - "[[The Midnight Covenant]]"
  - "[[The Mistwalkers]]"
  - "[[The Silver Chain]]"
  - "[[The Gilded Hammer Union]]"
  - "[[The Sunfire Heralds]]"
leader:
  - "[[Garron Draven]]"
dominion:
  - "[[The Kingdom of Kanda]]"
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
>> **Founded** | `INPUT[text:founded]` |
>> **Founded Short**| `INPUT[text:foundedshort]` |
>> **Type** | `INPUT[SettlementType][:settlementtype]` |
>> **Defenses** | `INPUT[Defence][:defence]`
>> **Location** | `INPUT[inlineListSuggester(optionQuery(#Region AND !"z_Templates"), optionQuery(#Subregion AND !"z_Templates"), optionQuery(#Reach AND !"z_Templates"), useLinks(partial)):location]` |
>
>> [!metadata|metadataoption]- Demographics
>> #### Civic Overview
>>  |
>> ---|---|
>> **Leaders** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):leader]` |
>> **Dominion** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):dominion]` |
>> **Government Type** | `INPUT[GovernmentType][inlineListSuggester:governmenttype]` |
>> **Military Presence** |`INPUT[textArea:militarypresence]`
>> **Threats** |`INPUT[textArea:threats]`
>> **Religions** | `INPUT[Religion][inlineListSuggester:religions]` |
>> **Population** |  `INPUT[textArea:population]`
>> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>
>> [!metadata|metadataoption]- Commerce
>> #### Commerce
>>  |
>> ---|---|
>> **Imports** | `INPUT[Goods][inlineListSuggester:import]` |
>> **Exports** | `INPUT[Goods][inlineListSuggester:export]` |
>> **Trade Partners**|`INPUT[inlineListSuggester(optionQuery(#Settlement AND !"z_Templates"), useLinks(partial)):tradepartners]` |
>> **General Level** | `INPUT[text:levelgeneral]` |
>> **Magic Level** | `INPUT[text:levelmagic]` |
>> **Tech Level** | `INPUT[text:leveltech]` |
> 
>> ###### Party
>>  |
>> ---|---|
>> **Party 1 Reputation** | `INPUT[text:party1reputation]` |
>> **Party 2 Reputation** | `INPUT[text:party2reputation]` |
>> **Party 3 Reputation** | `INPUT[text:party3reputation]` |
>> **Party 4 Reputation** | `INPUT[text:party4reputation]` |
>> **Party 5 Reputation** | `INPUT[text:party5reputation]` |
>> **Party 6 Reputation** | `INPUT[text:party6reputation]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Updated**| `VIEW[{updated}][text]` |
> **Founded** | `VIEW[{founded}][text]` |
> **Type** | `VIEW[{settlementtype}][text]` |
> **Defenses** | `VIEW[{defence}]` |
> **Location** | `VIEW[{location}][link]` |
> ###### Demographics
>  |
> ---|---|
> **Leaders** | `VIEW[{leader}][link]` |
> **Dominion** | `VIEW[{dominion}][link]` |
> **Government Type** | `VIEW[{governmenttype}][text]` |
> **Military Presence** | `VIEW[{militarypresence}][text]` |
> **Threats** | `VIEW[{threats}][text]` |
> **Religions** | `VIEW[{religions}][link]` |
> **Population** | `VIEW[{population}][text]` |
> 
> <span style="display:block; text-align:center; font-size:0.9em;"><strong>Racial Makeup</strong></span>
> - <span style="font-size:0.8em;"><strong>Humans</strong> – ##% [~###] (...)</span>
> - <span style="font-size:0.8em;"><strong>Elves</strong> – ##% [~###] (...)</span>
> - <span style="font-size:0.8em;"><strong>Dwarves</strong> – ##% [~###] (...)</span>
> - <span style="font-size:0.8em;"><strong>Halflings</strong> – ##% [~###] (...)</span>
> - <span style="font-size:0.8em;"><strong>Gnomes</strong> – ##% [~###] (...)</span>
> - <span style="font-size:0.8em;"><strong>Kobolds</strong> – ##% [~###] (...)</span>
> - <span style="font-size:0.8em;"><strong>Orcs</strong> – ##% [~###] (...)</span>
> - <span style="font-size:0.8em;"><strong>Tieflings</strong> – ##% [~###] (...)</span>
> - <span style="font-size:0.8em;"><strong>Other</strong> – ##% [~###] (...)</span>
>
> ###### Commerce
>  |
> ---|---|
> **Imports** | `VIEW[{import}][text]` |
> **Exports** | `VIEW[{export}][text]` |
> **Trade Partners** | `VIEW[{tradepartners}][link]` |
> **General Level** | `VIEW[{levelgeneral}][text]` |
> **Magic Level** | `VIEW[{levelmagic}][text]` |
> **Tech Level** | `VIEW[{leveltech}][text]` |
> ###### Party
>  |
> ---|---|
> **Party 1 Reputation** | `VIEW[{party1reputation}][text]` |
> **Party 2 Reputation** | `VIEW[{party2reputation}][text]` |
> **Party 3 Reputation** | `VIEW[{party3reputation}][text]` |
> **Party 4 Reputation** | `VIEW[{party4reputation}][text]` |
> **Party 5 Reputation** | `VIEW[{party5reputation}][text]` |
> **Party 6 Reputation** | `VIEW[{party6reputation}][text]` |

# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span><span style="float: right; font-size: medium"><em>Updated: </em>`VIEW[{updated}]`</span>


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


## Overview
> [!quote]+ Theme
> *“Where sand meets stone, and roots grasp the sky.”*
# Location NPC List
```dataviewjs
await dv.view("z_Templates/Scripts/view1");
```
## Organization NPC List
```dataviewjs
await dv.view("z_Templates/Scripts/view2");
```

## Complete NPC List
> [!metadata|characters]- Characters
>```dataview
>TABLE WITHOUT ID file.link AS "Name", 
>	   condition AS "Condition",
>       join(aliases, ", ") AS Aliases, 
>       join(occupation, ", ") AS "Occupations", 
>       join(link(organization), ", ") AS "Organizations"
>FROM "01 Campaign"
>WHERE econtains(location, this.file.link) AND contains(tags, "Character") AND contains(tags, "#TODO")
>SORT file.name ASC
>```


>```dataview
>TABLE WITHOUT ID file.link AS "Name", tags, 
>       join(aliases, ", ") AS Aliases, 
>       join(occupation, ", ") AS "Occupations", 
>       join(link(organization), ", ") AS "Organizations"
>FROM "01 Campaign"
>WHERE econtains(location, this.file.link) AND contains(tags, "Character") AND !contains(tags, "#TODO")
>SORT file.name ASC
>```



## Current Events

> [!metadata|events]- Recent Events
>```dataview 
> table without id enddate as "Date", file.link as "Event"
> from "01 Campaign"
> where econtains(location, this.file.link) and contains(tags, "Event") and contains(eventtype, "Significant") and yearnumeric >= 212
> sort enddateshort asc
> ```

## History

> [!metadata|events]- Historical Events
> ```dataview
> TABLE startdate AS "Date", eventcategory AS "Category", eventtype AS "Type"
> FROM "01 Campaign"
> WHERE contains(tags, "#Event")
> AND contains(location, this.file.link)
> AND contains(eventtype , "Significant")
> AND yearnumeric <212
> SORT startdateshort DESC
> ```


## Notes

### Party Reputation
| Party | Standing | Notes |
|-------|----------|-------|
|[[Campaign Group 1]]| `VIEW[{party1reputation}]` | Note 1 |
|[[Campaign Group 2]]| `VIEW[{party2reputation}]` | Note 1 |
|[[Campaign Group 3]]| `VIEW[{party3reputation}]` | Note 1 |
|[[Campaign Group 4]]| `VIEW[{party4reputation}]` | Note 1 |
|[[Campaign Group 5]]| `VIEW[{party5reputation}]` | Note 1 
|[[Campaign Group 6]]| `VIEW[{party6reputation}]` | Note 1 |

## 🧾 GM Notes (Quest Hooks, Events, Plot Threads)