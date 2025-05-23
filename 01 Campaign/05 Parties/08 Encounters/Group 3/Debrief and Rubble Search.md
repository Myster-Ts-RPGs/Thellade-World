---
tags:
  - "#TODO"
  - "#Encounter"
  - "#Group3"
whichparty: "[[Campaign Group 3]]"
sessionnumber: "10"
title: Debrief and Rubble Search
encountertype:
  - Investigation
locations:
  - "[[01 Campaign/01 World/07 Districts/Mangagoy/Ashgate Market.md|Ashgate Market]]"
  - "[[01 Campaign/01 World/08 Points of Interest/09 Landmarks/Mangagoy Isles/Charblack Alley.md|Charblack Alley]]"
  - "[[01 Campaign/01 World/08 Points of Interest/02 Shop/Mangagoy Isles/Mangagoy/Evercrate Exports.md|Evercrate Exports]]"
  - "[[01 Campaign/01 World/08 Points of Interest/09 Landmarks/Mangagoy Isles/Sootveil Alley.md|Sootveil Alley]]"
  - "[[01 Campaign/01 World/08 Points of Interest/06 Library, Archive, School, Research/The Outcast Isles/Mangagoy/Whispervault Archive.md|Whispervault Archive]]"
allies:
  - "[[Kellen Brasque]]"
  - "[[Zareth Korrath]]"
factions:
  - "[[The Ashen Vanguard]]"
  - "[[The Twin Radiance]]"
  - "[[The Black Sepulcher]]"
enemies:
  - "[[Marik Kelthorne]]"
---
> [!infobox]+
> # `=this.group + " - Session " + this.sessionnumber + " - Summary"`
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

## Encounter-Specific Info

> [!info]- **Investigation/Mystery Encounter Details**
> - Scene Description: Just off [[Charblack Alley]], near the loading alcove behind [[Evercrate Exports]], the alley is scorched with ritual glyph-burn and faint ley-static. Crates are splintered, and one wall bears a half-melted sigil etched into its stone facing. The body of the Glyphbearer Agent lies covered by an Ashen Vanguard tarp, while faint magic still clings to the runoff channels in the stone.
> 
> - Clues Available:
>   - **Leyline Signature Residue**: Near a split drainpipe behind Evercrate, Arcana (DC 22) reveals an arc discharge linked to a minor ley-anchor corruption. The pattern indicates a prior beacon tap attempt. Tracing its flow leads northwest toward the edge of the Glowquarter.
>   - **Fragmented Sigil Slab**: Perception (DC 19) behind a toppled crate reveals a broken ceramic rune-plaque. Occultism (DC 21) identifies it as a *lattice anchor*, one part of a multi-node ritual network. Matching glyph geometry is rumored to appear in suppressed Whispervault texts.
>   - **Recovery Drag Pattern**: Survival (DC 20) identifies subtle drag and bootmark patterns leading east toward [[Sootveil Alley]]—a likely recovery or escape route used by surviving accomplices to reclaim materials.
>   - **Burned Ledger Page**: In a trash bin near Evercrate’s back gate, Society (DC 18) or Thievery (DC 17) finds a half-burned inventory page detailing "unauthorized salvage: marked sigil rod, 1 unit — buyer unlisted". Handwriting is confirmed to be that of [[Kellen Brasque]]’s assistant.
> 
> - Skill Checks for Discoveries:
>   - **Arcana (DC 22)**: Trace the arc-discharge through three glyph veins; reveals attempted siphon from an underground civic node.
>   - **Occultism (DC 21)**: Confirms the ritual array was adapted from the Unnaming Lattice—indicating influence from Maelthaz's school.
>   - **Survival (DC 20)**: Track signs of a second figure recovering a ritual lens after the Glyphbearer’s death.
>   - **Society (DC 18)**: Correlates Evercrate’s unlisted salvage with a larger export scheme, suggesting civic cover.
> 
> - False Leads or Red Herrings:
>   - A cracked crate labeled “blessed imports” contains moldy candles and inert incense packets. Religion (DC 15) reveals they’ve been stripped of divine potency—likely discarded from a failed Temple shipment but unrelated to the ambush.
> 
> - Final Objective (Find Killer, Recover Item, Solve Puzzle):
>   - **Confirm the Glyphbearer was supported by an unknown accomplice** who extracted key items postmortem.
>   - **Identify a ritual fragment tied to the Unnaming School**, establishing Maelthaz’s glyphwork as a background influence.
>   - **Reveal that Evercrate’s salvage operation was laundering sigil-bearing artifacts**, and [[Kellen Brasque]]’s staff may have unwittingly handled them.
>   - **Uncover a ritual thread leading toward Sootveil Alley**, with one glyph echo responding faintly to [[Kothar]] or the medallion carried by [[Hans Dane]].

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
