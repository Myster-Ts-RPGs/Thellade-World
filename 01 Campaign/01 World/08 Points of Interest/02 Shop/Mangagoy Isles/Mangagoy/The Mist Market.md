---
tags:
  - "#Location"
  - "#POI"
  - "#Canon"
art: 90 Assets/Images/POIs/MistMarket.png
poitype: Shop
shoptype:
  - Antiques and Relics
  - Apothecary
  - Black Market
  - General Goods
  - Herbalist
  - Magic Goods
  - Merchant Stall
  - Pawn Shop
  - Pet Shop
  - Potion Vendor
  - Spice Vendor
location:
  - "[[The Mist Market]]"
  - "[[Ashgate Market]]"
  - "[[Mangagoy]]"
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
>> **Location** | `INPUT[inlineListSuggester(optionQuery(#District AND !"z_Templates"), optionQuery(#Settlement AND !"z_Templates"), optionQuery(#Subregion AND !"z_Templates"), optionQuery(#Reach AND !"z_Templates"), useLinks(partial)):location]` |
> **Party 1 Reputation** | `INPUT[text:party1reputation]` |
> **Party 2 Reputation** | `INPUT[text:party2reputation]` |
> **Party 3 Reputation** | `INPUT[text:party3reputation]` |
> **Party 4 Reputation** | `INPUT[text:party4reputation]` |
> **Party 5 Reputation** | `INPUT[text:party5reputation]` |
> **Party 6 Reputation** | `INPUT[text:party6reputation]` |

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
> **Location** | `VIEW[{location}][link]` |
> ###### Party
>  |
> ---|---|
> **Party 1 Reputation** | `VIEW[{party1reputation}][text]`|
> **Party 2 Reputation** | `VIEW[{party2reputation}][text]`|
> **Party 3 Reputation** | `VIEW[{party3reputation}][text]`|
> **Party 4 Reputation** | `VIEW[{party4reputation}][text]`|
> **Party 5 Reputation** | `VIEW[{party5reputation}][text]`|
> **Party 6 Reputation** | `VIEW[{party6reputation}][text]` |

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

> [!metadata|characters]- Characters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, join(occupation, ", ") AS "Occupations", join(link(organization), ", ") AS "Organizations"
> FROM "01 Campaign"
> WHERE econtains(location, this.file.link) AND contains(tags, "Character") AND !contains(condition, "Dead")
> SORT tags DESC, file.name ASC

## Overview
Mangagoy’s infamous floating black market, shrouded in coastal mist and ever-shifting fog curtains, the Mist Market hosts dozens of semi-legal and illicit merchant stalls moored to rotted piers and waterlogged barges. Guards patrol from afar, avoiding direct intervention unless drawn by overwhelming violence. Rumors swirl of cursed objects, mind-altering elixirs, and veiled eyes that track visitors from beneath cracked lanterns.

**Notable Market Stalls and Booths:**

- **Sump & Sludge** – *Potion Vendor, Apothecary*: Pungent tinctures, bloodletting kits, and suspicious salves lined in greasy glass bottles. Claims to have “rat-bitten cure-alls.”
- **The Leech Basket** – *Pet Shop, Apothecary*: Barrels of leeches, venomous frogs, and parasitic worms. Useful for medicine… or blackmail.
- **Blightbottle & Sons** – *Black Market, Potion Vendor*: Operates under tarpaulins near the storm grates. Sells “fleshboil neutralizers” and unsanctioned rotbane.
- **Crookspine Salvage** – *Merchant Stall, General Goods*: Broken blades, sewer-scoured armor, warped tools, and mystery gear from dredged ruins.
- **Guttershine Curios** – *Antiques and Relics, Pawn Shop*: Mildew-covered shelves of 'Pre-Rising' keys, half-idols, cracked crystal knobs, and whispering rings. Buyer beware.
- **Fungusmonger’s Table** – *Apothecary, Potion Vendor*: Shady fungal remedies from deep tunnels. Rumors of psilocentric rites swirl.
- **The Rat King’s Weigh** – *General Goods, Pawn Shop*: Run by a network of street urchins and gutterscum fencing scavenged items.
- **Ghostwhistle Drafts** – *Potion Vendor, Magic Goods*: Purveyor of haunt-tonics, whisper-nectars, and so-called “Wailing Spirits in a Jar.”
- **Scalebitten Sundries** – *Herbalist, Apothecary*: Bundles of foul-smelling herbs, preserved parasite eggs, and “blackroot mulch.”
- **Mirelight Blisters** – *Magic Goods, Antiques and Relics*: Weird-glow baubles, partially bound spirits, and “lampstones” with fading sigils.

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

