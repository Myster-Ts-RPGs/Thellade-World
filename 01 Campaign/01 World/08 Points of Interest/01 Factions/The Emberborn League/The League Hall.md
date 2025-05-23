---
tags:
  - "#Location"
  - "#POI"
  - "#Canon"
art: 90 Assets/Images/POIs/TheLeagueHall.png
banner: on
owner:
  - "[[Tharos Emberbane]]"
organization:
  - "[[The Emberborn League]]"
location:
  - "[[Amberveil Market]]"
  - "[[Kanda]]"
poitype:
  - Guildhall
  - Headquarters
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

# The League Hall
> [!abstract]
> Headquarters of the [[Emberborn League]], this fortified compound once served as a military warehouse before its conversion into a central hub for expeditions, training, and logistical coordination.

## Overview
The League Hall stands as the heart of the Emberborn League's operations in [[Kanda]]. Built from reinforced stone and accented with brass piping and geomantic inscriptions, the structure is a blend of military precision and arcane utility. The entry hall bears the League’s insignia—an ember rising from a split anvil—and the walls display maps, mission boards, and expedition artifacts. It includes a tactical war room, barracks, training grounds, and teleportation relay pads linked to known ruins and outposts. While primarily functional, its presence in [[Amberveil Market]] allows trade and resupply between missions.

## Function
This location serves as the command and deployment center for the Emberborn League. It issues assignments, offers tactical training, manages transportation logistics, and stores relics and findings between shipments.

## Security & Law
The facility is heavily warded and guarded by League enforcers and magical surveillance nodes. Unauthorized access is met with swift detainment. League Captain [[Tharos Emberbane]] oversees all security protocols personally.

## Services Offered
- Assignment board for licensed ruin explorers  
- Arcane messenger service to distant outposts  
- Equipment requisition for League operatives  
- Field research submission vaults

## Other Locations
- Tactical Planning Chamber  
- Emberbound Relay Room  
- Artifact Storage Vaults  
- League Operatives’ Quarters  
- Public Briefing Hall

## Notable NPCs
- [[Tharos Emberbane]] – League Captain
- [[Riva Talorin]] – Head Cartographer
- [[Bolric Keenhammer]] – Expeditionary Smith

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


## Current Events



## History



## Notes

