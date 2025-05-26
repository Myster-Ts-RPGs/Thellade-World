---
tags:
  - "#Location"
  - "#Location/POI"
  - "#Status/Blank"
art: 90 Assets/Images/Placeholders/PlaceholderPointOfInterest.png
banner: on
organization:
  - "[[The Blackwake Corsairs]]"
location:
  - "[[Stonebrace Docks]]"
  - "[[Kanda]]"
poitype:
  - Inn
  - Tavern
owner:
  - "[[Zarek Tellos]]"
taverntype:
  - Dive Bar
lodgingtype:
  - Rough Cot
pronounced: MOR-ing FLAG-un
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
>> **Shop Type** | `INPUT[TavernType][inlineListSuggester:taverntype]` |
>> **Shop Type** | `INPUT[LodgingType][inlineListSuggester:lodgingtype]` |
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
> **Shop Type** | `VIEW[{taverntype}][text]` |
> **Lodging Type**| `VIEW[{lodgingtype}][text]` |
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


Tucked beneath a rusting gantry at the edge of [[Stonebrace Docks]], **The Mooring Flagon** is part tavern, part safehouse, and all smuggler grit. Officially, it serves as a waystop for sea-worn sailors and late-shift dockhands. Unofficially, it’s a Blackwake Corsairs front: a place where encrypted contracts change hands, contacts are vetted, and the unspoken business of the docks thrives. No signage marks the door. The flagon hanging over the entrance is green-glass, salt-fogged, and unlit.

## Clientele

The Flagon draws a rotating crowd of Corsair-aligned sailors, informants, and low-tier fixers running quiet ops through Kanda’s lower docks. You’ll also find a few hardened locals who know better than to ask questions. No one stays long, no one comes in groups, and everyone watches the door.

## Goods & Services

### Food

| Name                 | Description                                                   | Cost      |
|----------------------|---------------------------------------------------------------|-----------|
| Salted Bonefish      | Pan-seared reef fish served with kelp ash and hardtack        | 1 sp      |
| Barrel-Baked Crab    | Spiced and smoked in a rust-drum oven behind the bar          | 3 sp      |
| Dockline Stew        | A briny blend of whatever came in on the last tide            | 1 cp      |
| Blackbread & Butter  | Dense bread baked with squid ink, served with salted butter   | 2 cp      |

### Drink

| Name                 | Description                                                       | Cost      |
|----------------------|-------------------------------------------------------------------|-----------|
| Rotgrip Ale          | Local favorite; gritty, strong, and leaves a metallic aftertaste  | 1 cp      |
| Dockhouse Keg        | Small batch, moss-fermented ale from barrels floated in sea ice   | 2 sp      |
| Kanda Kelp Wine      | Bitter green, illegal in most ports, bottled without labels       | 1 gp      |
| Wakewater Whiskey    | Harsh stuff—cured in driftwood casks, burns all the way down      | 5 sp      |

### Services

| Name                       | Description                                                                 | Cost           |
|----------------------------|-----------------------------------------------------------------------------|----------------|
| Lodging (Rough Cot)        | A cot in a boarded-up storage room above the tavern                        | 3 cp (per day) |
| Fixer (Basic Informant)    | Hushed guidance on Corsair activity or safe passage info                   | 5 sp (per hour)|
| Smuggling (Level 1)        | Discreet item transport via Corsair contracts (low value, local)           | 10 gp (per day)|
| Safe House (Level 1)       | One day/night of concealed lodging & identity obfuscation services         | 10 gp (per day)|

## Keyed Locations

- **Main Room:** Narrow space with mismatched tables, low foglight, and a bar carved from a ruined figurehead  
- **Upper Loft:** Storage-converted bunks rented to those with no better options  
- **Hatch Below the Bar:** Leads to a drydock vault—Corsair operatives only  
- **Back Alcove Booth:** Protected by a sigil glyph, used for encoded conversations and contract writing

## Current Events

- Zarek Tellos is recovering from a failed fog extraction—word is he left someone behind  
- The Phantom Admiral’s symbol was burned into the underside of a barstool this week; regulars pretend not to notice  
- The last barrel of Dockhouse Keg was tampered with—likely cursed. No one's dared drink it yet

## History

- Built on top of the ruins of an old customs booth burned out during the Rising  
- Became a known Corsair front around 194 PR after the harbormaster’s ledger went missing  
- Zarek took over direct management under orders from the Phantom Admiral; rumor says he once killed a customer for recognizing him

## Notes

- The Flagon has no guestbook, no supply ledger, and no tax record  
- Anyone asking about rooms for more than one night is quietly marked  
- There are nine exits. Only two are visible

