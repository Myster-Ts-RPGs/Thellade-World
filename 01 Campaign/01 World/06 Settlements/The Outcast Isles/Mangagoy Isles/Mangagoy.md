---
tags:
  - "#Location"
  - "#Settlement"
  - "#Canon"
art: 90 Assets/Images/Settlements/Mangagoy.png
location:
  - "[[Mangagoy Isles]]"
  - "[[The Outcast Isles]]"
settlementtype: Large City
population: 11,222
districtmatch: Shop
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
  - "[[The Iron Syndicate]]"
  - "[[The Midnight Covenant]]"
  - "[[The Mistwalkers]]"
  - "[[The Silver Chain]]"
  - "[[The Gilded Hammer Union]]"
  - "[[The Sunfire Heralds]]"
  - "[[The Infernal Covenant]]"
leader:
  - "[[Garron Draven]]"
dominion:
  - "[[The Kingdom of Kanda]]"
levelgeneral: "6"
levelmagic: "6"
leveltech: "5"
founded: 17 Stardrift -0285  PR
foundedshort: -0285.08.17 PR
defence: Strong
militarypresence: Strong. Dual-layered enforcement from both the Ashen Vanguard and the city’s own watch, including arcane support units and rapid response infrastructure at the Ember Wharf.
threats: |-
  Black Sepulcher
  Smuggling Rings
  Leyline Instability
  Dream-echo Anomalies
  Political Pressure
religions:
  - Aurion
  - Lunara
  - The Mourning Stars
  - The Pactbound Flame
  - Asmodeus
  - Xar’Zhul
governmenttype:
  - Stratocracy
updated: 2025-05-09
tradepartners:
  - "[[Kanda]]"
  - "[[Boba]]"
  - "[[Seaside Cape]]"
  - "[[Mwingu]]"
pronounced: MAN-guh-goy
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
>> **Pronounced** |  `INPUT[textArea:pronounced]`|
>> **Updated** | `INPUT[text:updated]` |
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
> - <span style="font-size:0.8em;"><strong>Humans</strong> – 76.6% [~8600] (Dominant merchant class, watch officers, scholars, and bureaucrats across all districts)</span>
> - <span style="font-size:0.8em;"><strong>Elves</strong> – 1.2% [~135] (Crystal merchants, mage apprentices, and religious acolytes in the Glowquarter)</span>
> - <span style="font-size:0.8em;"><strong>Dwarves</strong> – 1.0% [~115] (Engineers, alchemists, and hardened enforcers in Ashgate Market and Gullsway)</span>
> - <span style="font-size:0.8em;"><strong>Halflings</strong> – 1.8% [~205] (Stewards, bookkeepers, and tavern staff employed by innkeeps and trade houses)</span>
> - <span style="font-size:0.8em;"><strong>Gnomes</strong> – 0.3% [~35] (Inventors, prototype testers, and rogue scribes operating in Binders’ Lane)</span>
> - <span style="font-size:0.8em;"><strong>Kobolds</strong> – 0.0% [~0] (No known permanent residents; some affiliated with Arcane Wardens remain hidden)</span>
> - <span style="font-size:0.8em;"><strong>Orcs</strong> – 14.2% [~1595] (Laborers, guards-for-hire, and Beastmaster clans tied to The Ember Rats and outskirt warrens)</span>
> - <span style="font-size:0.8em;"><strong>Tieflings</strong> – 1.3% [~145] (Crystal Seekers, potion brewers, and ritualists affiliated with The Infernal Covenant and rogue guilds)</span>
> - <span style="font-size:0.8em;"><strong>Other</strong> – 3.6% [~410] (Changeling seers, planar half-bloods, deepfolk, and shadow-touched lineages from the undercity)</span>
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

## `=this.file.name` VS `=this.file.link`
> [!recite]- Introduction
> The sea mists part as your vessel crests the final swell, revealing Mangagoy’s jagged skyline—stone towers tangled in iron glyphwork, rising like broken teeth from a bay of green firelight. The harbor churns with enchanted cargo lifts and warded barges, cranes shrieking over rune-carved docks. Above it all, the great Glowquarter glimmers with floating sigils and flickering arcane lanterns that never go out. Thunder cracks inland—not from a storm, but from a spell-forge deep in the cliffs. As your keel grinds toward the berth, a pair of masked guards branded with obsidian seals eyes your arrival. Behind them, Mangagoy waits, watching you back.

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
> _“In Mangagoy, even the shadows have affiliations—and the lanterns never flicker without reason.”_  
— Dean Veyra Windspire, Mangagoy Administrative Center

