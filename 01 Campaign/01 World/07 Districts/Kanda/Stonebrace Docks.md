---
tags:
  - "#Location"
  - "#Location/District"
  - "#Status/Blank"
art: 90 Assets/Images/Districts/StonebraceDocks.png
location:
  - "[[Kanda]]"
organization:
  - "[[The Voidscourge Hunters]]"
  - "[[The Wardens of the Deep Dark]]"
  - "[[The Blackwake Corsairs]]"
districttype:
  - Dockyard
  - Harbor
  - Industrial
  - Magical District
pronounced: STOHN-brace DOKS
parentsettlement:
  - "[[Kanda]]"
parentsubregion:
  - "[[Kanda Isles]]"
parentregion:
  - "[[The Outcast Isles]]"
parentcontinent:
  - "[[Montakaldran]]"
parentplanet:
  - "[[Thellade]]"
parentstarsystem:
  - "[[Solurean System]]"
parentgalaxy:
  - "[[Exyxian Veil]]"
parentplane:
  - "[[Material Plane]]"
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
>> **Type** | `INPUT[DistrictType][inlineListSuggester:districttype]` |
>> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
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
>> **Parent Continent** | `INPUT[inlineListSuggester(optionQuery(#Location/Continent AND !"z_Templates"), useLinks(partial)):parentcontinent]` |
>> **Parent Region** | `INPUT[inlineListSuggester(optionQuery(#Location/Region AND !"z_Templates"), useLinks(partial)):parentregion]` |
>> **Parent Subregion** | `INPUT[inlineListSuggester(optionQuery(#Location/Subregion AND !"z_Templates"), useLinks(partial)):parentsubregion]` |
>> **Parent Reach** | `INPUT[inlineListSuggester(optionQuery(#Location/Reach AND !"z_Templates"), useLinks(partial)):parentreach]` |
>> **Parent Settlement** | `INPUT[inlineListSuggester(optionQuery(#Location/Settlement AND !"z_Templates"), useLinks(partial)):parentsettlement]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ###### Info
>  |
> ---|---|
> **Aliases** | `VIEW[{aliases}][text]` |
> **Type** | `VIEW[{districttype}][text]` |
> **Settlement** | `VIEW[{parentsettlement}][link]` |
> **Reach** | `VIEW[{parentreach}][link]` |
> **Region** | `VIEW[{parentregion}][link]` |
> **Continent** | `VIEW[{parentcontinent}][link]` |
> **Planet** | `VIEW[{parentplanet}][link]` |
> **Star System** | `VIEW[{parentstarsystem}][link]` |
> **Galaxy** | `VIEW[{parentgalaxy}][link]` |
> **Plane** | `VIEW[{parentplane}][link]` |

# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

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

> [!metadata|location]- Locations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(poitype, ", ") AS Type, join(link(organization), ", ") AS "Organization(s)", join(link(dominion), ", ") AS "Dominion"
> FROM "01 Campaign"
> WHERE contains(parentdistrict, this.file.link) AND contains(tags, "Location/POI")
> SORT tags DESC, poitype ASC, file.name ASC
> ```

> [!metadata|organizations]- Organizations
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(organizationtype, ", ") AS Type
> FROM "01 Campaign"
> WHERE contains(parentdistrict, this.file.link) AND contains(tags, "Organization")
> SORT organizationtype ASC, file.name ASC
> ```

> [!metadata|entities]- Entities
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(tags, ", ") AS Tags, join(link(parentlocation), ", ") AS "Location"
> FROM "01 Campaign"
> WHERE contains(parentdistrict, this.file.link) AND contains(tags, "Entity")
> SORT file.name ASC
> ```

## Overview 

Military and merchant harbor district; movement of goods, warships, and relic transports

---

## Current Events

- A new blockade inspection order from inland has slowed shipment processing, causing tension between Kanda officials and Corsair-linked contractors.  
- The arrival of a half-dissolved barge with no crew and void-stained hulls triggered an immediate containment lockdown on Docklane Seven.  
- Rivalry between [[The Voidscourge Hunters]] and [[The Blackwake Corsairs]] has escalated over relic seizure jurisdiction. At least two altercations have occurred in the last eight days.  
- A new smuggling route beneath [[The Chain-Locker Market]] is rumored to be active, but no operatives have confirmed its origin point.

---

## History

- Established in 117 PR as part of Kanda’s post-isolation maritime expansion strategy.  
- Officially converted to a dual-use dockyard in 143 PR to allow for magical ordinance loading and Voidwatch outfitting.  
- Saw major upgrades during the **Leviathan Breach Crisis**, including vault crane enhancements and glyph grid reinforcements.  
- The original dockstone, known as the **First Brace**, still stands embedded near the Saltspire Fountain, marked with the names of the first post-Rising shipping crews.

---

## Notes

- Stonebrace is the only district in Kanda where all three of the following factions maintain simultaneous operational presence: [[The Voidscourge Hunters]], [[The Wardens of the Deep Dark]], and [[The Blackwake Corsairs]].  
- Several upper-tier dock cranes have embedded ley siphons, though only one is known to still function without wild arc discharge.  
- Locals avoid Docklane Four after sunset—not because of ghosts, but because something sings from beneath the grating.  
- There are *no* fishmongers here, despite being a dock district—a ban instituted after the Deep Dark Reclamation of 162 PR.


