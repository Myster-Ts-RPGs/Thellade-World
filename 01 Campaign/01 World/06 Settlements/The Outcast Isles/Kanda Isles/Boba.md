---
tags:
  - "#Location"
  - "#Settlement"
  - "#TODO"
art: 90 Assets/Images/Settlements/Boba.png
location:
  - "[[Kanda Isles]]"
  - "[[The Outcast Isles]]"
settlementtype: Large City
population: 13,500
import:
  - Armor
  - Parchment
  - Maps
export:
  - Wine
  - Coral
  - Alabaster
organization:
  - "[[The Arcane Wardens]]"
  - "[[The Ashen Vanguard]]"
  - "[[The Blackwake Corsairs]]"
  - "[[The Council of Daggers]]"
  - "[[The Crimson Shroud]]"
  - "[[The Crystal Seekers Guild]]"
  - "[[The Cursed Blades]]"
  - "[[The Emberborn Exiles]]"
  - "[[The Emberheart Traders]]"
  - "[[The Eternal Concord]]"
  - "[[The Gilded Hammer Union]]"
  - "[[The Hollow Mask]]"
  - "[[The Phoenix Assembly]]"
  - "[[The Red Ash Mauraders]]"
  - "[[The Sea Vultures]]"
  - "[[The Silver Chain]]"
  - "[[The Sunfire Heralds]]"
  - "[[Boba Academy of Civil Affairs (Faction)]]"
