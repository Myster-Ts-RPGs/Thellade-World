---
tags:
  - "#Character"
  - "#NPC"
  - "#Canon"
art: 90 Assets/Images/NPCs/TelvarQuentSmall.webp
language:
  - Common
party1relation:
  - Unmet
party2relation:
  - Unmet
party3relation:
  - Unmet
party4relation:
  - Unmet
party5relation:
  - Unmet
party6relation:
  - Unmet
pronounced: TEL-var KWENT
ancestry: Dwarf
gender: Male
age: Mature Adult
heritage: Dwarf - Death Warden
alignment: True Neutral
occupation:
  - Archivist
organization:
  - "[[The Wardens of the Deep Dark]]"
ownedlocation:
  - "[[Sunken Reliquary Wing]]"
location:
  - "[[Sunken Reliquary Wing]]"
  - "[[Stonebrace Docks]]"
  - "[[Kanda]]"
condition: Healthy
aliases:
  - Archivist Telvar Quint
  - The Ledger-Eye
ideals: |-
  Every artifact has memory; every record is a ward.

  Ignorance is the truest breach.

  The living are fleeting—ledgers endure.
flaws: |-
  Obsesses over redundant documentation to the point of inefficiency.

  Dismissive of emotion in crisis; treats every event as data.

  Refuses to trust secondary sources—only firsthand observation matters.
fears: |-
  Misfiling a relic that later causes breach or death.

  Becoming mentally fragmented from residual echo exposure.

  A second “unreadable” glyph surfacing—he's only seen one in his lifetime.
mannerisms: |-
  Traces containment runes mid-conversation when anxious.

  Blinks infrequently—often mistaken for staring.

  Uses fragments of Old Dwarven in casual speech, even among non-speakers.
---

> [!metadata|metadata]- Metadata 
>> [!metadata|metadataoption]- System
>> #### System
>>  |
>> ---|---|
>> **Tags** | `INPUT[Tags][inlineListSuggester:tags]` |
>
>> [!metadata|metadataoption]- Art
>> #### Art
>>  |
>> ---|---|
>> **Art** | `INPUT[imageSuggester(optionQuery("")):art]` |
>
>> [!metadata|metadataoption]- Bio
>> #### Bio
>>  |
>> ---|---|
>> **Pronounced** |  `INPUT[textArea:pronounced]` |
>> **Aliases** | `INPUT[list:aliases]` |
>> **Ancestry** | `INPUT[Ancestry][suggester:ancestry]` |
>> **Heritage** | `INPUT[Heritage][suggester:heritage]` |
>> **Creature Type** | `INPUT[textArea:ancestry]` |
>> **Creature Sub-Type** | `INPUT[textArea:heritage]` |
>> **Gender** | `INPUT[Gender][:gender]` |
>> **Age** | `INPUT[Age][:age]` |
>> **Alignment** | `INPUT[Alignment][:alignment]` |
>
>> [!metadata|metadataoption]- NPC Info
>> #### NPC Info
>>  |
>>---|---|
>> **Ideals** | `INPUT[textArea:ideals]` |
>> **Flaws** | `INPUT[textArea:flaws]` |
>> **Fears** |  `INPUT[textArea:fears]` |
>> **Mannerisms** |  `INPUT[textArea:mannerisms]` |
>
>> [!metadata|metadataoption]- Party Info
>> #### Party Info
>>  |
>> ---|---|
>> **Party 1 Relation**|`INPUT[PartyRelation][inlineListSuggester:party1relation]`|
>> **Party 1 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group1), useLinks(partial)):party1tie]` |
>> **Party 2 Relation**|`INPUT[PartyRelation][inlineListSuggester:party2relation]`|
>> **Party 2 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group2), useLinks(partial)):party2tie]` |
>> **Party 3 Relation**|`INPUT[PartyRelation][inlineListSuggester:party3relation]`|
>> **Party 3 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group3), useLinks(partial)):party3tie]` |
>> **Party 4 Relation**|`INPUT[PartyRelation][inlineListSuggester:party4relation]`|
>> **Party 4 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group4), useLinks(partial)):party4tie]` |
>> **Party 5 Relation**|`INPUT[PartyRelation][inlineListSuggester:party5relation]`|
>> **Party 5 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group5), useLinks(partial)):party5tie]` |
>> **Party 6 Relation**|`INPUT[PartyRelation][inlineListSuggester:party6relation]`|
>> **Party 6 Tie**|`INPUT[inlineListSuggester(optionQuery(#Player AND #Group6), useLinks(partial)):party6tie]` |
>> **Traveling With** | `INPUT[inlineListSuggester(optionQuery(#Party AND !"z_Templates"), useLinks(partial)):whichparty]` |

> [!infobox]+
> # `=this.file.name`
> `VIEW[!\[\[{art}\]\]][text(renderMarkdown)]`
> ![[PlaceholderAudio.webm]]
> ###### Bio
>  |
> ---|---|
> **Pronounced** |  `INPUT[textArea:pronounced]` |
> **Aliases** | `INPUT[list:aliases]` |
> **Ancestry** | `INPUT[Ancestry][suggester:ancestry]` |
> **Heritage** | `INPUT[Heritage][suggester:heritage]` |
> **Gender** | `INPUT[Gender][:gender]` |
> **Age** | `INPUT[Age][:age]` |
> **Alignment** | `INPUT[Alignment][:alignment]` |
> ###### Info
>  |
> ---|---|
> **Languages** | `INPUT[Language][inlineListSuggester:language]` |
> **Occupations** | `INPUT[Occupation][inlineListSuggester:occupation]` |
> **Organizations** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):organization]` |
> **Religions** | `INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):religion]` |
> **Owned Locations** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):ownedlocation]` |
> **Current Location** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates"), useLinks(partial)):location]` |
> **Condition** | `INPUT[Condition][:condition]` |


