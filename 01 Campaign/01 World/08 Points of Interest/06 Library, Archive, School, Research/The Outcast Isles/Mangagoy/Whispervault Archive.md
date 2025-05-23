---
tags:
  - "#Location"
  - "#POI"
  - "#TODO"
art: 90 Assets/Images/POIs/WhispervaultArchive.jpg
banner: on
organization:
  - "[[The Midnight Covenant]]"
location:
  - "[[Binders' Lane]]"
  - "[[Mangagoy]]"
poitype:
  - Library
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

> [!recite]- Introduction
> The Whispervault Archive looms behind ivy-choked arches in [[Binders' Lane]], its gothic stonework scarred by forgotten glyphs and faint sigil-burns. A cobbled path leads to a vaulted threshold flanked by rune-etched columns. The upper façade is fractured but intact—three vertical windows are sealed with blackened glass panes inscribed in fading abjuration script.  
> 
> A whisper seems to linger at the edge of perception. Not a voice, but the *memory* of one. Torch brackets remain unlit. The mist never quite touches the building. When someone speaks near the door, it’s said their words echo a second longer than they should—unless the Archive chooses not to echo them at all.

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

The Whispervault Archive is a covert sigil-theory repository and arcane intelligence vault operated by the [[Midnight Covenant]] beneath [[Binders' Lane]] in [[Mangagoy]]. Originally built as a divine contract registry during the early reconstruction years, the facility was quietly seized by Covenant agents in the 160s PR and repurposed as a site of memory manipulation, oath-severance studies, and echo-resonant artifact storage.

Protected from scrying, teleportation, and divine communion, the Archive houses forbidden records, civic erasure rituals, and Pre-Rising codices deemed too dangerous for public preservation. Its lower levels include a sealed civic beacon vault repurposed for null-ritual anchoring—rumored to have been used during the Unnaming of Kaelor Thornhide.

While publicly listed as “inactive,” the site remains monitored by Covenant cipher agents and psychic sentries. Few who enter unsanctioned recall the visit—or remember why they came.


---

## Keyed Locations

- **Sealed Civic Beacon Vault (Sublevel -2):** Accessed via a defunct maintenance lift hidden behind a false wall in the northern scriptorium. Used by Maelthaz to anchor a portion of his Unnaming ritual; residual sigil fragments remain intact.
  
- **Index Chamber (Main Hall):** Stretches beneath the central nave. Mechanical filing systems, divine echo resonators, and Pre-Rising map spindles catalog forbidden glyphwork. Many shelves are locked with memory-bound keys requiring a spiritual or emotional trigger.

- **Annulment Archive (Sublevel -1):** Vaulted corridor containing erased oaths, severed binding contracts, and theological contradictions banned from public discourse. Whispered echoes from past rituals are faintly audible here during the Embermoon.

- **Observation Oculus:** A magical scry-point veiled beneath the central dome. Only visible at night when the moons align. Rumored to reveal what has been forgotten—but only in exchange for memory.

---

## Current Events

- After the Embermoon Surge, one of the beacon tiles beneath the archive discharged unexpectedly. All divine access signatures have since failed in this district.

- [[Cipher Varian Kel]] has restricted public access to the lower archive levels. When questioned, he claims a “containment ritual” is underway. The actual cause is the lingering presence of Maelthaz's sigil remnants.

- Archive scribe [[Vellun Mor]] writes of “phantom shelves” appearing—rows of books that only exist when unobserved. Multiple researchers now suffer “lexic memory compression,” forgetting the names of people they’ve known for years.

- Temple of Aurion agents have requested access but been denied.

---

## History

- Originally constructed in 61 PR as the **Sanctum Scriptura**, the building served as a minor celestial registry for divine contracts. Following the Rising, it was repurposed by the **Midnight Covenant** into a covert memory archive.

- In 174 PR, Cipher Varian Kel restructured the Archive under the pretense of academic preservation. Its true function became gathering forbidden sigil theory, unregistered relic schematics, and fragments of divine cognitive warfare.

- In 205 PR, a sect of the Black Sepulcher used the archive’s lower levels to destroy a rival order’s soul-chain through glyph-severance. The “scream” of that ritual is still said to echo on Embermoon nights.

---

## Notes

- The Whispervault Archive responds to proximity-based stimuli: arcane glyphs, divine focus items, and certain phrases spoken aloud may awaken hidden mechanisms.

- The building is shielded against traditional scrying, teleportation, and extradimensional perception. Anyone entering must do so physically—and risk what echoes inside.

- At least three passages in the Archive's Unnaming records reference **Maelthaz** by his pre-Rising glyph-code. If those fragments are assembled, they may reveal the true purpose of his ritual—and the path to reversing it.

- The exterior sigil (nine vertical lines and a broken circle) is associated with the **First Fracture Doctrine**—a long-lost covenant of divine echo archivists who believed memory could be sculpted into weaponry.

- The party’s presence may trigger a **reactive glyph flare** if they carry items marked by divine pacts or relics connected to Kaelor Thornhide.
