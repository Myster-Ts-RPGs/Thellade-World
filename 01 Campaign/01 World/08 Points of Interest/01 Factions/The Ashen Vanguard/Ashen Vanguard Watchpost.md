---
tags:
  - "#Location"
  - "#POI"
  - "#TODO"
art: 90 Assets/Images/POIs/AshenVanguardWatchpost.png
banner: on
organization:
  - "[[The Ashen Vanguard]]"
location:
  - "[[Mangagoy]]"
  - "[[The Ember Wharf]]"
poitype:
  - Watchtower
  - Guardhouse
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
>> **Dominion** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):dominion]` |
>> **Owners** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):owner]` |
>> **Assistant** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):assistant]` |
>> **Organization** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
>> **Location** | `INPUT[inlineListSuggester(optionQuery(#District AND !"z_Templates"), optionQuery(#Settlement AND !"z_Templates"), optionQuery(#Subregion AND !"z_Templates"), optionQuery(#Reach AND !"z_Templates"), useLinks(partial)):location]` |

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
> The Watchpost rises like a clenched fist at the far end of The Ember Wharf—a squat, stone bastion braced in blackened steel and etched with the red sigil of the Ashen Vanguard. Its torches burn with smokeless flame, casting long shadows across the dock’s edge as gulls wheel overhead.
> 
> A guard in dark plate armor stands at attention just outside the reinforced entry, her face hidden behind a dragon-winged helm. She raps twice on the door—arcane lines flash red—and a sealed portal splits open, revealing the dimly lit interior beyond.
> Within, the air is dry and warm, carrying the scent of old oil, parchment, and boiled salt. This is no fortress—it’s a choke point. And someone inside is watching.

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
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Location")
> SORT tags DESC, poitype ASC, file.name ASC

> [!metadata|characters]- Characters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(occupation, ", ") AS "Occupations", join(link(organization), ", ") AS "Organizations"
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Character") AND !contains(condition, "Dead")
> SORT tags DESC, file.name ASC

## Overview 
The Ashen Vanguard Watchpost in The Ember Wharf is a rapid-response deployment center, enforcement hub, and leyline-monitoring facility tasked with maintaining maritime order and suppressing cult activity tied to arcane smuggling. Situated at the edge of the harbor, the structure is warded against teleportation, divination, and explosive entry. While smaller than the main garrison at Highhold Rise, it maintains a fully autonomous command structure under **Commander [[Kraya Feldrum]]**, known for her iron discipline and strategic foresight.


## Current Events
- Raid Suppression: The Watchpost is leading ongoing investigations into the "Shadow of the Wharf" incidents—raiders appearing and vanishing through illegal teleportation circles.
- Cultic Interference: One captured smuggler carried a corrupted holy symbol tied to Orcus’ followers, now under arcane containment.
- Request for Reinforcement: Feldrum has requested additional geomancers to reinforce anti-teleportation barriers near the low docks.


## History
- Originally a customs barracks, the building was converted into a Vanguard post after the **Black Coil Uprising** (a failed dock rebellion led by leyline-cursed indentured laborers).
- The Watchpost played a key role in quelling the **Embermoon Surge Riots**, deploying nonlethal suppression glyphs that are still engraved into the inner wall.


## Notes
- The second floor contains a mirrored ward room where crystal-bound scrolls record all magical activity within 120 feet.
- The lower vault holds a small detention cell array designed to disrupt extraplanar entities held in custody.
- The Watchpost’s rooftop is equipped with two rotating arcane repeater turrets—kept powered by a bound fire elemental.

## Watchpost Staff
|Name/Title|Role|Notes|
|---|---|---|
|**Commander Kraya Feldrum**|Officer-in-Charge|Veteran dwarf, steely demeanor, known for tactical insight.|
|**Sergeant Ulen Varr**|Shift Sergeant|Human, ex-naval enforcer; favors blunt force.|
|**Watch-Mage Elira Sain**|Arcane Surveillance|Half-elf geomancer tasked with ward tuning.|
|**Specialist Bren Drath**|Scout Liaison|Gnome, rotates between The Wharf and city sewers.|
|**Quartermaster Dael Mon**|Equipment and Cell Keeper|Stoic half-orc; secretly takes notes on every prisoner.|
|**Standard Watch Enforcers** (x5)|Dock Security & Arrest Teams|Human and dwarf mix; equipped with subdual batons and ash-grey cloaks.|
|**Runeplate Guards** (x2)|Vault Defense & Warded Entry|Clad in glyph-inscribed armor; trained in counterspell formations.|
|**Wardscribes** (x2)|Ward Maintenance & Sensing|Apprentice-level casters; responsible for ward tuning and leyline flux reports.|
|**Messenger Scout** (x1)|Courier & Inter-district Liaison|Quick-footed courier; trained to evade pursuit and magical tracking.|