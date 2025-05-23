---
tags:
  - "#Location"
  - "#POI"
  - "#Canon"
art: 90 Assets/Images/POIs/ChancellorsHall.png
art1: 90 Assets/Images/POIs/ChancellorsOffice.png
banner: on
location:
  - "[[Wardspire District]]"
  - "[[Kanda]]"
poitype:
  - City Hall
owner:
  - "[[Cedric Thalor]]"
pronounced: CHAN-suh-lurz HAWL
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

> [!infobox|wsmall]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> `VIEW[!\[\[{art1}\]\]][text(renderMarkdown)]`
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
> You pass beneath a carved lintel engraved with a thousand names—each a former bearer of the Chancellor’s seal. **The Chancellor’s Hall** rises before you, an austere monument of black-veined stone and shimmering scriptglass. It is utterly quiet. No banners hang from its walls, no guards call out. The only movement is that of scribes, clerks, and ministers—each one part of a machine older than the current king.  
>  
> Inside, light filters through rune-gridded skylights onto tiered record pits and stone-ringed policy chambers. Seated at the heart of it all, on a dais half-hidden behind vellum veils, is the true power of Kanda. Not the king.  
> The chancellor.  
>  
> And every step you take within this place is already documented.

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



---

## Overview

**The Chancellor’s Hall** is the executive and bureaucratic heart of [[Kanda City]] and the seat of governance for all of [[Kanda Isle]]. Situated in the center of [[Wardspire District]], the hall is both a functioning legislative archive and the residence of [[High Chancellor Cedric Thalor]]. Unlike military bastions or noble courts, this structure pulses with quiet law—policy chambers, binding vaults, contract codices, and multi-tiered record halls spiral down into sublevels no longer open to the public.

Every law passed on the island exists in duplicated form here—scribed, etched, mirrored, and stored. To enter uninvited is not just trespass—it’s civil sabotage.

---

## Current Events

- A sealed chamber beneath the Hall, known as the **Deepdark Courtroom**, has been warded anew after glyph instability was detected near a long-abandoned trial vault.  
- Thalor is preparing a new review panel to formalize “Relic Registration Procedures” across urban centers—some see it as a power grab from the Rift Scholars.  
- Several coastal governors have petitioned for trade overrides to bypass Kanda tariffs; internal debate is escalating.  
- The Chancellor's ledger-scribes have redacted all records involving the shipment tied to Greyash, indicating involvement at the highest tier.

---

## History

- Founded in 128 PR atop the ruins of the Aurus Tribunal—a pre-Rising structure used for arcane adjudication.  
- Served as the central site for the **Quiet Declaration** of 193 PR, when King [[Roderic Vanthelion]] formally granted civil authority to Cedric Thalor.  
- During the Leviathan Breach Crisis, all high council decisions were rendered from its underground command pit—operating nonstop for nine days.  
- Houses the original etched version of the **Kanda Charter of Mandates**, preserved behind a prism-sealed scriptorium gate.

---

## Notes

- Every corridor is tracked by drift-scribed ledger runes. Tampering with them is a capital offense.  
- None of the visible scribes speak aloud while inside; vocalizations are considered disruptive unless in designated debate chambers.  
- The Chancellor’s private quarters are rumored to contain a sealed soulglass, keyed to the current bearer of the civil sigil—though this has never been confirmed.  
- Entry to the lower archive vaults requires a twin-token protocol—one issued by Thalor himself, and the other kept in the King’s possession. Neither has been used in over a decade.