Mangagoy is the second-largest city in the Outcast Isles and a crucible of arcane innovation, smuggled potential, and historical reverence. Founded long before the Rising, Mangagoy was a frontier settlement grown from coastal cliffs, later fortified by Kanda’s early warding elite to safeguard against infernal incursions and trade collapses. It now functions as a divided city—an uneasy blend of scholarly ambition, magical danger, and political tension.

Built in concentric districts around its deep harbor and arcane leyline threads, Mangagoy is where fishmongers haggle beside rune-forged armor, and dream-visions echo across the cobbled streets. Many of the buildings still bear Pre-Rising carvings, and magic both sustains and threatens daily life.

### Location NPC List
```dataviewjs
await dv.view("z_Templates/Scripts/view1");
```

### Organization NPC List
```dataviewjs
await dv.view("z_Templates/Scripts/view2");
```

## Complete NPC List

> [!metadata|characters]- Characters
> ```dataview
> TABLE without id file.link AS "Name",
>   join(aliases, ", ") AS Aliases,
>   join(occupation, ", ") AS "Occupations",
>   join(link(organization), ", ") AS "Organizations"
> FROM "01 Campaign"
> WHERE contains(string(location), this.file.name) AND contains(tags, "#Character")
> SORT file.name ASC
> ```

> [!metadata|location]- Districts
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type,  join(link(organization), ", ") AS "Organization(s)"
> FROM "01 Campaign"
> WHERE contains(string(location), this.file.name)  AND contains(tags, "District")
> SORT tags DESC, poitype ASC, file.name ASC


> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(location[0]), ", ") AS "Location", join(link(organization), ", ") AS "Organization(s)"
> FROM "01 Campaign"
> WHERE contains(string(location), this.file.name)  AND contains(tags, "POI")
> SORT tags DESC, poitype ASC, file.name ASC

## Current Events
- **Leyline Echo Contamination:** Dream-echoes manifest after the Embermoon Surge, spreading sleep-related madness. The Order of Silent Echoes is implicated.
- **Artifact Sabotage Surge:** The Gilded Daggers continue a spree of destructive prototype thefts, targeting both the Crystal Seekers Guild and the Emberborn League.
- **Smuggler Consolidation:** The Bleeding Tide appears to be absorbing smaller cells, strengthening its foothold in the Ember Wharf and Ashgate Market.
- **Political Standoff:** Dean Windspire and Mediator Valane maintain a delicate balance of institutional power, strained by the shifting alliances of noble houses.
- **Cultic Interference:** Multiple parties investigate signs of a weakening seal beneath the Sanctum of the Dawnsplit Crown, with known activity from the Black Sepulcher.

> [!metadata|events]- Recent Events
>```dataview 
> table without id 
>   startdate AS "Start Date",
>   enddate as "End Date", 
>   file.link as "Event"
> from "01 Campaign"
> where econtains(location, this.file.link) and contains(tags, "Event") and yearnumeric >= 212
> sort enddateshort asc, startdateshort asc
> ```

## History
Originally a coastal trading post, Mangagoy flourished through Pre-Rising leyline engineering and relic recovery. Its proximity to natural crystal deposits and alchemical springs turned it into an arcane boomtown. After the Rising and Kanda’s isolation, Mangagoy preserved its magical identity through local ingenuity and a uniquely integrated system of military and civic governance.

During the early years of the barrier's formation, Mangagoy became the refuge of surviving mages, scholars, and outcasts—especially those unable to return to Montakuma or the Sunscar Wastes. The city’s architecture reflects this duality—sun-bleached towers flanked by storm-warped docks and reforged shrine ruins.

### **Founding**