pronounced: BOH-bah
updated: 2025-04-30
party1reputation: "0"
party2reputation: "0"
party3reputation: "0"
party4reputation: "0"
party5reputation: "0"
party6reputation: "0"
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
>> **Rulers** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):ruler]` |
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
> **Rulers** | `VIEW[{ruler}][link]` |
> **Leaders** | `VIEW[{leader}][link]` |
> **Dominion** | `VIEW[{dominion}][link]` |
> **Government Type** | `VIEW[{governmenttype}][text]` |
> **Military Presence** | `VIEW[{militarypresence}][text]` |
> **Threats** | `VIEW[{threats}][text]` |
> **Religions** | `VIEW[{religions}][link]` |
> **Population** | `VIEW[{population}][text]` |
> 
> <span style="display:block; text-align:center; font-size:0.9em;"><strong>Racial Makeup</strong></span>
> - <span style="font-size:0.8em;"><strong>Humans</strong> – 45% (Kandan Natives, Merchant Class)</span>
> - <span style="font-size:0.8em;"><strong>Elves</strong> – 20% (Moonshade Diaspora, Diplomatic Caste)</span>
> - <span style="font-size:0.8em;"><strong>Dwarves</strong> – 15% (Blackrock Lineage, Smiths)</span>
> - <span style="font-size:0.8em;"><strong>Halflings</strong> – 10% (Dockworkers, Trade Guilds)</span>
> - <span style="font-size:0.8em;"><strong>Tieflings</strong> – 5%</span>
> - <span style="font-size:0.8em;"><strong>Other</strong> – 5% (Gnomes, Kobolds, Rare Lineages)</span>
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


> [!quote]+ Theme
> *“Gold flows like water, but secrets flow deeper.”*

> [!recite]- Introduction
> Perched at the threshold of sea and sun, **Boba** is a city of gleaming ambition and gilded shadows. Known as the **Gateway to the Kanda Isles**, its towering sandstone walls guard a teeming metropolis where diplomacy, commerce, and clandestine dealings flourish side by side. Merchant ships from a dozen isles crowd the harbor, their sails heavy with exotic wares and veiled allegiances. The scent of salt and saffron lingers in the narrow alleyways of the **Brimstone Docks**, while scholars and spies alike trade truths in the echoing halls of **Sunfire Tower**.
> 
>Nobles in silk-trimmed regalia walk beneath enchanted lanterns, even as the undercurrents of factional strife pull beneath the surface. **The Sunfire Heralds**, **The Silver Chain**, and a dozen other groups vie for influence here, where gold speaks louder than law. Yet amidst the splendor and decay, the people of Boba remain resilient—crafty artisans, pious clerics, drifting pirates, and power-brokers who understand that in this city, survival is an art.
>
>Whether you're a trader seeking fortune, a fugitive seeking shadows, or a hero chasing echoes of the Rising, **Boba** offers all things—at a price.

## Overview
Boba is a large port city on the [[Kanda Isles]] within [[the Outcast Isles]], boasting a population of approximately **13,500**. Known as the "**Gateway to the Kanda Isles**," it serves as a critical nexus for **diplomatic envoys**, **mercenary guilds**, **smuggling networks**, and **noble factions** vying for influence. From the gleaming spires of [[Sunfire Heights]] to the treacherous gutters of [[Lowmire Gutter]], Boba embodies the convergence of power and peril.

Founded before the Rising, the city rose to prominence as a haven for those seeking profit amid chaos—merchants, pirates, scholars, and warlords alike. **Merchant ships** from across the [[the Outcast Isles]] dock in [[Brimstone Docks]], bearing exotic wares, secret pacts, and silent cargoes. Within the heart of the city, arcane scrolls change hands as quickly as silver daggers, and whispers carry more weight than royal decrees.

Dominant factions include the **[[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Sunfire Heralds|Sunfire Heralds]]**, **[[The Silver Chain]]**, and the clandestine **[[Obsidian Veil]]**, whose agents operate behind the curtain of noble salons and market tents alike. **Underground fighting rings**, **arcane experiments**, and **forbidden duels** are not uncommon beneath the city's surface.

> “In Boba, fortunes rise with the tide—and drown just as swiftly.”

- **Function in Region**: Diplomatic seat, arcane research hub, smuggling corridor, naval staging post
- **Notable Features**: Sits at the convergence of leyline faults, features sunstone-infused sandstone architecture, multi-bridge urban tiers
- **Notable Laws or Customs**:
    - Duel permits are legally issued by the Hall of Unity, allowing sanctioned magical or martial disputes.
    - Registered trade factions must tithe 7% of all profits to the Boba Port Authority.
    - A citywide silence is observed during the Emberfall Festival in remembrance of the Rising’s victims.

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
## Location NPC List
```dataviewjs
await dv.view("z_Templates/Scripts/view1");
```
## Organization NPC List
```dataviewjs
await dv.view("z_Templates/Scripts/view2");
```

## Complete NPC List
> [!metadata|characters]- Characters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(occupation, ", ") AS "Occupations", join(link(organization), ", ") AS "Organizations"
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Character") AND !contains(condition, "Dead")
> SORT tags DESC, file.name ASC


## Current Events
[[Boba]] teeters on the edge of controlled chaos. In the gilded halls of merchant estates and the soot-choked alleys of [[Lowmire Gutter]] alike, tensions rise as old alliances fracture and hidden powers stir. Recent arcane anomalies in [[Sunfire Heights]] have thrown scholars and sentinels into disarray—leyline flares ripple unpredictably, warping spells and sparking panic among the city’s magical elite. The merchant dynasties, always one contract from open war, trade whispered threats and shadowed sabotage, igniting fears of a coming trade conflict.

Even as banners are raised for the [[Sunfire Convocation Festival]], unease simmers beneath the celebration. Rumors of cult activity draw wary glances toward the undercity, where missing persons and cryptic symbols suggest something far older and darker now walks the streets. Each district holds its breath, waiting to see whether [[Boba]]’s fractured peace will hold—or splinter into fire and ash.

- **Faction tension** is escalating across Boba’s key districts, particularly between merchant guilds, arcane researchers, and clandestine groups. Eyes are on the [[Gilded Strand]] and [[Ironveil Commons]] where allegiances are shifting quickly.
- **Market or leyline instability** has become a major concern after abnormal magical surges were detected across Sunfire Heights. Scholars from the [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Crystal Seekers Guild|Crystal Seekers Guild]] and [[01 Campaign/02 Factions/03 Organization/03a Public Factions/The Arcane Wardens|Arcane Wardens]] are investigating leyline fluctuations that may be linked to [[01 Campaign/04 Lore/02 Calendar/Eras/The Rising (R)|Pre-Rising]] infrastructure.
- **Rumors or crime** circulate of deep smuggling routes beneath Brimstone Docks. Unrest grows in Lowmire Gutter following coordinated disappearances of informants and local enforcers.
- **Local Holidays and Festivals** include the **Sunfire Convocation Festival**, a citywide celebration of the academic and arcane elite, held on 15 Sunreach. Attendance is expected to be high, despite growing unrest.

> [!metadata|events]- Recent Events
>```dataview 
> table without id enddate as "Date", file.link as "Event"
> from "01 Campaign"
> where econtains(location, this.file.link) and contains(tags, "Event") and contains(eventtype, "Significant")
> sort enddateshort desc
> ```


## History
- **Founding**
- **Rising-era Events**
- **Post-Rising Growth**
- **Recent Shifts (last decade)**

> [!metadata|events]- Historical Events
>```dataview 
> table without id enddate as "Date", file.link as "Event"
> from "01 Campaign"
> where econtains(location, this.file.link) and contains(tags, "Event") and contains(eventtype, "Historical")
> sort enddateshort asc
> ```


## Notes

### Party Reputation
| Party | Standing | Notes |
|-------|----------|-------|
|[[Campaign Group 1]]| `VIEW[{party1reputation}]` | Note 1 |
|[[Campaign Group 2]]| `VIEW[{party2reputation}]` | Note 1 |
|[[Campaign Group 3]]| `VIEW[{party3reputation}]` | Note 1 |
|[[Campaign Group 4]]| `VIEW[{party4reputation}]` | Note 1 |
|[[Campaign Group 5]]| `VIEW[{party5reputation}]` | Note 1 |
|[[Campaign Group 6]]| `VIEW[{party6reputation}]` | Note 1 |
### Campaign Notes
>[!metadata|notes]- Linked Campaign Notes
>```dataview 
>table WITHOUT ID file.link as "Session Note"
>from "01 Campaign/05 Parties/07 Session Notes"
>where contains(file.outlinks, this.file.link)
>sort file.name asc
>```
## GM Notes (Collapsible)
For secrets, planned events, etc.

