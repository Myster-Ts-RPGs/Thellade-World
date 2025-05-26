---
tags:
  - "#Location"
  - "#Location/POI"
  - "#Status/Blank"
art: 90 Assets/Images/Placeholders/PlaceholderPointOfInterest.png
banner: on
poitype:
  - Shop
shoptype:
  - Potion Vendor
  - Apothecary
  - Pet Shop
  - Black Market
  - General Goods
  - Pawn Shop
  - Antiques and Relics
  - Herbalist
  - Magic Goods
location:
  - "[[Lowmire Gutter]]"
  - "[[OneNote/Crossroads2025/Project 1 Archive/BobaNotes]]"
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
>> **Shop Type** | `INPUT[ShopType][inlineListSuggester:shoptype]` |
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
> **Shop Type** | `VIEW[{shoptype}][text]` |
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

### **Brick-and-Mortar Shops (Semi-permanent Structures)**

These are the closest thing to "established" vendors in the Dredgemarket—ramshackle buildings reinforced with driftwood, rusted nails, and mildew-stained stone.

|**Shop Name**|**Shop Type(s)**|**Description**|
|---|---|---|
|**Sump & Sludge**|Potion Vendor, Apothecary|Pungent tinctures, bloodletting kits, and suspicious salves lined in greasy glass bottles. Claims to have “rat-bitten cure-alls.”|
|**The Leech Basket**|Pet Shop, Apothecary|Barrels of leeches, venomous frogs, and parasitic worms. Useful for medicine... or blackmail.|
|**Blightbottle & Sons**|Black Market, Potion Vendor|Operates under tarpaulins near the storm grates. Sells “fleshboil neutralizers” and unsanctioned rotbane.|
|**Crookspine Salvage**|Merchant Stall, General Goods|Broken blades, sewer-scoured armor, warped tools, and mystery gear from dredged ruins.|
|**Guttershine Curios**|Antiques and Relics, Pawn Shop|Mildew-covered shelves of 'Pre-Rising' keys, half-idols, cracked crystal knobs, and whispering rings. Buyer beware.|

### **Guild Booths (Rotating or Semi-Permanent Stalls)**

These are likely tied to fringe factions or unaffiliated cartels using the market’s anonymity.

|**Booth Name**|**Shop Type(s)**|**Description**|
|---|---|---|
|**Fungusmonger’s Table**|Apothecary, Potion Vendor|Shady fungal remedies from deep tunnels. Rumors of psilocentric rites swirl.|
|**The Rat King’s Weigh**|General Goods, Pawn Shop|Run by a network of street urchins and gutterscum fencing scavenged items.|
|**Ghostwhistle Drafts**|Potion Vendor, Magic Goods|Purveyor of haunt-tonics, whisper-nectars, and so-called “Wailing Spirits in a Jar.”|
|**Scalebitten Sundries**|Herbalist, Apothecary|Bundles of foul-smelling herbs, preserved parasite eggs, and “blackroot mulch.”|
|**Mirelight Blisters**|Magic Goods, Antiques and Relics|Weird-glow baubles, partially bound spirits, and "lampstones" with fading sigils.|

## Special Items

| Item | Cost |
| ---- | ---- |
|      |      |
## Services

| Service | Description | Cost |
| ------- | ----------- | ---- |
|         |             |      |

## Current Events



## History



## Notes

