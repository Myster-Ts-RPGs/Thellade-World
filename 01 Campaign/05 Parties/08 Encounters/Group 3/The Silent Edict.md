---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group3"
whichparty: "[[Campaign Group 3]]"
encountertype:
  - Combat
locations:
  - "[[01 Campaign/01 World/06 Settlements/The Outcast Isles/Mangagoy Isles/Mangagoy.md|Mangagoy]]"
sessionnumber: "09"
title: |
  The Silent Edict
---
> [!infobox]+
> # Encounter Basics
>  |
> ---|---|
> **Session Number** | `INPUT[text:sessionnumber]`|
> **Title**|`INPUT[textArea:title]`|
> **Encounter Type(s)**|`INPUT[EncounterType][inlineListSuggester:encountertype]` |
> **Allies Planned** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):allies]` |
> **Enemies Planned** | `INPUT[inlineListSuggester(optionQuery(#Character AND !"z_Templates"), useLinks(partial)):enemies]` |
> **Factions Planned**|`INPUT[inlineListSuggester(optionQuery(#Organization AND !"z_Templates"), useLinks(partial)):factions]` |
> **Locations Planned** | `INPUT[inlineListSuggester(optionQuery(#Location AND !"z_Templates")):locations]` |

# Encounter  Overview
[[01 Campaign/05 Parties/02 Party Dashboards/Campaign Group 3|Campaign Group 3]] - Session 09 - [[01 Campaign/05 Parties/08 Encounters/Group 3/The Silent Edict|The Silent Edict]]

## Encounter-Specific Info
> [!info]- **Combat Encounter Details**
> - Primary Enemies: Bleeding Tide Enforcers, Glyphbearer Agent, Memory Raptor
> - Enemy Factions: [[The Bleeding Tide]], agents loyal to [[Lord Marik Kelthorne]]
> - XP Budget: Moderate-High (adjusted for ambush with elite agent and occult creature)
> - Battlefield Description: Narrow alley between [[Tallowgate]] and [[Gullsway]], post-riot rubble and lantern debris, intermittent leyline flare
> - Boss Mechanics: Glyphbearer uses runes to silence areas and mark Tian for capture; Memory Raptor targets mental saves and drains resolve
> - Environmental Hazards: Smoldering carts (flammable), flickering glyph traps (Arcana DC 20 to suppress), slick cobbles (Acrobatics DC 16)
> - Objectives: Prevent Tian’s capture, disable agents, retrieve sigils as proof of Kelthorne’s plot
> - Special Rewards: Sigil tablets contain hidden messages linking Kelthorne to leyline destabilization efforts and assassination orders

**Trigger:** Occurs just after the party leaves City Hall during post-riot cleanup

### 📍 Setting
- Narrow side street between [[Tallowgate]] and [[Gullsway]]
- Lanterns are flickering with residual leyline shimmer
- Broken barricades and smoldering carts offer partial cover

### 🎯 Premise
[[Lord Marik Kelthorne]] has declared Tian Quilana a liability after intercepting communication between him and [[Lord Ambervale]]. He dispatches a **silenced kill team** to “resolve the threat quietly.” The team uses **magically muted weapons**, **memory-dulling poisons**, and a **binding glyph** meant to erase evidence of the ambush.
### 🧟 Combatants
- **2x Bleeding Tide Enforcers** (Rogue/Assassin-style, use PF2e Thugs with magical poison daggers)
- **1x Glyphbearer Agent** (Hybrid occultist/caster, applies glyphs that silence and daze)
- **1x Memory Raptor** (Summoned aberration; feeds on memory and loyalty—represents Kelthorne’s occult network)

### 🧠 Tactics
- Attempt to **cut Tian off** from the party
- Prioritize **non-lethal binding of Tian** to extract him
- Use glyphs to **seal exits**, forcing the party into a close-quarters ambush

### 🧪 Terrain Features
- Smoldering carts: Provide cover but may ignite if fire magic is used
- Warding Glyph remnants: React to magic with volatility (Arcana DC 20 to suppress)
- Slick cobblestone: Acrobatics DC 16 to avoid slipping while repositioning

### 📜 Victory Outcomes
- Captured glyphs provide **evidence of Kelthorne’s plot**
- Survivor may **whisper secrets involuntarily** under duress (latent psychic trigger)


## Quick References

> [!column|2 no-title]
>> [!metadata|characters] Allies
>> `VIEW[{allies}][link]`
>
>> [!metadata|characters] Enemies
>> `VIEW[{enemies}][link]`
>
>> [!metadata|organizations] Factions
>> `VIEW[{factions}][link]`
>
>> [!metadata|location] Locations
>> `VIEW[{locations}][link]`
