---
tags:
  - "#Location"
  - "#POI"
  - "#TODO"
art: 90 Assets/Images/Misc/PlaceholderImage.png
banner: on
location:
  - "[[Tallowgate]]"
  - "[[Kanda]]"
poitype:
  - Temple
organization:
  - "[[The Dawnbringer Creed]]"
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

# `=this.file.name` <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

## 🕊️ The Skyward Reliquary (Temple of Aurion – Kanda)

> *“Built not to dazzle, but to rise—each stone a prayer, each beam a fragment of dawn.”*

The **Skyward Reliquary** does not glitter. It *glows*. Perched at the highest edge of Tallowgate, its architecture spirals heavenward in layers of alabaster arches and translucent goldstone that catch the first rays of each morning. Every sunrise spills across its vast, open atrium like a blessing—unfiltered, uninterrupted, divine.

The reliquary’s spires are hollow and tuned. When wind passes through them, it produces a haunting chorus of low harmonic tones—a song believed to be the voice of Aurion himself. Pilgrims describe it not as sound, but as resonance in the soul.

Within, the central chamber is open to the sky. A circular oculus, rimmed with silver-leafed invocations, frames the celestial cycle. On days of dual moonrise or solar eclipse, the temple fills with refracted halos of sacred light—events treated as holy convocations.

At the reliquary’s heart stands **The Ember Prism**, a single suspended shard of Pre-Rising aetherglass, gifted by Aurion’s first Dawnwardens. It glows faintly—dimmed since the end of the Rising—but still pulses when touched by honest prayer.

The reliquary is also a **lighthouse for souls**—serving not only as temple but as hospice, place of confession, and final passage for those seeking redemption. A narrow stair spirals beneath the main chamber into **The Embercrypt**, where the names of fallen clerics are etched in radiant thread along the walls. It is whispered that one name was unthreaded long ago… never replaced.

---

### 📍 Overview (for GM Notes / Obsidian)

- **POIType:** Temple  
- **District:** [[Tallowgate]]  
- **Deity:** [[Aurion]]  
- **Key Features:**
  - Sky-facing atrium with open oculus
  - Wind-harmonic spires
  - Suspended Ember Prism (ancient aetherglass relic)
  - The Embercrypt (memorial catacombs and hidden vault)
  - Bell Harmonium that tolls only at dawn or death
- **Associated Mysteries:**
  - One name removed from the crypt (Solivar Maeron?)
  - Access to the original radiant scripts of the Dawnwardens
  - Possible ritual gateway to the Emberward Beacon (locked)



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

## Overview 



## Keyed Locations



## Current Events



## History



## Notes