- Mangagoy was founded in **-285 PR** as a volcanic port colony by elven cartographers, dwarven miners, and human scholars.
- Its growth was driven by **leyline convergence**, rich **crystal seams**, and **alchemical springs**, making it a hub for arcane dredging and Pre-Rising engineering.
- The city’s name comes from an old Verdan word meaning “gleaming waters,” referencing the phosphorescent tide visible at night.
- Mangagoy’s layered governance began early, integrating civic recordkeeping, arcane zoning, and contracted mercantile law.

### **Rising-era Events**

- As daemonic incursions escalated, the Mangagoy Crystal Consortium struck the **Gleamsunder Pact**, trading crystal access for protection from planar collapse.
- This pact preserved much of the city’s infrastructure but seeded **unseen corruption** beneath the Shardspire.
- During the Rising, surface access to the sealed chamber was lost—some believe it still pulses with extraplanar energy.
- Mangagoy became a sanctuary for displaced mages and scholars unable to return to Montakuma or the Sunscar Wastes, shifting its population and purpose.

### **Post-Rising Growth**

- In **8 R**, the **Emberflame Restoration Charter** unified Mangagoy's leadership after a decade of decline and chaos.
- Led by [[Archivist Senna Virellin]] (elf) and [[Marshal Davor Halbrecht]] (human), the charter restructured the city into a **resilient arcano-civic hybrid**, formalizing institutions like the [[Mangagoy Administrative Center]] and the [[Healing Sanctuary]].
- Emphasis was placed on **healing**, **education**, and **leyline containment**, allowing the city to stabilize while other regions still faltered.
- The shift from guild-dominated governance to integrated civic councils became a hallmark of Mangagoy’s unique identity.

### **Recent Shifts (last decade)**

- In **204 PR**, a **leyline rupture** caused the collapse of a major crystal vein beneath the [[Glowquarter]], leaving behind **abyss-tainted residue**.
- This incident increased tensions between the [[Crystal Seekers Guild]] and the [[Eternal Concord]] regarding containment and research ethics.
- Reports of **missing miners**, **unstable relics**, and **arcane drift sickness** have resurfaced, particularly near older sealed tunnels.
- Factions such as the [[Bleeding Tide]] and sympathizers within corrupted trade halls are believed to be **sabotaging ward efforts**, possibly for cult purposes.

> [!metadata|events]- Historical Events
> ```dataview
> TABLE startdate AS "Date", 
>       eventcategory AS "Category", 
>       eventtype AS "Type"
> FROM "01 Campaign"
> WHERE contains(tags, "#Event")
> AND contains(location, this.file.link)
> AND contains(eventtype , "Significant")
> AND yearnumeric >= 0 AND yearnumeric <212
> SORT startdateshort DESC
> ```
> ```dataview
> TABLE startdate AS "Date", 
>       eventcategory AS "Category", 
>       eventtype AS "Type"
> FROM "01 Campaign"
> WHERE contains(tags, "#Event")
> AND contains(location, this.file.link)
> AND contains(eventtype , "Significant")
> AND yearnumeric < 0
> SORT startdateshort ASC
> ```



## Notes
- The city’s emblem is a twin spiral rising from the sea, representing balance between roots and sky.
- The Ember Wharf has the most volatile leyline activity and is closely monitored.
- Mangagoy’s “[[Festival of the Lantern Tide]]” marks the onset of Stardrift and involves floating glass lanterns inscribed with hopes or regrets.
- Binders’ Lane, once purely residential, is now a growing artisan enclave linked to many cross-isle contacts.
- Whispered rumors persist of a pre-Rising vault beneath the administrative center—an origin point of arcane seals tied to the Binding War.
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
- The Echoing Dreams arc can lead directly to a seal failure event on **09 Dawnmarch 212 PR**, giving Group 3 a limited timeframe to intervene.
- Mangagoy’s current power balance is unstable: _The Dawnbringers_, _Order of Silent Echoes_, _The Gilded Daggers_, and _The Crystal Seekers_ all maintain power centers in opposing districts.
- The Bleeding Tide has nested three levels deep, including noble proxies and potential Asmodeus-cult entanglements.
- Use "dream riddle" sequences and passive madness effects during nights following **04–09 Dawnmarch** to hint at underlying leyline corruption.
- Rivalries between the Administrative Center and Concord Library can be exploited via NPCs like Veyra Windspire and Alaric Valane.