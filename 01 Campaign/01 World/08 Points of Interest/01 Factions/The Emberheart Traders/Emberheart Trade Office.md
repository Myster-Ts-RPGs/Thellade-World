---
tags:
  - "#Location"
  - "#Location/POI"
  - "#Status/Draft"
art: 90 Assets/Images/POIs/EmberheartTradeOffice.png
banner: on
location:
  - "[[The Ember Wharf]]"
  - "[[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy|Mangagoy]]"
organization:
  - "[[The Emberheart Traders]]"
owner:
  - "[[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Marrek Tindall]]"
poitype:
  - Office
  - Headquarters
parentplane:
  - "[[Material Plane]]"
parentgalaxy:
  - "[[Exyxian Veil]]"
parentstarsystem:
  - "[[Solurean System]]"
parentplanet:
  - "[[Thellade]]"
parentcontinent:
  - "[[Montakaldran]]"
parentregion:
  - "[[The Outcast Isles]]"
parentdistrict:
  - "[[The Ember Wharf]]"
parentsettlement:
  - "[[Mangagoy]]"
parentsubregion:
  - "[[Mangagoy Isles]]"
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
>> **Parent Plane** | `INPUT[inlineListSuggester(optionQuery(#Location/Plane AND !"z_Templates"), useLinks(partial)):parentplane]` |
>> **Parent Galaxy** | `INPUT[inlineListSuggester(optionQuery(#Location/Galaxy AND !"z_Templates"), useLinks(partial)):parentgalaxy]` |
>> **Parent StarSystem** | `INPUT[inlineListSuggester(optionQuery(#Location/StarSystem AND !"z_Templates"), useLinks(partial)):parentstarsystem]` |
>> **Parent Planet** | `INPUT[inlineListSuggester(optionQuery(#Location/Planet AND !"z_Templates"), useLinks(partial)):parentplanet]` |
>> **Parent Continent** | `INPUT[inlineListSuggester(optionQuery(#Location/Continent AND !"z_Templates"), useLinks(partial)):parentcontinent]` |
>> **Parent Region** | `INPUT[inlineListSuggester(optionQuery(#Location/Region AND !"z_Templates"), useLinks(partial)):parentregion]` |
>> **Parent Subregion** | `INPUT[inlineListSuggester(optionQuery(#Location/Subregion AND !"z_Templates"), useLinks(partial)):parentsubregion]` |
>> **Parent Reach** | `INPUT[inlineListSuggester(optionQuery(#Location/Reach AND !"z_Templates"), useLinks(partial)):parentreach]` |
>> **Parent Settlement** | `INPUT[inlineListSuggester(optionQuery(#Location/Settlement AND !"z_Templates"), useLinks(partial)):parentsettlement]` |
>> **Parent District** | `INPUT[inlineListSuggester(optionQuery(#Location/District AND !"z_Templates"), useLinks(partial)):parentdistrict]` |
>> **Parent POI** | `INPUT[inlineListSuggester(optionQuery(#Location/POI AND !"z_Templates"), useLinks(partial)):parentpoi]` |

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
> **Location (Parent POI)** | `VIEW[{parentpoi}][link]` |
> **District** | `VIEW[{parentdistrict}][link]` |
> **Settlement** | `VIEW[{parentsettlement}][link]` |
> **Reach** | `VIEW[{parentreach}][link]` |
> **Region** | `VIEW[{parentregion}][link]` |
> **Continent** | `VIEW[{parentcontinent}][link]` |
> **Planet** | `VIEW[{parentplanet}][link]` |
> **Star System** | `VIEW[{parentstarsystem}][link]` |
> **Galaxy** | `VIEW[{parentgalaxy}][link]` |
> **Plane** | `VIEW[{parentplane}][link]` |
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
> The thick oak door resists for just a moment—then yields with a quiet hiss as the enchantment embedded in its hinges releases. The air inside is warm and dry, spiced faintly with ink-oil, hot parchment, and arcane flux.
> 
> You step onto a floor of polished stone veined with lapis, each tile etched with subtle ward-lines. Shelves of meticulously organized ledgers rise along the walls, guarded by silver glyphs that pulse dimly in your peripheral vision.
> Behind a curved counter of driftwood and copper trim, a glassy, rune-inscribed construct—shaped like a spider but moving with unnatural precision—skitters across a scroll, recording the day's trades with blinding speed.
> 
> The murmur of contract-speak and quiet quill-scratches fills the space like ritual. Two clerks in navy-and-bronze livery sit behind desks raised just slightly too high, ensuring every visitor looks up to speak.
> 
> And then, from the upper stairwell, footsteps. Steady. Measured. The scent of cedar and citrus precedes a man dressed in deep merchant blue, his bracer aglow with flowing script.
> 
> Marrek Tindall descends like he owns the tide.
> “Welcome,” he says, voice even but heavy with expectation. “If you’ve come to talk business—know that the tide waits for no one.”

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

