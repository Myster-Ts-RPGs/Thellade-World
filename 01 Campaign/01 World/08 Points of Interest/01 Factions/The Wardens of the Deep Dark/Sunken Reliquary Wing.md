---
tags:
  - "#Location"
  - "#Location/POI"
  - "#Status/Blank"
art: 90 Assets/Images/Placeholders/PlaceholderPointOfInterest.png
banner: on
organization:
  - "[[The Wardens of the Deep Dark]]"
location:
  - "[[Stonebrace Docks]]"
  - "[[Kanda]]"
poitype:
  - Relics Site
owner:
  - "[[01 Campaign/03 Entities/04 NPCs/The Outcast Isles/Kanda/Kanda City/Telvar Quent]]"
pronounced: SUHN-ken REL-ih-kwair-ee wing
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
  - "[[Stonebrace Docks]]"
parentsettlement:
  - "[[Kanda]]"
parentsubregion:
  - "[[Kanda Isles]]"
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
>  A low chime echoes through the mist as your boots strike stone—deeper here, colder. The **Sunken Reliquary Wing** looms half-buried against the outer wall of [[Stonebrace Docks]], its doors braced in barnacled brass and black iron. Salt streaks its sigil-plated masonry, but beneath the decay is precise construction: glyph-bound, etched in Deep Dark tongue, locked tight against what it holds inside.   
>    
> Lanternlight here is minimal—most of the light comes from glowpanes beneath grates or mirrored tiles set into the stone. The air smells not just of sea, but of old blood, rusted metal, and long-wet parchment.   
>    
> A voice calls from below, monotone and methodical: "Seal Seven active. Clearance required."   
>    
> This place was never meant for living things—it was built to hold what should have stayed lost.  ---`

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

The **Sunken Reliquary Wing** is a containment and deep vault structure overseen by [[The Wardens of the Deep Dark]], embedded directly into the lower terraces of [[Stonebrace Docks]]. It functions as a secure processing and quarantine station for recovered artifacts dredged from collapsed or flooded Deep Dark ruins. Submerged sigil vaults, planar insulation chambers, and bone-sealed reliquary bays make this one of the most structurally reinforced facilities in Kanda.

The structure interfaces directly with subsea tunnels connected to known Deep Dark fractures and includes multiple sealed ingress points to prevent incursion events. Access is restricted to Warden-sanctioned personnel only.

---

## Current Events

- A partially collapsed aqueduct from Vault Segment 3 was recently resealed after a class-three glyph resonance leak. Monitoring continues.
- Artifact #DDR-2127 (“singing lumen spine”) is exhibiting spontaneous heat generation and luminescence. High-seal observation has been extended.
- A faction liaison from the [[Rift Scholars Collective]] has filed a second request for study access and has been denied again due to contamination protocol violations.

---

## History

- Commissioned in 179 PR following the emergence of spiral-etched relics discovered off the submerged pier vaults south of Kanda.
- Originally used as a short-term holding area, the Wing was expanded in 191 PR after the "Second Mouth" incident in Vault Segment 2.
- Since then, the facility has become a primary hub for relic stabilization across the Outcast Isles, especially in cases where full planar isolation is not feasible.
- Rumors persist that a sealed door beneath Sector Delta bears the original glyph-shard from the failed binding site at Deepmere—though this has never been confirmed.

---

## Notes

- All recovered artifacts are individually cataloged by vocal codex and stored in lead-etched containment alcoves; only two scribes in Kanda are permitted to handle these ledgers.
- Every fourth day, the reliquary lowers its internal water levels via thaumaturgic displacement for visual inspection cycles.
- One corridor (Sector Theta) remains off-limits following a failed expedition by the Blackwake Corsairs; no retrieval effort was sanctioned.

---