# **`=this.file.name`** <span style="font-size: medium">"`VIEW[{pronounced}]`"</span>

> [!metadata|letters]- Letters
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, quicknote AS Notes
> FROM "01 Campaign"
> WHERE econtains(holder, this.file.link) AND contains(tags, "Letter")
> SORT file.name ASC

> [!metadata|literature]- Literature
> ```dataview
> TABLE without id file.link AS "Name", join(aliases, ", ") AS Aliases, quicknote AS Notes
> FROM "01 Campaign"
> WHERE econtains(holder, this.file.link) AND contains(tags, "Literature")
> SORT file.name ASC

## Overview
Telvar Quent is the senior archivist assigned to the [[Sunken Reliquary Wing]] beneath [[Stonebrace Docks]]. He is responsible for cataloging, indexing, and securing relics dredged from Deep Dark passageways. He speaks in dry, measured tones and rarely acknowledges visitors unless they're cleared beyond Seal Level Two. His quarters are reportedly beneath the reliquary vault itself, near a submerged ritual seal chamber.


> [!column|2 no-title]
>
> 
>> [!metadata|ideals] Ideals
> `VIEW[{ideals}][text]`
>
>> [!metadata|flaws] Flaws
> `VIEW[{flaws}][text]`
> 
>> [!metadata|fear] Fears
> `VIEW[{fears}][text]`
>
>> [!metadata|mannerism] Mannerisms
> `VIEW[{mannerisms}][text]`

## Goals
- Decode the origin markers of relics recovered from Vault Sector Theta.
- Establish a long-term dry archive under Kanda proper.
- Prove that glyph residue patterns follow predictive cycles tied to tides.


## Acquaintances
[[Bria Sarn]] – Mutual professional respect. They share relic tracking data between the Hunter’s Spur and the Wing. Both value silence and precision.


## Current Events
- Monitoring heat emissions from the "lumen spine" recovered near Vault Segment 4.
- Preparing a formal record for the denied Rift Scholar petition.
- Submitting revisions to Warden Containment Index Protocol V.13.8.


## History
- Originally trained as a deep archivist in [[Styrmholm]], Telvar was relocated after the containment collapse in the Lower Crypts.
- Served as a junior scribe during the Deepmere Black Archive Dispersal.
- Was the first to document the now-lost glyph schema classified as _“Lament Spiral.”_


## Notes
- Maintains a personal backup codex encoded with voice-locked glyphs—one of only six such tomes in Warden possession.
- Never refers to relics by number in private, only by nickname.
- Refuses to cross any vault threshold without his echo-suppressing slate goggles.

### Dialogue: Archivist Telvar Quent — Summoned by Captain Bria Sarn to Examine the Crate

#### Arrival (Brisk, Analytical)

> “Captain Sarn’s call was flagged urgent. Void residue, ritual script-layering... and a dream bleed? That’s not a common trifecta.”

> “Let me see the crate. No, don’t open it. I need proximity, not access. There’s a difference.”

> “Mmh. The stone's harmonics are *distorted*, but not unfamiliar. This signature—I've seen echoes like this etched into dead breathers pulled from the Deep Dark.”

---

### Addressing the Party (Measuring, Curious)

> “You're the ones who brought this here. That makes you either fools, survivors... or heralds. Maybe all three.”

> “If you’re hearing *voices*, they aren’t ghosts. Not in the traditional sense. The Verse—if that’s what this is—doesn’t haunt. It *reverberates*.”

> “Someone dreamed wrong near this thing? Good. That means it hasn't settled into dormancy yet.”

---

### Directing to Spike (Focused, Controlled)

> “You. The scarred one. Something reached you in sleep—yes? Describe what you heard. Don’t embellish.”

> “A lullaby... in a language you don’t know. Sung in a child’s voice, after you broke a cyst. That’s residual Verse-three trauma.”

> “It tried to *embed* its signature in your perception. What you’re hearing isn’t memory—it’s *resonant imprinting*.”

> “Each dream? That’s a syllable. A syllable of a song that was never meant to be completed.”

---

### If Spike Asks for Removal

> “Remove it? No. You don’t extract verse-rubbed imprints. You learn to carry them differently.”

> “You’re not cursed. You’re *attuned*. Unwilling, yes, but alive—and that’s already rare.”

> “There are monks who would kill to dream like you just did.”

---

### Insightful Commentary (Optional Delivery)

> “This thing came from a place that doesn’t use time the way we do. Its echoes run *sideways*, not forward.”

> “I’ll catalog the signature and cross-reference it with the Vault of Breaths. If it lines up with any known hymn structures, you’ll know.”

> “For now? Sleep cautiously. If the voice sings again... don’t sing back.”

---

### Parting Message

> “You brought a Verse fragment to the surface. That means it’s hunting again.”

> “Don’t keep it close. Don’t let it know your name.”

> “And whatever you do... don’t finish the lullaby.”



