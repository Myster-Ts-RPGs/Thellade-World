---
tags:
  - "#Location"
  - "#Location/POI"
  - "#Status/Blank"
art: 90 Assets/Images/Placeholders/PlaceholderPointOfInterest.png
banner: on
poitype:
  - Temple
owner:
  - "[[Seralyne Vireth]]"
organization:
  - "[[The Dawnbringers of Lunara]]"
  - "[[The Moonwake Path]]"
location:
  - "[[Tallowgate]]"
  - "[[Kanda]]"
pronounced: RAY-dee-ent TEM-pul
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
>> **Deity** | `INPUT[Religion][inlineListSuggester:religion]` | 
>> **Owners** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):owner]` |
>> **Assistant** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):assistant]` |
>> **Religion(Organization)** | `INPUT[inlineListSuggester(optionQuery(#Organization/Religion AND !"z_Templates"), useLinks(partial)):organization]` |
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
> **Owners** | `VIEW[{owner}][link]` |
> **Assistant** | `VIEW[{assistant}][link]` |
> **Deity** | `VIEW[{Religion}][link]` |
> **Religion** | `VIEW[{organization}][link]` |
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
> The wind calms as you step into the temple’s outer ring—no ward, no rune, just the silence of reverence. **The Radiant Temple** is not built to impress—it is built to reflect. Pale crescent arches rise over quiet prayer paths, and moonlight filters through translucent stone etched with ancient glyphs of Lunara.  
>  
> Incense drifts like mist over shallow pools. An open oculus reveals both moons in their fullness when the time is right. Devotees chant in soft harmonics, not for spectacle, but for alignment.  
>  
> Somewhere deep beneath the central dome, prophecy waits. Not in words—but in echoes. And above it all, the High Oracle listens.

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


**The Radiant Temple** is the central sanctum of Lunaran worship in [[Kanda City]], located within the [[Tallowgate]] district. It serves both as the ceremonial and administrative hub of the [[Dawnbringers of Lunara]] and as a prophetic locus for the interpretation of the Moonwake Path. Though its beauty is understated, it is saturated with meaning: every corridor aligns with celestial angles, every pool reflects not just light, but intention.

Its current High Oracle, [[Seralyne Vireth]], rarely appears outside its innermost sanctum, and her silence is as potent as her visions. The temple is one of the few places in Kanda that does not fall under High Chancellor Thalor’s direct authority, though that balance grows tenuous.

---

## Current Events

- The inner sanctum has been placed under a silent ward—no spellcasting allowed inside unless sanctioned by the Oracle herself.  
- Ritual harmonics during the last dual-moon convergence were disrupted by unknown echo interference—possibly related to the relic aboard the *Emberwake*.  
- Several junior oracles report dreams of **a false moon shedding salt instead of light**—the same symbol described in Malira Fenj’s trance episodes.  
- The temple has refused to release location sigils to the Chancellor’s Hall despite increasing civic pressure for registry compliance.

---

## History

- Built atop a pre-Rising lunar observatory used by the Pale Order, The Radiant Temple was re-consecrated in 162 PR as part of Kanda’s spiritual reconstruction.  
- Served as a neutral ground for early post-isolation negotiations between Lunaran, Aurionic, and Emberborn scholars.  
- The Temple’s sub-vaults house fragments of glyphwork believed to predate the current Moonwake Path doctrine.  
- High Oracle Seralyne Vireth was instated after the collapse of the previous Oracle’s mind—an event known internally as *The Ninth Echo*.

---

## Notes

- The oculus in the upper dome is enchanted to remain clear even during storms—symbolizing the clarity of true vision  
- One chamber is sealed in absolute silence, used to test potential oracles’ attunement to prophecy  
- Though the temple has no formal guards, all acolytes are trained in harmonic disruption and binding wards  
- The Dawnbringers maintain a restricted library of “echo-touched texts” that may only be read on nights of eclipse




