---
tags:
  - "#Location"
  - "#POI"
  - "#TODO"
art: 90 Assets/Images/Misc/PlaceholderImage.png
banner: on
poitype:
  - Shop
shoptype:
  - Tailor
  - Jeweler
  - Magic Goods
  - Potion Vendor
  - Florist
  - General Goods
  - Clothier
  - Weaver
  - Spice Vendor
  - Merchant Stall
  - Candlemaker
  - Apothecary
  - Herbalist
location:
  - "[[Gilded Strand]]"
  - "[[Boba]]"
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

The **Boba Marketplace** serves as the central commercial hub of the **Gilded Strand**, a lively district known for its refined taste and wealth-drenched clientele. Arched canvas canopies ripple in the sea breeze as merchants hawk wares both practical and exotic. The square is ringed with polished stalls and semi-permanent pavilions offering upscale commodities and artisan goods. Perfumed air, accented by incense and the scent of warm pastries, winds through finely tiled walkways.

Unlike the more chaotic **Glimmerglass Bazaar**, the **Boba Marketplace** is regulated and curated, with an emphasis on luxury and high-demand utility trade. Many merchants here operate under noble charters or merchant guild permissions. Magical item vendors are rare but present, and several clothiers and jewelers boast ties to the noble houses of Boba.

### 🧱 Brick-and-Mortar Shops (5)

- **Arcane Curios & Elixirs**,  A dual-purpose boutique offering rare magical trinkets and potent alchemical draughts. Run by a retired Arcanum scholar with a sharp tongue and sharper pricing.
- **The Glinting Trinket**,  A lavish storefront for jewelers, antique collectors, and nobility-driven commissions. Its glass cases are enchanted against theft.
- **Spice & Bloom Pavilion**, A warm-scented shop specializing in exotic spices, perfumed oils, and dried alchemical herbs. Managed by a Caliphran expatriate family.
- **Thread & Tassel Atelier**,  Purveyor of tailored garments, ceremonial robes, and noble house liveries. Known for its dyed silks and seasonal embroidery trends.
- **The Common Coffer**,  A general goods shop that stocks everything from parchment and rope to basic rations and iron nails. Frequented by locals and caravan runners alike.

### 🏛️ Licensed Guild Booths (3)

- **The Mercantile Charter Hub**,  A rotating guild-backed kiosk for contract brokers, licensed porters, and tax-stamped shippers. Overseen by a Guildscribe of Boba’s Merchant Assembly.
- **The Appraisers’ Niche**,      Staffed by members of the Valuators’ Guild, this discreet booth offers artifact evaluation, gem certification, and scroll-authentication.
- **The Signet Registry**, Handles registration of merchant seals and formal documentation for trade deals. Operates under House Ulverin’s commercial edict.

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