# Dataviews for POIs

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)", join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentpoi, this.file.link) AND contains(tags, "Location/POI")
> SORT tags DESC, poitype ASC, file.name ASC
> ```

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(parentpoi, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC
> ```

> [!metadata|entities]- Entities
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(tags, ", ") AS Tags, join(link(parentlocation), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(parentpoi, this.file.link) AND contains(tags, "Entity")
> SORT file.name ASC
> ```

## Overview 
-Description: A slate-roofed building near the central customs pier, its windows warded against prying eyes and sea salt. Inside, copper-tube message relays and driftmetal vaults store shipment manifests, contract scrolls, and arcane-stamped tariffs.
-Function: This is [[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Mangagoy/Mangagoy City/Marrek Tindall]]'s operational base, where faction agents coordinate trade flow, bribe portmasters, and maintain dominance over merchant lanes.

## Current Events
Shipment Interference: Several crates bound for the College of Lunar Rites were intercepted and vanished mid-route—Emberheart agents suspect sabotage from Kelthorne-aligned smugglers.

Bribery Allegations: The Mangagoy Chronicle is preparing to publish an exposé linking the Trade Office to inflated tariffs and portmaster kickbacks.

## History
Post-Rising Expansion: Built during the Second Restoration surge, the office was originally a neutral trade house before being absorbed by the Emberheart Traders.

Moonfire Smuggling Scandal: Twenty years ago, the Office was nearly shut down after a crackdown on illegally harvested moonfire resin being funneled through sealed casks labeled “Coral Ink.”

## Notes
Rumors suggest a secret ledger vault beneath the structure accessible only via command-word seal.

Tindall is known to host private negotiation dinners in his rooftop suite with representatives from Kanda and Montakama.

The office uses bound driftglass familiars as mobile ledger scribes—occasionally seen skittering between floors like glassy, transparent spiders.


- Marrek Tindall’s Residence: Yes, he resides here.
- Reason: Tindall is a practical merchant prince who “walks the piers,” values control over logistics, and benefits from being embedded directly in the flow of goods.
- Lodging: A discreet private suite occupies the top floor of the trade office, soundproofed and illusion-warded.

## Other Descriptions
### Negotiation Room
Set beneath a low-angled slate roof and walled with obsidian-glass panels, this chamber exudes opulent restraint. A long driftwood table dominates the center, its surface scorched with faint rune-burns where heated contracts have sealed. Above it, a hanging lantern of glowglass casts warm, unwavering light with no discernible source. Four high-backed chairs flank either side—two tailored for noble posture, two for disarming comfort. In one corner, a wine alcove chilled by a whispering ward hums softly, its rack stocked with moonpetal vintage and storm-brine cordial. The room smells faintly of citrus and ink, designed to unsettle and seduce in equal measure.

### Living Quarters
Tucked behind an illusory wall on the office’s upper floor lies Marrek Tindall’s private suite. It is a study in minimalism—stone floors softened by a dark Auruvian rug, a writing desk inscribed with teleport-silent glyphs, and a single, low bed with bronze-threaded sheets. Every object is deliberate: a half-read tome of legal codes on planar tariffs, a dagger hidden in the headboard, and a silver frame bearing an old family crest—tarnished at the corners, polished daily. The walls are lined with soundproofing runes, and the ceiling’s crossbeam hides a pressure-warded compartment used only when deals turn dangerous. This is not a home—it’s a vault with a bed in it.